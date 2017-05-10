PHSRM FK Files
===========================================================================

   This file was last modified on October 12, 2010 by A. Ledkov and
   B. Semenov.


Summary
--------------------------------------------------------

   This "aareadme.txt" file describes the contents of the "kernels/fk"
   directory of the PHSRM SPICE data server. It also provides the file
   naming conventions used for the PHSRM FK kernels, instructions for
   getting additional information about an FK file, and contact
   information for PHSRM FK producers.


Directory Contents
--------------------------------------------------------

   This directory contains the following files and subdirectories:
 
      phsrm_v00.tf                       FK containing the complete set of
                                         frame definitions for the PhSRM 
                                         Spacecraft including definitions
                                         for the PhSRM spacecraft and PhSRM 
                                         science instrument frames.  

      earthstns_phsrm_topo_110118.tf     FK kernel for the topocentric
                                         reference frames for the
                                         Russian Deep Space Network
                                         (RDSN) stations.

      former_versions                    Subdirectory containing obsolete
                                         versions of the FK files and
                                         other files used for creating
                                         FK.

      aareadme.txt                       This file.

      aareadme_ru.txt              i     This file in Russian.


File Naming Conventions
--------------------------------------------------------
 
   The PHSRM spacecraft frames FK provided in this directory are
   named as follows

      phsrm[_vNN].tf

   where 

      _vNN is the optional version (e.g _v00, _v01)


   The Russian Deep Space Network (RDSN) frames FK provided in this
   directory are named as follows

      earthstns_phsrm_itrf93_YYMMDD.tf

   where 

      YYMMDD is the release date.


Contact Information
--------------------------------------------------------

   If you have any questions about PHSRM FK files, contact

      A. Ledkov / IKI              aledkov@iki.rssi.ru
      A. Yanin  / NPO Lavochkina   yanin@laspace.ru
      A. Tuchin / IPM              tag@kiam1.rssi.ru


End of aareadme.txt
