#!/home/cimo/Programs/anaconda3/bin/python

# This script reads a template key file and creates the final
# key file for an experiment.
#
# Giuseppe Cimo' 16/02/2012
#

import sys, signal, re, os
from classmakekey import MakeKey
import mods
import complete
import time
from datetime import date
from subprocess import call
# The following lines allow the code to run on both py2 and py3
if hasattr(__builtins__, 'raw_input'):
    input = raw_input

# signal handler for catching CTRL-C
#
def signal_handler(signal, frame):
    print('\n\n\tYou presssed Ctrl+C! Bye!\n')
    sys.exit(0)
signal.signal(signal.SIGINT, signal_handler)


# slices a date string of form dd/mm/yyyy
def date_str(s):
    return s[0:2], s[3:5], s[6:10]

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
args=mods.parsing()

gaps='y'
if args.nogap: gaps='n'

def steps(step):
    if step[-1]=='s':
        timestep=float(step[:-1])
        duration = 'dur=00:'+str(int(timestep))
    elif step[-1]=='m':
        timestep=float(step[:-1])*60.
        duration = 'dur='+str(int(timestep/60.)-1)+':00 gap=1:00'
        if args.g:
            duration = 'dur='+str(int(timestep/60.))+':00 gap=0:30'
    else:
#       This catches a wrong input (only m or s are valid!)
        str(int(step))+1
    return timestep, duration

timestep=''
duration=''
satellite=''
if args.s: timestep, duration = steps(args.s)
if args.r:
    satellite = 'RadioAstron'
    if args.S: timestep, duration = steps('15s')
    if args.s: timestep, duration = steps(args.s)
    
if args.v:
    satellite = 'Vex'
    gaps='n'
    if args.S: timestep, duration = steps('20m')
    if args.s: timestep, duration = steps(args.s)

#if args.G:
#    satellite = 'Glonass'
#    if args.S: timestep, duration = steps('15s')
#    if args.s: timestep, duration = steps(args.s)

if args.m:
    satellite = 'Mex'
    gaps='n'
    if args.S: timestep, duration = steps('20m')
    if args.s: timestep, duration = steps(args.s)

if args.g:
    satellite = 'Gaia'
    gaps='n'
    if args.S: timestep, duration = steps('2m')
    if args.s: timestep, duration = steps(args.s)

coordname=''
if args.in_file:
    coordname = args.in_file

outfile=''
if args.out_file:
    outfile = args.out_file

#mix=False
#if args.M: mix=True
#mix_dual=False
#if args.d: mix_dual=True

same_day='y'
if args.long: same_day='n'

kernels='n'
if args.kernels:
    kernels='y'
    mods.getKernels(kernel_path,satellite)

early_start='n'
if args.time: early_start='y'

correlation='n'
if args.corr: correlation='y'

# Scan length for correlating RA observations
# default 1 minute gap every 19 minutes.
scan_length = '19'
if args.scan: scan_length = args.scan

# Coordinates are calculated for the 
# middle of the scan
scan_center='y'
if args.nomid: scan_center='n'

#Should I create a setup?
setup='n'
if args.setup:
    setup_file = mods.setup()
    setup='y'

pi='pi1'
if args.pi: pi=args.pi.lower()

do_vex='N'
if args.sched: do_vex='Y'

# list of names for the satellites
#
list_vex = ['v', 'vex']
list_mex = ['m', 'mex']
list_ra = ['r', 'ra','radioastron']
list_gaia = ['g', 'gaia']

#
# end initialization!
#####################

###################
#                 #
# Here we start...#
#                 #
###################

print('')
print('\n   This program creates the key file for Sched.\n')
print('')

# ask for the observations date
#

while True:
    full_date = input('Insert observation date (dd/mm/yyyy) --> ')
    try:
        valid_date = time.strptime(full_date, '%d/%m/%Y')
        break
    except ValueError:
       print('Invalid date!')

day, month, year = date_str(full_date)
date = month+day
if same_day != 'y':
    same_day = input('\nExperiment ends on the same day? (Y/n): ')
    if same_day == '' or same_day[0].lower() == 'y':
        day2, month2, year2=day, month, year
    else:
        while True:
            full_date2 = input('Insert ending date (dd/mm/yyyy) --> ')
            try:
                valid_date2 = time.strptime(full_date2, '%d/%m/%Y')
                break
            except ValueError:
                print('Invalid date!')

        day2, month2, year2 = date_str(full_date2)
else:
    day2, month2, year2 = day, month, year
    full_date2 = full_date

# ask for the satellite to observe
# 
if satellite !='':
    sat=satellite
else:
    sat = input('VenusExpress, MarsExpress, RadioAstron or Gaia? (Mex/Vex/Ra/Gaia) --> ')

filename = keyfile_path+'keyfiles/default.key'

