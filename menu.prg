SET SYSMENU OFF
ON SHUTDOWN DO GXDestroyAll IN gx_vmenu
SET CLASSLIB TO GXOCX.VCX
SET PROCEDURE TO gxform.prg ADDITIVE
SET PROCEDURE TO GXINCVFP ADDITIVE
DO GXINCVFP
SET PROCEDURE TO gxdatapr ADDITIVE
DO gxdatadc
SET EXCLUSIVE OFF
SET TALK OFF
SET STATUS BAR OFF
gx_global_date ="BRITISH"
Response   = .F.
Gx_dvc     = 'SCR'
Gx_mdlnum  = 1
Gx_mdlwrk  = 3
Gx_mdlname = 'Nombre del modelo'
Gx_mdldate = 'Fecha creacion'
GX_MsgL = 'spa'
* -------- Client Server Initialization --- Start
RELEASE GXCONNECTED
PUBLIC  GXCONNECTED
Gx_err = 0 && Reset errors
* -------- Client Server Initialization --- End
PUBLIC GX_mnu_fil
GX_mnu_fil = "MGXMAIN"
GX_mnu_tit = "DagriNvo"
PRIVATE GX_curr_main
GX_curr_main = SYS(16)
SET READBORDER OFF
IF SET("POINT") != "."
   SET POINT TO "."
   SET SEPARATOR TO ","
ENDIF
PRIVATE dropdead, tobedone, menu
PRIVATE isWindows, GX_redefactive, GX_prnt_w, GX_usr_name, GXm_bh, GXm_blen, GXs_blen, GXExitInt
PRIVATE UserCancel, CancelAll, QuitApp, GXStatBar
PRIVATE gx_nSOAPErr, gx_sSOAPErrMsg, gx_colLocations, gx_nLocRead
gx_nSOAPErr = 0
gx_sSOAPErrMsg = ""
gx_colLocations = 0
gx_nLocRead = 0
UserCancel = .f.
GXExitInt = .F.
GXStatBar = .T.
* Save old values
oldfont = WFONT(1,wtitle('screen'))
oldsize = WFONT(2,wtitle('screen'))
oldstyle = WFONT(3,wtitle('screen'))
oldtitle = WTITLE('screen')
PUSH MENU _MSYSMENU
* Initialize menu manager
menu = SET("SYSMENU")
GX_prnt_w = ""
* Setup fonts
GX_font = "MS Sans serif"
GX_font2 = "MS Sans Serif"
IF SYSMETRIC(1) > 1000    &&& High resolution
   GX_sfont = 13
   GXs_blen = 1.8 
ELSE   
   IF SYSMETRIC(1) > 700  &&& Super VGA
      GX_sfont = 11
      GXs_blen = 1.8 
   ELSE                   &&& VGA
      GX_sfont = 8     
      GXs_blen = 2 
   ENDIF   
ENDIF
MODIFY WINDOW SCREEN TITLE GX_mnu_tit  FONT GX_font, GX_sfont
* Load positions (confirm, msg, ...  )
PRIVATE GX_mcoorx, GX_mcoory, GX_ccoorx, GX_ccoory, GX_ecoorx, GX_ecoory, GX_rcoorx, GX_rcoory 
GX_ccoorx = SCOLS() / 2 - 15
GX_ccoory = SROWS() / 2 - 3 
GX_ecoorx = SCOLS() / 2 - 15
GX_ecoory = SROWS() / 2 - 3 
GX_rcoorx = SCOLS() / 2 - 15
GX_rcoory = SROWS() / 2 - 3 
IF FILE("GX_posky.DAT")
   RESTORE FROM GX_posky.DAT ADDITIVE
ENDIF   
* Pixel conversion
GXsX = FONTMETRIC(6,GX_font,GX_sfont)
GXsY = FONTMETRIC(1,GX_font,GX_sfont)
ON ERROR DO GX_ERRW WITH ERROR(), MESSAGE()
IF FILE("APPHLP.CHM")
   SET HELP TO APPHLP.CHM
ENDIF
PRIVATE GXReadEvents
GXReadEvents = .F.
DO GX_ldmnu WITH GX_mnu_fil IN GX_ldmnu
DO GX_vmenu WITH GX_mnu_fil, GX_mnu_fil
* -------- Client Server De-Initialization --- Start
DO GX_CSEND
* -------- Client Server De-Initialization --- End
