PCK Files
===========================================================================


Directory Contents
--------------------------------------------------------

   This directory contains the following files and subdirectories:
 
      pck00010.tpc                       latest generic PCK file.

      earth_000101_yymmdd_yymmdd.bpc     High accuracy EOP-based kernel,
                                         updated at least twice per week:
                                         The first two dates in the file name are 
					 the file's coverage start and stop times. 
					 The third date in the file name is the epoch 
					 of the last datum in the source EOP file:  
                                         earth orientation from this date forward is predicted.


      earth_070425_370426_predict.bpc    Low accuracy, long term predict kernel. The extended 
					 predict region of this kernel---the time interval 
					 following the end of the predict region of the input 
					 EOP file---does not estimate UT1-TAI or polar motion.
                                         The dates in the file name are the file's coverage start 
					 and stop times.       

      de-403-masses.tpc                  gives "GM" (gravitational constant times mass) values for the
   					 sun, planets, and planetary system barycenters.  These values
   					 are based on DE-403.
                                    
      former_versions                    Subdirectory containing obsolete
                                         versions of the PCK files.

      aareadme_en.txt                    This file.



File Naming Conventions
--------------------------------------------------------
 
   The generic PCK files provided in this directory are named as follows

      pckVVVVV.tls

   where 

      VVVVV is the version (e.g. 00010) 

   The generic predicted high precision Earth orientation PCK files 
   provided in this directory are named as follows

      earth_YYMMDD_YYMMD_predict.bpc

   where 

      YYMMDD are coverage start and stop dates.







End of aareadme.txt
