import sys, signal, re, os
import mods
import time
from classmakekey import MakeKey
from datetime import date
from subprocess import call

def MakeCoordFunction(spacecraft, PI,out_file, scantime, donwload_kernels,
                      mid_scan, do_vex, start_date, end_date, initial_gap, gap_start,stations):

    # slices a date string of form dd/mm/yyyy hh:mm:ss
    def date_str(s):
        return s[0:2], s[3:5], s[6:10], s[11:13], s[14:16], s[17:19]

    #############################
    # PATH definition and checks.
    #
    kernel_path, meta_path, keyfile_path =  mods.paths()
    #kernel_path = SPICE KERNELS DIRECTORY
    #meta_path = SPICE METAFILES DIRECTORY
    #keyfile_path = MAIN DIRECTORY FOR SCHED TEMPLATES
    #
    def path_check(paths):
        check_note = 'Please define the env variable $MAKEKEY.'
        if not os.path.isdir(paths):
            print('\n\tPath {} not found.\n\t{}\n'.format(paths, check_note))
            sys.exit(0)

    for paths in kernel_path, meta_path, keyfile_path: path_check(paths)

    pis={'pi1':{'piname':'Name',
               'phone':'Phone',
               'email':'Email'},
     'pi2':{'piname':'Name2',
               'phone':'Phone2',
               'email':'Email2'}}
    
    # command line options and initialization
    #

    gaps='y'

    def steps(step):
        if step[-1]=='s':
            timestep=float(step[:-1])
            duration = 'dur=00:'+str(int(timestep))
        elif step[-1]=='m':
            timestep=float(step[:-1])*60.
            duration = 'dur='+str(int(timestep/60.)-1)+':00 gap=1:00'
        else:
    #       This catches a wrong input (only m or s are valid!)
            str(int(step))+1
        return timestep, duration

    timestep=''
    duration=''
    sat=''
    timestep, duration = steps(scantime)

    if spacecraft == 'VEX':
        sat = 'Vex'
        gaps='n'

    if spacecraft == 'MEX':
        sat = 'Mex'
        gaps='n'

    coordname=''
    outfile = out_file

    same_day='y'

    kernels='n'
    if donwload_kernels == 'Y':
        kernels='y'
        mods.getKernels(kernel_path,sat)

    early_start='n'

    correlation='n'

    # Coordinates are calculated for the 
    # middle of the scan
    if mid_scan == 'Y': 
        scan_center='y'
    else:
        scan_center='n'

    #Should I create a setup?
    setup='n'

    pi=str(PI).lower()

    # list of names for the satellites
    #
    list_vex = ['v', 'vex']
    list_mex = ['m', 'mex']

    #
    # end initialization!
    #####################

    ###################
    #                 #
    # Here we start...#
    #                 #
    ###################

    print('')
    print( '\n   This program creates the key file for Sched.\n')
    print( '')

    full_date = start_date
    full_date2 = end_date
        
    day, month, year, h1,m1,s1 = date_str(str(start_date))
    day2,month2,year2,h2,m2,s2 = date_str(str(end_date))
    start = h1+':'+m1+':'+s1
    ends = h2+':'+m2+':'+s2    

    date = month+day

    filename = keyfile_path+'keyfiles/default.key'

    if sat.lower() in (list_vex):
        target='VEX'
        if setup == 'n': setup_file =  keyfile_path+'Setups/vex.x'
        gaps='n'
    elif sat.lower() in (list_mex):
        target='MEX'
        if setup == 'n': setup_file =  keyfile_path+'Setups/mex.x'
        gaps='n'

    outname=out_file

    if scan_center == 'y':
        m1=str(int(float(m1)+timestep/60./2.))
        m2=str(int(float(m2)+timestep/60./2.))

    utctime_ini=year+'-'+month+'-'+day+'T'+h1+':'+m1+':'+s1#+'.002'
    utctime_end=year2+'-'+month2+'-'+day2+'T'+h2+':'+m2+':'+s2#+'.002'

    if timestep=='':
        while True:
            step = raw_input('\nInsert time step (i.e. 20m or 15s)--> ')
            try:
                timestep, duration = steps(step)
                break
            except TypeError:
                print('Invalid time unit! Please use m for minutes and s for seconds.')

    # start for the participant stations
    #

    output = open(outname, 'a')

    # ask for the file with the coordinates
    #
    if coordname!='':
        filecoords=coordname
    else:
        filecoords=target.lower()+'_'+utctime_ini
        filecoords=mods.pointing(meta_path,target,stations,
                                 utctime_ini,utctime_end,timestep,filecoords)

    # run the sat module to create
    # the scan list with or without gaps
    #
    open(filecoords)
    if sat.lower() in (list_vex+list_mex):
        source_file = mods.sched_ra(filecoords,duration)


    Schedule_File = MakeKey(pis.get(pi),year,month,day,sat,early_start,start,source_file,setup,setup_file,stations,keyfile_path)
    for line in open(filename):
        lines = line
        for r in Schedule_File.list_checks:
            Schedule_File.re_lines(r)
            if Schedule_File.re.match(line):
                lines = Schedule_File.match_text(r,line)
        
    #   write the strings into the new key file
    #
        output.write(lines)

    # read the file with the scan list created by the module
    # and append the scan list at the bottom of the key file.
    #
    # append a dummy list in case of a file for correlation.
    #
    if correlation=='n':
        if gaps == 'y':
            for listscan in open('list.scans'):
                output.write(listscan)
        elif gaps == 'n':
            for listscan in open('list.sources'):
                output.write(listscan)
    else:
         for listscan in open('list.corr'):
             output.write(listscan)

    print('\nPlease check the output file:', outname, '\n')
    output.close()

    if do_vex == 'Y':
        call("/home/cimo/Programs/sched/bin/LINUX64/sched < %s" % outname, shell=True)
