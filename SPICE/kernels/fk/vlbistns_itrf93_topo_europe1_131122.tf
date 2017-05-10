KPL/FK
 
   FILE: vlbistns_itrf93_topo_120306_8stns.tf
 
   This file was created by PINPOINT.
 
   PINPOINT Version 3.0.0 --- March 26, 2009
   PINPOINT RUN DATE/TIME:    2012-03-06T10:15:50
   PINPOINT DEFINITIONS FILE: vlbistns_itrf93_120306_8stns.defs
   PINPOINT PCK FILE:         pck00010.tpc
   PINPOINT SPK FILE:         vlbistns_itrf93_120306_8stns.bsp
 
   The input definitions file is appended to this
   file as a comment block.
 
 
   Body-name mapping follows:
 
\begindata
 
   NAIF_BODY_NAME                      += 'METSAHOV'
   NAIF_BODY_CODE                      += 399901
 
   NAIF_BODY_NAME                      += 'WETTZELL'
   NAIF_BODY_CODE                      += 399902
 
   NAIF_BODY_NAME                      += 'ONSALA60'
   NAIF_BODY_CODE                      += 399903
 
   NAIF_BODY_NAME                      += 'ONSALA85'
   NAIF_BODY_CODE                      += 399904
 
   NAIF_BODY_NAME                      += 'MEDICINA'
   NAIF_BODY_CODE                      += 399905
 
   NAIF_BODY_NAME                      += 'YEBES40M'
   NAIF_BODY_CODE                      += 399906
 
   NAIF_BODY_NAME                      += 'MATERA'
   NAIF_BODY_CODE                      += 399907
 
   NAIF_BODY_NAME                      += 'NOTO'
   NAIF_BODY_CODE                      += 399908
 
\begintext
 
 
   Reference frame specifications follow:
 
 
   Topocentric frame METSAHOV_TOPO
 
      The Z axis of this frame points toward the zenith.
      The X axis of this frame points North.
 
      Topocentric frame METSAHOV_TOPO is centered at the site METSAHOV
      which has Cartesian coordinates
 
         X (km):                  0.2892584931300E+04
         Y (km):                  0.1311715526900E+04
         Z (km):                  0.5512640112100E+04
 
      and planetodetic coordinates
 
         Longitude (deg):        24.3931133552799
         Latitude  (deg):        60.2178101231423
         Altitude   (km):         0.8036795164266E-01
 
      These planetodetic coordinates are expressed relative to
      a reference spheroid having the dimensions
 
         Equatorial radius (km):  6.3781366000000E+03
         Polar radius      (km):  6.3567519000000E+03
 
      All of the above coordinates are relative to the frame ITRF93.
 
 
\begindata
 
   FRAME_METSAHOV_TOPO                 =  1399901
   FRAME_1399901_NAME                  =  'METSAHOV_TOPO'
   FRAME_1399901_CLASS                 =  4
   FRAME_1399901_CLASS_ID              =  1399901
   FRAME_1399901_CENTER                =  399901
 
   OBJECT_399901_FRAME                 =  'METSAHOV_TOPO'
 
   TKFRAME_1399901_RELATIVE            =  'ITRF93'
   TKFRAME_1399901_SPEC                =  'ANGLES'
   TKFRAME_1399901_UNITS               =  'DEGREES'
   TKFRAME_1399901_AXES                =  ( 3, 2, 3 )
   TKFRAME_1399901_ANGLES              =  (  -24.3931133552799,
                                             -29.7821898768577,
                                             180.0000000000000 )
 
 
