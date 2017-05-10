KPL/FK
 
   FILE: vlbistns_itrf93_topo_southafrica_131127.tf
 
   This file was created by PINPOINT.
 
   PINPOINT Version 3.0.0 --- March 26, 2009
   PINPOINT RUN DATE/TIME:    2013-11-27T16:47:32
   PINPOINT DEFINITIONS FILE: vlbistns_itrf93_121109_southafrica2stns.defs
   PINPOINT PCK FILE:         pck00010.tpc
   PINPOINT SPK FILE:         vlbistns_itrf93_southafrica_131127.bsp
 
   The input definitions file is appended to this
   file as a comment block.
 
 
   Body-name mapping follows:
 
\begindata
 
   NAIF_BODY_NAME                      += 'HARTRAO'
   NAIF_BODY_CODE                      += 399500
 
   NAIF_BODY_NAME                      += 'HART15M'
   NAIF_BODY_CODE                      += 399501
 
\begintext
 
 
   Reference frame specifications follow:
 
 
   Topocentric frame HARTRAO_TOPO
 
      The Z axis of this frame points toward the zenith.
      The X axis of this frame points North.
 
      Topocentric frame HARTRAO_TOPO is centered at the site HARTRAO
      which has Cartesian coordinates
 
         X (km):                  0.5085442777900E+04
         Y (km):                  0.2668263543000E+04
         Z (km):                 -0.2768696959800E+04
 
      and planetodetic coordinates
 
         Longitude (deg):        27.6853931495578
         Latitude  (deg):       -25.8897513804117
         Altitude   (km):         0.1416109897026E+01
 
      These planetodetic coordinates are expressed relative to
      a reference spheroid having the dimensions
 
         Equatorial radius (km):  6.3781366000000E+03
         Polar radius      (km):  6.3567519000000E+03
 
      All of the above coordinates are relative to the frame ITRF93.
 
 
\begindata
 
   FRAME_HARTRAO_TOPO                  =  1399500
   FRAME_1399500_NAME                  =  'HARTRAO_TOPO'
   FRAME_1399500_CLASS                 =  4
   FRAME_1399500_CLASS_ID              =  1399500
   FRAME_1399500_CENTER                =  399500
 
   OBJECT_399500_FRAME                 =  'HARTRAO_TOPO'
 
   TKFRAME_1399500_RELATIVE            =  'ITRF93'
   TKFRAME_1399500_SPEC                =  'ANGLES'
   TKFRAME_1399500_UNITS               =  'DEGREES'
   TKFRAME_1399500_AXES                =  ( 3, 2, 3 )
   TKFRAME_1399500_ANGLES              =  (  -27.6853931495578,
                                            -115.8897513804117,
                                             180.0000000000000 )
 
 
\begintext
 
   Topocentric frame HART15M_TOPO
 
      The Z axis of this frame points toward the zenith.
      The X axis of this frame points North.
 
      Topocentric frame HART15M_TOPO is centered at the site HART15M
      which has Cartesian coordinates
 
         X (km):                  0.5085489540000E+04
         Y (km):                  0.2668160834000E+04
         Z (km):                 -0.2768691933000E+04
 
      and planetodetic coordinates
 
         Longitude (deg):        27.6842690049659
         Latitude  (deg):       -25.8897354365669
         Altitude   (km):         0.1408237599494E+01
 
      These planetodetic coordinates are expressed relative to
      a reference spheroid having the dimensions
 
         Equatorial radius (km):  6.3781366000000E+03
         Polar radius      (km):  6.3567519000000E+03
 
      All of the above coordinates are relative to the frame ITRF93.
 
 
\begindata
 
   FRAME_HART15M_TOPO                  =  1399501
   FRAME_1399501_NAME                  =  'HART15M_TOPO'
   FRAME_1399501_CLASS                 =  4
   FRAME_1399501_CLASS_ID              =  1399501
   FRAME_1399501_CENTER                =  399501
 
   OBJECT_399501_FRAME                 =  'HART15M_TOPO'
 
   TKFRAME_1399501_RELATIVE            =  'ITRF93'
   TKFRAME_1399501_SPEC                =  'ANGLES'
   TKFRAME_1399501_UNITS               =  'DEGREES'
   TKFRAME_1399501_AXES                =  ( 3, 2, 3 )
   TKFRAME_1399501_ANGLES              =  (  -27.6842690049659,
                                            -115.8897354365669,
                                             180.0000000000000 )
 
\begintext
 
 
Definitions file vlbistns_itrf93_121109_southafrica2stns.defs
--------------------------------------------------------------------------------
 
 
 
begindata
 
NAIF_BODY_CODE += ( 399500 , 399501 )
 
NAIF_BODY_NAME += ( 'HARTRAO' , 'HART15M' )
 
begintext
 
   SPK for VLBI Station Locations
   =====================================================================
 
   Original file name:                   vlbistns_itrf93_120603_asia5stns.bsp
   Creation date:                        2012 Nov 9th 18:00
   Created by:                           Tatiana Bocanegra Bahamon
 
 
 
begindata
 
 
   SITES               = (  'HARTRAO' , 'HART15M' )
 
 
   HARTRAO_CENTER   = 399
   HARTRAO_FRAME    = 'ITRF93'
   HARTRAO_IDCODE   = 399500
   HARTRAO_XYZ      = (  +5085.4427779,
                         +2668.2635430,
                         -2768.6969598  )
   HARTRAO_UP       = 'Z'
   HARTRAO_NORTH    = 'X'
 
 
   HART15M_CENTER   = 399
   HART15M_FRAME    = 'ITRF93'
   HART15M_IDCODE   = 399501
   HART15M_XYZ      = (  +5085.489540,
                         +2668.160834,
                         -2768.691933  )
 
 
   HART15M_UP       = 'Z'
   HART15M_NORTH    = 'X'
 
 
begintext
 
[End of definitions file]
 
begintext
 
[End of definitions file]
 
 
begintext
 
[End of definitions file]
 