if sat.lower() in (list_vex):
    target='VEX'
    if setup == 'n': setup_file =  keyfile_path+'Setups/vex.x'
    gaps='n'
elif sat.lower() in (list_mex):
    target='MEX'
    if setup == 'n': setup_file =  keyfile_path+'Setups/mex.x'
    gaps='n'
elif sat.lower() in (list_ra):
    target='RADIOASTRON'
    if setup == 'n': setup_file =  keyfile_path+'Setups/ra.x'
    if gaps != 'y':
        while True:
            gaps = input('Should I add gaps in scan list? (y/N): ')
            if gaps == '' or gaps[0].lower() == 'n':
                gaps='n'
                break
            elif gaps[0].lower() == 'y':
                gaps='y'
                break
            else:
                print('***Please answer with yes or no.***')
elif sat.lower() in (list_gaia):
    target='GAIA'
    if setup == 'n': setup_file =  keyfile_path+'Setups/gaia.x'
    gaps='n'
if outfile!='':
    outname=outfile
else:
    outname = input('Insert output key file --> ')

# ask for the time when the observations start
#
while True:
    start = input('Insert Spacecraft observations start time (hh:mm:ss) --> ')
    try:
        valid_date = time.strptime(start, '%H:%M:%S')
        break
    except ValueError:
        print('Invalid time!')
h1, m1, s1 = date_str(start)
if early_start=='y':
    while True:
        print('\nYou have to select a start time for the observation')
        start_early = input('Insert start time (hh:mm:ss) --> ')
        try:
            valid_date = time.strptime(start_early, '%H:%M:%S')
            break
        except ValueError:
            print('Invalid time!')
    he, me, se = date_str(start_early)

while True:
    ends = input('\nInsert Spacecraft observations end time (hh:mm:ss) --> ')
    try:
        valid_date = time.strptime(ends, '%H:%M:%S')
        break
    except ValueError:
        print('Invalid time!')

h2, m2, s2 = date_str(ends)

if scan_center == 'y':
    m1=str(int(float(m1)+timestep/60./2.))
    m2=str(int(float(m2)+timestep/60./2.))

utctime_ini=year+'-'+month+'-'+day+'T'+h1+':'+m1+':'+s1#+'.002'
utctime_end=year2+'-'+month2+'-'+day2+'T'+h2+':'+m2+':'+s2#+'.002'

if timestep=='':
    while True:
        step = input('\nInsert time step (i.e. 20m or 15s)--> ')
        try:
            timestep, duration = steps(step)
            break
        except TypeError:
            print('Invalid time unit! Please use m for minutes and s for seconds.')

# start for the participant stations
#
stations = input('Insert participant stations (separated by commas) --> ')

while True:
    if pi.lower() in pis.keys():
        break
    else:
        pi=input('Provide a valid PI (pi1 or pi2) --> ')
        pi=pi.lower()
    
output = open(outname, 'a')

# ask for the file with the coordinates
#
if coordname!='':
    filecoords=coordname
else:
    filecoords=target.lower()+'_'+utctime_ini
    filecoords=mods.pointing(meta_path,target,stations,
                             utctime_ini,utctime_end,timestep,filecoords)
    
# In Summary:
#
print('\nSummary (please check if correct):')
print('-------------------------------\n')
print('PI is              :', pis.get(pi).get('piname'))
print('Satellite          :', satellite.upper())
print('Using Coord file:  :', filecoords)
print('Output file        :', outname)
print('Observations start :', full_date, start)
print('Observations end   :', full_date2, ends)
print('Stations scheduled :', stations)
if setup == 'y':
    print('Ad-hoc setup used  :', setup_file,'\n')
else:
    print('Setup file         :', setup_file,'\n')

ok = input('Proceed? (Y/n): ')
if ok == '' or ok[0].lower() == 'y':
    pass
else:
    print('OK... Bye!')
    sys.exit(1)

# run the sat module (Mex/Vex or ra/Gaia) to create
# the scan list with or without gaps
#
open(filecoords)
if sat.lower() in (list_vex+list_mex+list_gaia):
    source_file = mods.sched_ra(filecoords,duration)
    if correlation =='y':
        source_file=mods.sched_corr(filecoords,duration,sat)
        mods.scans_corr(sat,int(scan_length))
elif sat.lower() in (list_ra):
    source_file = mods.sched_ra(filecoords,duration)
    if correlation =='y':
        source_file=mods.sched_corr(filecoords,duration,sat)
        mods.scans_corr(sat,int(scan_length))
    if correlation =='n': mods.scans_ra(int(scan_length),int(timestep))
else:
    print('\n(Unknown satellite) Please check the output file:', outname, '\n')
    sys.exit(1)

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
    call("$sched/bin/LINUX64/sched < %s" % outname, shell=True)
