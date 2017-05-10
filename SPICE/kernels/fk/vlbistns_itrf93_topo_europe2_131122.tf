KPL/FK
 
   FILE: vlbistnts_itrf93_topo_europe2_131122.tf
 
   This file was created by PINPOINT.
 
   PINPOINT Version 3.0.0 --- March 26, 2009
   PINPOINT RUN DATE/TIME:    2013-11-27T14:16:39
   PINPOINT DEFINITIONS FILE: vlbistns_itrf93_europe2_131122.defs
   PINPOINT PCK FILE:         pck00010.tpc
   PINPOINT SPK FILE:         vlbistns_itrf93_europe2_131122.bsp
 
   The input definitions file is appended to this
   file as a comment block.
 
 
   Body-name mapping follows:
 
\begindata
 
   NAIF_BODY_NAME                      += 'EFLSBERG'
   NAIF_BODY_CODE                      += 399909
 
   NAIF_BODY_NAME                      += 'NYALES20'
   NAIF_BODY_CODE                      += 399910
 
\begintext
 
 
   Reference frame specifications follow:
 
 
   Topocentric frame EFLSBERG_TOPO
 
      The Z axis of this frame points toward the zenith.
      The X axis of this frame points North.
 
      Topocentric frame EFLSBERG_TOPO is centered at the site EFLSBERG
      which has Cartesian coordinates
 
         X (km):                  0.4033947327100E+04
         Y (km):                  0.4869907044000E+03
         Z (km):                  0.4900430938400E+04
 
      and planetodetic coordinates
 
         Longitude (deg):         6.8836134489241
         Latitude  (deg):        50.5248341848608
         Altitude   (km):         0.4171248173802E+00
 
      These planetodetic coordinates are expressed relative to
      a reference spheroid having the dimensions
 
         Equatorial radius (km):  6.3781366000000E+03
         Polar radius      (km):  6.3567519000000E+03
 
      All of the above coordinates are relative to the frame ITRF93.
 
 
\begindata
 
   FRAME_EFLSBERG_TOPO                 =  1399909
   FRAME_1399909_NAME                  =  'EFLSBERG_TOPO'
   FRAME_1399909_CLASS                 =  4
   FRAME_1399909_CLASS_ID              =  1399909
   FRAME_1399909_CENTER                =  399909
 
   OBJECT_399909_FRAME                 =  'EFLSBERG_TOPO'
 
   TKFRAME_1399909_RELATIVE            =  'ITRF93'
   TKFRAME_1399909_SPEC                =  'ANGLES'
   TKFRAME_1399909_UNITS               =  'DEGREES'
   TKFRAME_1399909_AXES                =  ( 3, 2, 3 )
   TKFRAME_1399909_ANGLES              =  (   -6.8836134489241,
                                             -39.4751658151392,
                                             180.0000000000000 )
 
 
\begintext
 
   Topocentric frame NYALES20_TOPO
 
      The Z axis of this frame points toward the zenith.
      The X axis of this frame points North.
 
      Topocentric frame NYALES20_TOPO is centered at the site NYALES20
      which has Cartesian coordinates
 
         X (km):                  0.1202462596900E+04
         Y (km):                  0.2527344828000E+03
         Z (km):                  0.6237766152300E+04
 
      and planetodetic coordinates
 
         Longitude (deg):        11.8696972039291
         Latitude  (deg):        78.9291117059376
         Altitude   (km):         0.8777101788326E-01
 
      These planetodetic coordinates are expressed relative to
      a reference spheroid having the dimensions
 
         Equatorial radius (km):  6.3781366000000E+03
         Polar radius      (km):  6.3567519000000E+03
 
      All of the above coordinates are relative to the frame ITRF93.
 
 
\begindata
 
   FRAME_NYALES20_TOPO                 =  1399910
   FRAME_1399910_NAME                  =  'NYALES20_TOPO'
   FRAME_1399910_CLASS                 =  4
   FRAME_1399910_CLASS_ID              =  1399910
   FRAME_1399910_CENTER                =  399910
 
   OBJECT_399910_FRAME                 =  'NYALES20_TOPO'
 
   TKFRAME_1399910_RELATIVE            =  'ITRF93'
   TKFRAME_1399910_SPEC                =  'ANGLES'
   TKFRAME_1399910_UNITS               =  'DEGREES'
   TKFRAME_1399910_AXES                =  ( 3, 2, 3 )
   TKFRAME_1399910_ANGLES              =  (  -11.8696972039291,
                                             -11.0708882940623,
                                             180.0000000000000 )
 
\begintext
 
 
Definitions file vlbistns_itrf93_europe2_131122.defs
--------------------------------------------------------------------------------
 
 
begindata
 
NAIF_BODY_CODE += ( 399909 ,
            399910 )
 
NAIF_BODY_NAME += ( 'EFLSBERG' ,
            'NYALES20' )
 
begintext
 
   SPK for VLBI Station Locations
   =====================================================================
 
   Original file name:                   vlbistns_itrf08_europe10stns.bsp
   Creation date:                        2013 Nov 22
   Created by:                           Tatiana Bocanegra Bahamon
 
 
   Introduction
   =====================================================================
   This file provides geocentric states---locations and velocities---
   for a set of VLBI stations. Station position vectors point from the earth's b
   to the stations.
 
   The states in this file are given relative to the terrestrial
   reference frame ITRF93.
 
   This SPK file has a companion file
 
      vlbistns_fx_[date].bsp
 
   which differs from this one only in that it uses the reference
   frame alias 'EARTH_FIXED'.  See the comment area of that file
   and the Frames Required Reading for details.
 
 
   Using this kernel
   ====================================================================
 
 
    Kernel loading
    --------------
   In order for a SPICE-based program to make use of this kernel, the
   kernel must be loaded via the SPICE routine FURNSH.  If you are
   running application software created by a third party, see the
   documentation for that software for instructions on kernel
   management.
 
   See also "Associated frame kernels" and "Associated PCK files"
   below.
 
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
 
   vlbistns_topo_xxx.tf
 
 
 
begindata
 
 
   SITES = ( 'EFLSBERG' , 'NYALES20' )
 
 
   EFLSBERG_CENTER    = 399
   EFLSBERG_FRAME     = 'ITRF93'
   EFLSBERG_IDCODE    = 399909
   EFLSBERG_XYZ       = ( +4033.9473271 , +486.9907044 , +4900.4309384 )
   EFLSBERG_UP        = 'Z'
   EFLSBERG_NORTH     = 'X'
 
   NYALES20_CENTER    = 399
   NYALES20_FRAME     = 'ITRF93'
   NYALES20_IDCODE    = 399910
   NYALES20_XYZ       = ( +1202.4625969 , +252.7344828 , +6237.7661523 )
   NYALES20_UP        = 'Z'
   NYALES20_NORTH     = 'X'
 
 
 
begintext
 
[End of definitions file]
 
begintext
 
[End of definitions file]
 
 
begintext
 
[End of definitions file]
 
