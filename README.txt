**********************************************************
Scripts to create a .key file for spacecraft observations.
**********************************************************

MakeKey.py and the its GUI version GUI-MakeKey.py.
The MakeKey.py is more complete and versatile.
The GUI version is for standard quick scheduling.

They require:

- an environment variable $MAKEKEY
- the python module "ephem";
- the NAIF SPICE toolkit + the python module "PySPICE".

...and, of course, SCHED is needed for producing creating a .vex file
out of the .key file. SCHED can be downloaded from:
http://www.aoc.nrao.edu/software/sched/Installing_SCHED.html


-----------------
Setting $MAKEKEY:
-----------------

The scripts look for some anchillary files, therefore one needs to
setup the right path. This is done via an environment variable.

Depending on the shell in use, these are the possible commands:

export MAKEKEY='<directory where the files were unpacked>'

or

setenv MAKEKEY <directory where the files were unpacked>

The <directory where the files were unpacked> is the main folder created by 
unpacking "MakeKey.tar.gz". It contains the folders SPICE and sched_files 
needed by the python script.

It is convenient to set MAKEKEY at login.


--------
PYEPHEM:
--------

pyephem can be downloaded at http://rhodesmill.org/pyephem/

The easiest way to install PyEphem on a Linux or Mac OS machine, after
making sure that “Python.h” and the other Python header files are
installed (which on Ubuntu requires the “python-dev” package), is to
use the pip command, like this: 

$ pip install pyephem


-------
CSPICE:
-------

The first step is to get the cspice toolkit:

http://naif.jpl.nasa.gov/naif/toolkit_C.html

Download the cspice toolkit and extract it to the directory
"cspice".

In the directory where the folder cspice is, download and
extract the PySPICE files:
 
https://github.com/rca/PySPICE

Then, run setup.py like so:

$ python setup.py build_ext

Then install:

$ python setup.py install


-----------------------
How to use the MakeKey:
-----------------------

usage: MakeKey [-h] [-r | -v | -m | -g] [--long] [--nogap] [-k] [--sched] [-t]
               [-s S] [-S] [--corr] [--scan SCAN] [--nomid] [--setup]
               [--pi PI]
               [in_file] out_file

positional arguments:
  in_file        input coordinates file.
  out_file       output key file.

optional arguments:
  -h, --help     show this help message and exit
  -r             Satellite is RadioAstron
  -v             Satellite is Vex
  -m             Satellite is Mex
  -g             Satellite is Gaia
  --long         Experiment finishing another day
  --nogap        No gap for RA observations
  -k, --kernels  Download SPICE kernels for VEX or MEX, Leap Second and EOP.
  --sched        Run Sched to create the .vex file
  -t, --time     Start time of the Observations, if different than the first
                 scan time on the spacecraft.
  -s S           Insert the scan duration (eg. 30m or 20s)
  -S             Dur=20m for VEX/MEX and Dur=15s for RadioAstron
  --corr         Create a dummy file for correlation purposes
  --scan SCAN    Total/cumulated scan length (in minutes) for RA observations
                 (eg. 19)
  --nomid        Coordinates are NOT calculated at the middle of the scan
  --setup        Create an ad-hoc frequency setup
  --pi PI        Provide PI name (Sergei, Giuseppe, Tatiana or Guifre) -->

For bug and feature requests, please contact Giuseppe Cimo': cimo@jive.nl
