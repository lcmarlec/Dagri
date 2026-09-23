#INCLUDE gxdatain.prg
DO GX_CSC01
cmdbuf = " DROP TABLE [SLDENVI1] "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  , GX_MASKNOTFOUND ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " {CALL sp_rename('[GXA0284]', 'SLDENVI1')} "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  ,  ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " ALTER TABLE [SLDENVI1] ADD PRIMARY KEY([EmpCod], [BcoCta], [SldEPer], [SldSec], [TraCod]) "
cmdbuf = cmdbuf + "  "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  ,  ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " DROP TABLE [HAUSENTI] "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  , GX_MASKNOTFOUND ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " {CALL sp_rename('[GXA0278]', 'HAUSENTI')} "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  ,  ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " ALTER TABLE [HAUSENTI] ADD PRIMARY KEY([EmpCod], [TraCod], [CAuCod], [hausFch]) "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  ,  ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " DROP TABLE [BLOQAUSE] "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  , GX_MASKNOTFOUND ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " {CALL sp_rename('[GXA0277]', 'BLOQAUSE')} "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  ,  ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " ALTER TABLE [BLOQAUSE] ADD PRIMARY KEY([EmpCod], [TraCod], [CAuCod], [blkTip]) "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  ,  ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " DROP TABLE [HEMPLEA] "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  , GX_MASKNOTFOUND ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " {CALL sp_rename('[GXA0276]', 'HEMPLEA')} "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  ,  ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " ALTER TABLE [HEMPLEA] ADD PRIMARY KEY([EmpCod], [TraCod], [HTraFch]) "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  ,  ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " DROP TABLE [AUSENTIS] "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  , GX_MASKNOTFOUND ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " {CALL sp_rename('[GXA0259]', 'AUSENTIS')} "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  ,  ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " ALTER TABLE [AUSENTIS] ADD PRIMARY KEY([EmpCod], [TraCod], [CAuCod], [AusFch]) "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  ,  ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " DROP TABLE [PENCHE] "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  , GX_MASKNOTFOUND ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " {CALL sp_rename('[GXA0122]', 'PENCHE')} "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  ,  ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " ALTER TABLE [PENCHE] ADD PRIMARY KEY([EmpCod], [tECHNroInt]) "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  ,  ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " DROP TABLE [ENTCHE] "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  , GX_MASKNOTFOUND ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " {CALL sp_rename('[GXA0119]', 'ENTCHE')} "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  ,  ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " ALTER TABLE [ENTCHE] ADD PRIMARY KEY([EmpCod], [ECHNroInt]) "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  ,  ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " DROP TABLE [EMPLEADO] "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  , GX_MASKNOTFOUND ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " {CALL sp_rename('[GXA0052]', 'EMPLEADO')} "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  ,  ,  , CS_SQLSRV ,  )
ENDDO
DO GX_CSC01
cmdbuf = " ALTER TABLE [EMPLEADO] ADD PRIMARY KEY([EmpCod], [TraCod]) "
Gx_eop = 1
DO WHILE Gx_eop != 0
   Gx_Err = Gx_odbc_mrc( GX_DB_ExecImm(HConn_Default, "" ,cmdbuf) ,  ,  ,  , CS_SQLSRV ,  )
ENDDO
RETURN
