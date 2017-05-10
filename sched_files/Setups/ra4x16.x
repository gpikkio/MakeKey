nchan    = 4
bits     = 2
bbfilter = 4.0
freqref  = 8398.59,8398.58,8398.57,8398.56
pol      = RCP
pcal     = off
!format   = mkiv1:2
barrel   = roll_off / 
!--------------------------------------------------------------------------
   firstlo= 8080,8080,8080,8080
   ifchan  =   A,A,A,A
   bbc     =   1,   2,   3,   4
   station  = MEDICINA /
!--------------------------------------------------------------------------
   firstlo= 7650,7650,7650,7650
   ifchan  =   A,A,A,A
   bbc     =   1,   2,   3,   4
   format = MARK5B   station  = YEBES40M /
!--------------------------------------------------------------------------
   firstlo= 8080,8080,8080,8080
   ifchan  =   A1,A1,A1,A1
   bbc     =   1,   2,   3,   4
   format = MARK5B   station  =  ONSALA60 /
!--------------------------------------------------------------------------
   firstlo= 7650,7650,7650,7650
   ifchan  =   A,   A,   A,   A
   bbc     =   1,   2,   3,   4
  format = MARK5B   station  = METSAHOV /
!--------------------------------------------------------------------------
   firstlo=7600,7600,7600,7600
   ifchan='A1','A1','A1','A1'
   bbc = 1,2,3,4
   format   = Mark5B station  = WARK /
!--------------------------------------------------------------------------
   firstlo=7600,7600,7600,7600
   ifchan='A1','A1','A1','A1'
   bbc = 1,2,3,4
   station  = YARRA12M /
!--------------------------------------------------------------------------
   firstlo=7600,7600,7600,7600
   ifchan='A1','A1','A1','A1'
   bbc = 1,2,3,4
   station  = HOBART12 /
!--------------------------------------------------------------------------
   firstlo=7600,7600,7600,7600
   ifchan='A1','A1','A1','A1'
   bbc = 1,2,3,4
   station  = KATH12M /
!--------------------------------------------------------------------------
  firstlo=7680,7680,7680,7680
   ifchan='1N','1N','1N','1N'
   bbc = 1,3,5,7
   station  = KASHIM11 /
!--------------------------------------------------------------------------
  firstlo=8080,8080,8080,8080
   ifchan='1N','1N','1N','1N'
   bbc = 1,3,5,7
   station  = YAMAGU32 /
!--------------------------------------------------------------------------
   firstlo=8080,8080,8080,8080
   ifchan='A','A','A','A'
   bbc=   1,   2,   3,   4
   format   = Mark5B station  = BADARY, SVETLOE, ZELENCHK /
!--------------------------------------------------------------------------
   firstlo=7800,7800,7800,7800
   ifchan='2N','2N','2N','2N'
   bbc= 1,3,5,7
   station=MOPRA /
!--------------------------------------------------------------------------
   firstlo=7800,7800,7800,7800
   ifchan='2N','2N','2N','2N'
   bbc= 1,3,5,7
   station=ATCA /
!--------------------------------------------------------------------------
   firstlo=7800,7800,7800,7800
   ifchan='2N','2N','2N','2N'
   bbc= 1,3,5,7
   station=Hobart /
!--------------------------------------------------------------------------
   firstlo=8080,8080,8080,8080
   ifchan='A1','A1','A1','A1'
   bbc= 1,2,3,4
   station=Hart15m,Hart /
!--------------------------------------------------------------------------
   firstlo= 8100,8100,8100,8100          
   ifchan  =  A,  A,  A,  A                          
   bbc     =  1,  2,  3,  4
  format = MARK5B   station  =  Shanghai,kunming,URUMQI,tianma65 /
!--------------------------------------------------------------------------
   firstlo=0.0
   ifchan='A','A','A','A'
   bbc= 4,4,4,4
   station=KVNUS /
!--------------------------------------------------------------------------
!
   ifchan=''
   firstlo=8080,8080,8080,8080
   m4patch = 'geo1'
   ifchan='3O','3O','3O','3O'
   bbc=   5,   6,   7,   8
   format = mkiv1:4 station  = WETTZELL /
!--------------------------------------------------------------------------