\begintext
 
   Topocentric frame WETTZELL_TOPO
 
      The Z axis of this frame points toward the zenith.
      The X axis of this frame points North.
 
      Topocentric frame WETTZELL_TOPO is centered at the site WETTZELL
      which has Cartesian coordinates
 
         X (km):                  0.4075539710200E+04
         Y (km):                  0.9317354542000E+03
         Z (km):                  0.4801629481600E+04
 
      and planetodetic coordinates
 
         Longitude (deg):        12.8774534489679
         Latitude  (deg):        49.1450095098675
         Altitude   (km):         0.6695362407395E+00
 
      These planetodetic coordinates are expressed relative to
      a reference spheroid having the dimensions
 
         Equatorial radius (km):  6.3781366000000E+03
         Polar radius      (km):  6.3567519000000E+03
 
      All of the above coordinates are relative to the frame ITRF93.
 
 
\begindata
 
   FRAME_WETTZELL_TOPO                 =  1399902
   FRAME_1399902_NAME                  =  'WETTZELL_TOPO'
   FRAME_1399902_CLASS                 =  4
   FRAME_1399902_CLASS_ID              =  1399902
   FRAME_1399902_CENTER                =  399902
 
   OBJECT_399902_FRAME                 =  'WETTZELL_TOPO'
 
   TKFRAME_1399902_RELATIVE            =  'ITRF93'
   TKFRAME_1399902_SPEC                =  'ANGLES'
   TKFRAME_1399902_UNITS               =  'DEGREES'
   TKFRAME_1399902_AXES                =  ( 3, 2, 3 )
   TKFRAME_1399902_ANGLES              =  (  -12.8774534489679,
                                             -40.8549904901324,
                                             180.0000000000000 )
 
 
\begintext
 
   Topocentric frame ONSALA60_TOPO
 
      The Z axis of this frame points toward the zenith.
      The X axis of this frame points North.
 
      Topocentric frame ONSALA60_TOPO is centered at the site ONSALA60
      which has Cartesian coordinates
 
         X (km):                  0.3370605870500E+04
         Y (km):                  0.7119176490000E+03
         Z (km):                  0.5349830851800E+04
 
      and planetodetic coordinates
 
         Longitude (deg):        11.9263576010794
         Latitude  (deg):        57.3958379036922
         Altitude   (km):         0.5971161919467E-01
 
      These planetodetic coordinates are expressed relative to
      a reference spheroid having the dimensions
 
         Equatorial radius (km):  6.3781366000000E+03
         Polar radius      (km):  6.3567519000000E+03
 
      All of the above coordinates are relative to the frame ITRF93.
 
 
\begindata
 
   FRAME_ONSALA60_TOPO                 =  1399903
   FRAME_1399903_NAME                  =  'ONSALA60_TOPO'
   FRAME_1399903_CLASS                 =  4
   FRAME_1399903_CLASS_ID              =  1399903
   FRAME_1399903_CENTER                =  399903
 
   OBJECT_399903_FRAME                 =  'ONSALA60_TOPO'
 
   TKFRAME_1399903_RELATIVE            =  'ITRF93'
   TKFRAME_1399903_SPEC                =  'ANGLES'
   TKFRAME_1399903_UNITS               =  'DEGREES'
   TKFRAME_1399903_AXES                =  ( 3, 2, 3 )
   TKFRAME_1399903_ANGLES              =  (  -11.9263576010794,
                                             -32.6041620963078,
                                             180.0000000000000 )
 
 
\begintext
 
   Topocentric frame ONSALA85_TOPO
 
      The Z axis of this frame points toward the zenith.
      The X axis of this frame points North.
 
      Topocentric frame ONSALA85_TOPO is centered at the site ONSALA85
      which has Cartesian coordinates
 
         X (km):                  0.3370965978500E+04
         Y (km):                  0.7114661272000E+03
         Z (km):                  0.5349664146100E+04
 
      and planetodetic coordinates
 
         Longitude (deg):        11.9177730638139
         Latitude  (deg):        57.3930717063518
         Altitude   (km):         0.5887618220509E-01
 
      These planetodetic coordinates are expressed relative to
      a reference spheroid having the dimensions
 
         Equatorial radius (km):  6.3781366000000E+03
         Polar radius      (km):  6.3567519000000E+03
 
      All of the above coordinates are relative to the frame ITRF93.
 
 
