KPL/FK
 
   FILE: vlbistns_itrf93_topo_japan_131127.tf
 
   This file was created by PINPOINT.
 
   PINPOINT Version 3.0.0 --- March 26, 2009
   PINPOINT RUN DATE/TIME:    2013-11-27T16:45:33
   PINPOINT DEFINITIONS FILE: vlbistns_itrf93_japan_131127.defs
   PINPOINT PCK FILE:         pck00010.tpc
   PINPOINT SPK FILE:         vlbistns_itrf93_japan_131127.bsp
 
   The input definitions file is appended to this
   file as a comment block.
 
 
   Body-name mapping follows:
 
\begindata
 
   NAIF_BODY_NAME                      += 'KASHIMA'
   NAIF_BODY_CODE                      += 399400
 
   NAIF_BODY_NAME                      += 'YAMAGUCHI'
   NAIF_BODY_CODE                      += 399401
 
\begintext
 
 
   Reference frame specifications follow:
 
 
   Topocentric frame KASHIMA_TOPO
 
      The Z axis of this frame points toward the zenith.
      The X axis of this frame points North.
 
      Topocentric frame KASHIMA_TOPO is centered at the site KASHIMA
      which has Cartesian coordinates
 
         X (km):                 -0.3997892277100E+04
         Y (km):                  0.3276581354200E+04
         Z (km):                  0.3724118153300E+04
 
      and planetodetic coordinates
 
         Longitude (deg):       140.6627353776398
         Latitude  (deg):        35.9541109333598
         Altitude   (km):         0.8050112465682E-01
 
      These planetodetic coordinates are expressed relative to
      a reference spheroid having the dimensions
 
         Equatorial radius (km):  6.3781366000000E+03
         Polar radius      (km):  6.3567519000000E+03
 
      All of the above coordinates are relative to the frame ITRF93.
 
 
\begindata
 
   FRAME_KASHIMA_TOPO                  =  1399400
   FRAME_1399400_NAME                  =  'KASHIMA_TOPO'
   FRAME_1399400_CLASS                 =  4
   FRAME_1399400_CLASS_ID              =  1399400
   FRAME_1399400_CENTER                =  399400
 
   OBJECT_399400_FRAME                 =  'KASHIMA_TOPO'
 
   TKFRAME_1399400_RELATIVE            =  'ITRF93'
   TKFRAME_1399400_SPEC                =  'ANGLES'
   TKFRAME_1399400_UNITS               =  'DEGREES'
   TKFRAME_1399400_AXES                =  ( 3, 2, 3 )
   TKFRAME_1399400_ANGLES              =  ( -140.6627353776398,
                                             -54.0458890666402,
                                             180.0000000000000 )
 
 
\begintext
 
   Topocentric frame YAMAGUCHI_TOPO
 
      The Z axis of this frame points toward the zenith.
      The X axis of this frame points North.
 
      Topocentric frame YAMAGUCHI_TOPO is centered at the site YAMAGUCHI
      which has Cartesian coordinates
 
         X (km):                 -0.3502544258800E+04
         Y (km):                  0.3950966396900E+04
         Z (km):                  0.3566381164900E+04
 
      and planetodetic coordinates
 
         Longitude (deg):       131.5570902384813
         Latitude  (deg):        34.2160362855163
         Altitude   (km):         0.1660227413554E+00
 
      These planetodetic coordinates are expressed relative to
      a reference spheroid having the dimensions
 
         Equatorial radius (km):  6.3781366000000E+03
         Polar radius      (km):  6.3567519000000E+03
 
      All of the above coordinates are relative to the frame ITRF93.
 
 
\begindata
 
   FRAME_YAMAGUCHI_TOPO                =  1399401
   FRAME_1399401_NAME                  =  'YAMAGUCHI_TOPO'
   FRAME_1399401_CLASS                 =  4
   FRAME_1399401_CLASS_ID              =  1399401
   FRAME_1399401_CENTER                =  399401
 
   OBJECT_399401_FRAME                 =  'YAMAGUCHI_TOPO'
 
   TKFRAME_1399401_RELATIVE            =  'ITRF93'
   TKFRAME_1399401_SPEC                =  'ANGLES'
   TKFRAME_1399401_UNITS               =  'DEGREES'
   TKFRAME_1399401_AXES                =  ( 3, 2, 3 )
   TKFRAME_1399401_ANGLES              =  ( -131.5570902384813,
                                             -55.7839637144837,
                                             180.0000000000000 )
 
\begintext
 
 
Definitions file vlbistns_itrf93_japan_131127.defs
--------------------------------------------------------------------------------
 
 
 
begindata
 
NAIF_BODY_CODE += ( 399400 , 399401 )
 
NAIF_BODY_NAME += ( 'KASHIMA' , 'YAMAGUCHI' )
 
begintext
 
   SPK for VLBI Station Locations
   =====================================================================
 
   Original file name:                   vlbistns_itrf93_japan.bsp
   Creation date:                        2013 Nov 27
   Created by:                           Tatiana Bocanegra Bahamon
 
 
   Introduction
   =====================================================================
   This file provides geocentric states---locations and velocities---
   for a set of VLBI stations. Station position vectors point from the earth's b
   to the stations.
 
   The states in this file are given relative to the terrestrial
   reference frame ITRF93.
 
 
   Associated PCK files
   --------------------
 
   For high-accuracy work, this kernel should be used together with a
   high-precision, binary earth PCK file.
 
      NAIF produces these kernels on a regular basis; they can be
      obtained via anonymous ftp from the NAIF server
 
         naif.jpl.nasa.gov
 
      The PCK is located in the path
 
         pub/naif/generic_kernels/pck
 
 
 
   Associated frame kernels
   ------------------------
 
   The frame kernel having (original) file name
 
   vlbistns_itrf93_topo_120605_asia8stns.tf
 
   Remarks
   ------------------------
   NOTE: X, Y, and Z velocity components of the object in meters/year (NOT km/s)
 
 
begindata
 
 
   SITES               = ( 'KASHIMA' , 'YAMAGUCHI' )
 
   KASHIMA_CENTER   = 399
   KASHIMA_FRAME    = 'ITRF93'
   KASHIMA_IDCODE   = 399400
   KASHIMA_XYZ      = ( -3997.8922771,
                       +3276.5813542,
                       +3724.1181533 )
   KASHIMA_UP       = 'Z'
   KASHIMA_NORTH    = 'X'
 
   YAMAGUCHI_CENTER   = 399
   YAMAGUCHI_FRAME    = 'ITRF93'
   YAMAGUCHI_IDCODE   = 399401
   YAMAGUCHI_XYZ      = ( -3502.5442588,
                          +3950.9663969,
                          +3566.3811649 )
   YAMAGUCHI_UP       = 'Z'
   YAMAGUCHI_NORTH    = 'X'
 
 
begintext
 
[End of definitions file]
 
 
 
begintext
 
[End of definitions file]
 
