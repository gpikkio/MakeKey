  band     = '4CM'
  nchan    = 8   
  bbfilt   = 16.0  
  bits     = 2
  pol      = 'rcp'
  freqref  = 8332
  freqoff  = 0, 16, 32, 48, 64, 80, 96, 112
  netside  = U,  U,  U,  U,  U,  U,  U,   U
  dbe      = 'rdbe_ddc'
  format   = 'VDIF'
  firstlo  = 7600.0 
  ifchan   =    B,      B,      B,      B,      B,      B,      B,      B
  pcal     = 'off'
  barrel   = 'ROLL_OFF'
  station  = VLBA
    /
!
!EVNs
!!!! reset firstlo, bbsyn, ifchan, (sideband), dbe
  firstlo  = -9999.
!  bbsyn    = 0,0,0,0,0,0,0,0
  ifchan   = ' ',' ',' ',' ',' ',' ',' ',' '
!  sideband = ' ',' ',' ',' ',' ',' ',' ',' '
  format   = ' '
  DBE      = ' '
!
  NCHAN    =  8
  BITS     =  2 
  BBFILTER = 16.0
  FREQREF  = 8332
  FREQOFF  = 0, 16, 32, 48, 64, 80, 96, 112
  NETSIDE  = U,  U,  U,  U,  U,  U,  U,   U
  POL      = 'rcp'
  PCAL     = 'off'
  BARREL   = 'ROLL_OFF'
!  station  = WSTRBORK,ONSALA60,MEDICINA,YEBES40M,METSAHOV,SVETLOE,ZELENCHK,BADARY,URUMQI,SHANGHAI,HART 
  /
!--------------------------------------------------------------------------
!!! Patchings for EVN/DBBC stations
!!!
!!! now set up for 8 BBCs of upper-sideband, with DBBC patching info
!!!   in from stations.  Previous 4BBC/dual-sideband case commented out
!!!
   firstlo= 8080,8080,8080,8080,8080,8080,8080,8080
    ifchan  =   A1,A1,A1,A1,B1,B1,B1,B1
    bbc     =   1,   2,   3,   4,   5,   6,   7,   8
!   ifchan  =  A2,  A2,  A2,  A2,  A2,  A2,  A2,  A2
!   bbc     =   1,   1,   2,   2,   3,   3,   4,   4
  format = MARK5B   station  =  ONSALA60 /
!
!!!Mh uses astro2 patching
   firstlo= 8080,8080,8080,8080,8080,8080,8080,8080
   ifchan  =  A1,  A1,  A1,  A1,  A2,  A2,  A2,  A2
   bbc     =   1,   2,   3,   4,   5,   6,   7,   8
!   ifchan  =  A1,  A1,  A1,  A1,  A1,  A1,  A1,  A1
!   bbc     =    1,  1,   2,   2,   3,   3,   4,   4
  format = MARK5B   station  =  METSAHOV /
!
   firstlo= 8080,8080,8080,8080,8080,8080,8080,8080
   ifchan  =  A1,  A1,  A1,  A1,  B2,  B2,  B2,  B2
   bbc     =   1,   2,   3,   4,   5,   6,   7,   8
!   ifchan  =  A1,  A1,  A1,  A1,  A1,  A1,  A1,  A1
!   bbc     =    1,  1,   2,   2,   3,   3,   4,   4
  format = MARK5B   station  =  HART /
!
! KVAZAR info not needed if using sched version >=10.2
!    (or with the freq.sess213rdbe.dat file set to be the Freq catalog)
   firstlo= 8080,8080,8080,8080,8080,8080,8080,8080
   ifchan  =   A,   A,   A,   A,   A,   A,   A,   A
   bbc     =   1,   2,   3,   4,   5,   6,   7,   8
!   bbc     =   1,   1,   2,   2,   3,   3,   4,   4
  format = MARK5B   station  =  ZELENCHK /
!
! Australian
! 
!--------------------------------------------------------------------------
   firstlo=7600,7600,7600,7600,7600,7600,7600,7600
   ifchan=A,A,A,A,B,B,B,B
   bbc = 1,2,3,4,5,6,7,8
   format   = Mark5B station  = WARK /
!--------------------------------------------------------------------------
   firstlo=7600,7600,7600,7600,7600,7600,7600,7600
!   ifchan='1N','1N','1N','1N'
   ifchan=A,A,A,A,B,B,B,B
   bbc = 1,2,3,4,5,6,7,8
   station  = YARRA12M /
!--------------------------------------------------------------------------
   firstlo=7600,7600,7600,7600,7600,7600,7600,7600
!   ifchan='1N','1N','1N','1N','1N','1N','1N','1N'
   ifchan=A,A,A,A,B,B,B,B
   bbc = 1,2,3,4,5,6,7,8
   station  = HOBART12 /
!--------------------------------------------------------------------------
   firstlo=7600,7600,7600,7600,7600,7600,7600,7600
!   ifchan='1N','1N','1N','1N','1N','1N','1N','1N'
   ifchan=A,A,A,A,B,B,B,B
   bbc = 1,2,3,4,5,6,7,8
   station  = KATH12M /
!
! Japanese
!
!--------------------------------------------------------------------------
!  firstlo=7680,7680,7680,7680,7680,7680,7680,7680
!   ifchan='1N','1N','1N','1N','1N','1N','1N','1N'
!   bbc = 1,3,5,7
!   station  = KASHIM11 /
!--------------------------------------------------------------------------
  firstlo=8080,8080,8080,8080,8080,8080,8080,8080
!   ifchan='1N','1N','1N','1N','1N','1N','1N','1N'
!   bbc = 1,3,5,7
   ifchan=A,A,A,A,B,B,B,B
   bbc = 1,2,3,4,5,6,7,8
   station  = YAMAGU32 /
!--------------------------------------------------------------------------
!
! Chinese
!
!--------------------------------------------------------------------------
   firstlo= 8100,8100,8100,8100,8100,8100,8100,8100
   ifchan  =  A,  A,  A,  A,  A,  A,  A,  A  
   bbc     =  1,  2,  3,  4,  5,  6,  7,  8
   format = MARK5B   station  =  Shanghai,kunming,URUMQI,tianma65 /
!--------------------------------------------------------------------------
!--------------------------------------------------------------------------
   firstlo=0.0
   ifchan='A','A','A','A','A','A','A','A'
   bbc= 4,4,4,4,4,4,4,4
   station=KVNUS /
!--------------------------------------------------------------------------
!
   ifchan=''
   firstlo=8080,8080,8080,8080,8080,8080,8080,8080
   m4patch = 'geo1'
   ifchan='3O','3O','3O','3O','2N','2N','2N','2N'
   bbc = 5,6,7,8,11,12,13,14
   station=WETTZELL /