\begindata
 
   FRAME_ONSALA85_TOPO                 =  1399904
   FRAME_1399904_NAME                  =  'ONSALA85_TOPO'
   FRAME_1399904_CLASS                 =  4
   FRAME_1399904_CLASS_ID              =  1399904
   FRAME_1399904_CENTER                =  399904
 
   OBJECT_399904_FRAME                 =  'ONSALA85_TOPO'
 
   TKFRAME_1399904_RELATIVE            =  'ITRF93'
   TKFRAME_1399904_SPEC                =  'ANGLES'
   TKFRAME_1399904_UNITS               =  'DEGREES'
   TKFRAME_1399904_AXES                =  ( 3, 2, 3 )
   TKFRAME_1399904_ANGLES              =  (  -11.9177730638139,
                                             -32.6069282936482,
                                             180.0000000000000 )
 
 
\begintext
 
   Topocentric frame MEDICINA_TOPO
 
      The Z axis of this frame points toward the zenith.
      The X axis of this frame points North.
 
      Topocentric frame MEDICINA_TOPO is centered at the site MEDICINA
      which has Cartesian coordinates
 
         X (km):                  0.4461369785600E+04
         Y (km):                  0.9195970333000E+03
         Z (km):                  0.4449559328500E+04
 
      and planetodetic coordinates
 
         Longitude (deg):        11.6469360125248
         Latitude  (deg):        44.5204943846552
         Altitude   (km):         0.6756846413910E-01
 
      These planetodetic coordinates are expressed relative to
      a reference spheroid having the dimensions
 
         Equatorial radius (km):  6.3781366000000E+03
         Polar radius      (km):  6.3567519000000E+03
 
      All of the above coordinates are relative to the frame ITRF93.
 
 
\begindata
 
   FRAME_MEDICINA_TOPO                 =  1399905
   FRAME_1399905_NAME                  =  'MEDICINA_TOPO'
   FRAME_1399905_CLASS                 =  4
   FRAME_1399905_CLASS_ID              =  1399905
   FRAME_1399905_CENTER                =  399905
 
   OBJECT_399905_FRAME                 =  'MEDICINA_TOPO'
 
   TKFRAME_1399905_RELATIVE            =  'ITRF93'
   TKFRAME_1399905_SPEC                =  'ANGLES'
   TKFRAME_1399905_UNITS               =  'DEGREES'
   TKFRAME_1399905_AXES                =  ( 3, 2, 3 )
   TKFRAME_1399905_ANGLES              =  (  -11.6469360125248,
                                             -45.4795056153448,
                                             180.0000000000000 )
 
 
\begintext
 
   Topocentric frame YEBES40M_TOPO
 
      The Z axis of this frame points toward the zenith.
      The X axis of this frame points North.
 
      Topocentric frame YEBES40M_TOPO is centered at the site YEBES40M
      which has Cartesian coordinates
 
         X (km):                  0.4848761842500E+04
         Y (km):                 -0.2614842773000E+03
         Z (km):                  0.4123084959900E+04
 
      and planetodetic coordinates
 
         Longitude (deg):        -3.0868596156270
         Latitude  (deg):        40.5246674397296
         Altitude   (km):         0.9893216029806E+00
 
      These planetodetic coordinates are expressed relative to
      a reference spheroid having the dimensions
 
         Equatorial radius (km):  6.3781366000000E+03
         Polar radius      (km):  6.3567519000000E+03
 
      All of the above coordinates are relative to the frame ITRF93.
 
 
