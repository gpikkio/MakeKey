                                                                              
                                                                              
  VEX SPK Files                                                               
  =============                                                               
                                                                              
  This "aareadme.txt" file describes the contents of the kernels/spk directory
  of the VEX SPICE data server.  It also provides the file naming conventions 
  used for the VEX SPK kernels, and it provides identification of the most    
  current version of each kind of SPK file.                                   
                                                                              
  Some of these SPK files are produced by an automated system located         
  at ESAC, operated by the ESA SPICE Team.                                    
                                                                              
  The contents and time span covered by any SPK file may be easily determined 
  using the "brief" utility program available in all copies of the            
  SPICE Toolkit. Example of usage:                                            
                                                                              
    $ brief  <spk_file_name>                                                  
                                                                              
  Descriptive information about how/why/when an SPK file was created is       
  usually available in the "comment area" of the file. This may be viewed     
  using the "commnt" utility program available in all copies of the           
  SPICE Toolkit. Use the "-r" option to read the comments. Example:           
                                                                              
    $ commnt -r <spk_file_name>                                               
                                                                              
  All binary SPK files (*.BSP) contained in this directory are Unix binary    
  files. These may be used as is (without format conversion) in a non-unix    
  environment when using any recent version of the SPICE Toolkit (Version     
  N0052 or later).                                                            
                                                                              
  Contact                                                                     
                                                                              
	ESA SPICE Team       esa_spice@sciops.esa.int                                
                                                                              
  , or                                                                        
                                                                              
    Jose Luis Vazquez    jlvazquez@sciops.esa.int                             
                                                                              
  if you have any questions.                                                  
                                                                              
                                                                              
                                                                              
                                                                              
  References                                                                  
  ==========                                                                  
                                                                              
                                                                              
    1. Data Delivery Interface Document (DDID)       Appendix H - FD          
       products Issue 3.0 (VEX-ESC-IF-5003)                                   
                                                                              
    2. SPK Required Reading (NAIF Document).                                  
                                                                              
    All the NAIF Documents are available at the NAIF web:                     
                                                                              
      http://naif.jpl.nasa.gov                                                
                                                                              
                                                                              
                                                                              
  Venus Express SPK Directory Structure                                       
  ====================================                                        
                                                                              
                                                                              
    aareadme.txt                    This file.                                
                                                                              
    former_versions                 Subdirectory that contains obsolete       
                                    versions of the SPK files that have been  
                                    updated in the Current SPK Kernels Set.   
                                                                              
    DE405.BSP                       Contains ephemeris data for planet        
                                    barycenters, and for the sun, earth and   
                                    moon mass centers. Spans the entire VEX   
                                    mission.                                  
                                                                              
    EARTHSTNS_FX_yymmdd.BSP         Contains ephemeris data for NASA DSN      
                                    stations relative to the terrestrial      
                                    reference frame ITR93. In the interest of 
                                    flexibility, in this file the reference   
                                    frame is labeled with the alias           
                                    'EARTH_FIXED'. Any application using this 
                                    file must map the alias 'EARTH_FIXED' to  
                                    either 'ITR93' or 'IAU_EARTH'. This file  
                                    was released on yy-mm-dd.                 
                                                                              
    EARTHSTNS_ITRF93_yymmdd.BSP     Contains ephemeris data for NASA DSN      
                                    stations relative to the terrestrial      
                                    reference frame label 'ITR93'. This file  
                                    was released on yy-mm-dd.                 
                                                                              
    NEW_NORCIA.BSP                  Contains ephemeris data for the ESA New   
                                    Norcia station.                           
                                                                              
    ORHV_______________xxxxx.BSP    Contains VEX spacecraft reconstructed     
                                    cruise ephemeris. This ephemeris          
                                    corresponds to the ESOC orbit file named: 
                                                                              
                                      ORHV_FDLMMA_DA______________xxxxx.VEX   
                                                                              
                                    where xxxxx designates the version number.
                                                                              
    ORVF_______________xxxxx.BSP    Contains VEX spacecraft long term planning
                                    operational Venus centric ephemeris. This 
                                    ephemeris corresponds to the ESOC orbit   
                                    file named:                               
                                                                              
                                      ORVF_FDLMMA_DA______________xxxxx.VEX   
                                                                              
                                    where xxxxx designates the version number.
                                    This is the file that should be used for  
                                    planning. For data analysis you have to   
                                    use the ORVV files below.                 
                                                                              
    ORVV__yymmdd000000_xxxxx.BSP    Contains VEX predicted and reconstructed  
                                    ephemeris after orbit insertion, starting 
                                    from 20yy-mm-dd. This ephemeris           
                                    corresponds to the ESOC orbit file named: 
                                                                              
                                      ORVV_FDLMMA_DA_yymmdd000000_xxxxx.VEX   
                                                                              
                                    where xxxxx designates the version number.
                                    These are the files that should be used   
                                    for data analysis.                        
                                                                              
  Note: Files EARTHSTNS_FX_yymmdd.BSP and EARTHSTNS_ITRF93_yymmdd.BSP contain 
  the same data. These files only differ in that the second one use the       
  reference frame label 'ITR93' instead of 'EARTH_FIXED'. 'EARTH_FIXED' alias 
  must be map to either 'ITR93' or 'IAU_EARTH' before using the file. For high
  accuracy work, the EARTHSTNS_ITRF93_yymmdd.BSP is recommended (on the basis 
  of ease of use).                                                            
                                                                              
                                                                              
-------------------                                                           
                                                                              
        This file was last modified on March 17th, 2009. (J. Vazquez)         