\begindata
 
   FRAME_YEBES40M_TOPO                 =  1399906
   FRAME_1399906_NAME                  =  'YEBES40M_TOPO'
   FRAME_1399906_CLASS                 =  4
   FRAME_1399906_CLASS_ID              =  1399906
   FRAME_1399906_CENTER                =  399906
 
   OBJECT_399906_FRAME                 =  'YEBES40M_TOPO'
 
   TKFRAME_1399906_RELATIVE            =  'ITRF93'
   TKFRAME_1399906_SPEC                =  'ANGLES'
   TKFRAME_1399906_UNITS               =  'DEGREES'
   TKFRAME_1399906_AXES                =  ( 3, 2, 3 )
   TKFRAME_1399906_ANGLES              =  ( -356.9131403843730,
                                             -49.4753325602704,
                                             180.0000000000000 )
 
 
\begintext
 
   Topocentric frame MATERA_TOPO
 
      The Z axis of this frame points toward the zenith.
      The X axis of this frame points North.
 
      Topocentric frame MATERA_TOPO is centered at the site MATERA
      which has Cartesian coordinates
 
         X (km):                  0.4641938565600E+04
         Y (km):                  0.1393003230500E+04
         Z (km):                  0.4133325703000E+04
 
      and planetodetic coordinates
 
         Longitude (deg):        16.7040189674906
         Latitude  (deg):        40.6495259309520
         Altitude   (km):         0.5437773390544E+00
 
      These planetodetic coordinates are expressed relative to
      a reference spheroid having the dimensions
 
         Equatorial radius (km):  6.3781366000000E+03
         Polar radius      (km):  6.3567519000000E+03
 
      All of the above coordinates are relative to the frame ITRF93.
 
 
\begindata
 
   FRAME_MATERA_TOPO                   =  1399907
   FRAME_1399907_NAME                  =  'MATERA_TOPO'
   FRAME_1399907_CLASS                 =  4
   FRAME_1399907_CLASS_ID              =  1399907
   FRAME_1399907_CENTER                =  399907
 
   OBJECT_399907_FRAME                 =  'MATERA_TOPO'
 
   TKFRAME_1399907_RELATIVE            =  'ITRF93'
   TKFRAME_1399907_SPEC                =  'ANGLES'
   TKFRAME_1399907_UNITS               =  'DEGREES'
   TKFRAME_1399907_AXES                =  ( 3, 2, 3 )
   TKFRAME_1399907_ANGLES              =  (  -16.7040189674906,
                                             -49.3504740690480,
                                             180.0000000000000 )
 
 
\begintext
 
   Topocentric frame NOTO_TOPO
 
      The Z axis of this frame points toward the zenith.
      The X axis of this frame points North.
 
      Topocentric frame NOTO_TOPO is centered at the site NOTO
      which has Cartesian coordinates
 
         X (km):                  0.4934562926500E+04
         Y (km):                  0.1321201458700E+04
         Z (km):                  0.3806484659800E+04
 
      and planetodetic coordinates
 
         Longitude (deg):        14.9890502865387
         Latitude  (deg):        36.8760519058371
         Altitude   (km):         0.1436271658195E+00
 
      These planetodetic coordinates are expressed relative to
      a reference spheroid having the dimensions
 
         Equatorial radius (km):  6.3781366000000E+03
         Polar radius      (km):  6.3567519000000E+03
 
      All of the above coordinates are relative to the frame ITRF93.
 
 
\begindata
 
   FRAME_NOTO_TOPO                     =  1399908
   FRAME_1399908_NAME                  =  'NOTO_TOPO'
   FRAME_1399908_CLASS                 =  4
   FRAME_1399908_CLASS_ID              =  1399908
   FRAME_1399908_CENTER                =  399908
 
   OBJECT_399908_FRAME                 =  'NOTO_TOPO'
 
   TKFRAME_1399908_RELATIVE            =  'ITRF93'
   TKFRAME_1399908_SPEC                =  'ANGLES'
   TKFRAME_1399908_UNITS               =  'DEGREES'
   TKFRAME_1399908_AXES                =  ( 3, 2, 3 )
   TKFRAME_1399908_ANGLES              =  (  -14.9890502865387,
                                             -53.1239480941629,
                                             180.0000000000000 )
 
\begintext
 
 
Definitions file vlbistns_itrf93_120306_8stns.defs
--------------------------------------------------------------------------------
 
 
 
begindata
 
NAIF_BODY_CODE += ( 399901 , 399902 , 399903 , 399904 , 399905 , 399906 , 399907
 
NAIF_BODY_NAME += ( 'METSAHOV' , 'WETTZELL' , 'ONSALA60' , 'ONSALA85' , 'MEDICIN
 
begintext
 
   SPK for VLBI Station Locations
   =====================================================================
 
   Original file name:                   vlbistns_itrf93_111107_8stns.bsp
   Creation date:                        2012 March 06 09:16
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
 
   vlbistns_topo_111107.tf
 
 
 
begindata
 
 
   SITES               = (  'METSAHOV', 'WETTZELL' , 'ONSALA60' , 'ONSALA85' , '
 
 
 
   METSAHOV_CENTER   = 399
   METSAHOV_FRAME    = 'ITRF93'
   METSAHOV_IDCODE   = 399901
   METSAHOV_XYZ      = ( +2892.5849313 , +1311.7155269 , +5512.6401121 )
   METSAHOV_UP       = 'Z'
   METSAHOV_NORTH    = 'X'
 
 
   WETTZELL_CENTER    = 399
   WETTZELL_FRAME     = 'ITRF93'
   WETTZELL_IDCODE    = 399902
   WETTZELL_XYZ       = ( +4075.5397102, +931.7354542, +4801.6294816 )
   WETTZELL_UP        = 'Z'
   WETTZELL_NORTH     = 'X'
 
 
   ONSALA60_CENTER    = 399
   ONSALA60_FRAME     = 'ITRF93'
   ONSALA60_IDCODE    = 399903
   ONSALA60_XYZ       = ( +3370.6058705, +711.9176490 , +5349.8308518 )
   ONSALA60_UP        = 'Z'
   ONSALA60_NORTH     = 'X'
 
 
   ONSALA85_CENTER    = 399
   ONSALA85_FRAME     = 'ITRF93'
   ONSALA85_IDCODE    = 399904
   ONSALA85_XYZ       = ( +3370.9659785 , +711.4661272 , +5349.6641461 )
   ONSALA85_UP        = 'Z'
   ONSALA85_NORTH     = 'X'
 
   MEDICINA_CENTER    = 399
   MEDICINA_FRAME     = 'ITRF93'
   MEDICINA_IDCODE    = 399905
   MEDICINA_XYZ       = ( +4461.3697856 , +919.5970333 , +4449.5593285 )
   MEDICINA_UP        = 'Z'
   MEDICINA_NORTH     = 'X'
 
   YEBES40M_CENTER    = 399
   YEBES40M_FRAME     = 'ITRF93'
   YEBES40M_IDCODE    = 399906
   YEBES40M_XYZ       = ( +4848.7618425 , -261.4842773 , +4123.0849599 )
   YEBES40M_UP        = 'Z'
   YEBES40M_NORTH     = 'X'
 
   MATERA_CENTER      = 399
   MATERA_FRAME       = 'ITRF93'
   MATERA_IDCODE      = 399907
   MATERA_XYZ         = ( +4641.9385656 , +1393.0032305 , +4133.3257030 )
   MATERA_UP          = 'Z'
   MATERA_NORTH       = 'X'
 
   NOTO_CENTER        = 399
   NOTO_FRAME         = 'ITRF93'
   NOTO_IDCODE        = 399908
   NOTO_XYZ           = ( +4934.5629265 , +1321.2014587 , +3806.4846598 )
   NOTO_UP            = 'Z'
   NOTO_NORTH         = 'X'
 
 
 
begintext
 
[End of definitions file]
 
begintext
 
[End of definitions file]
 
 
begintext
 
[End of definitions file]
 
