#INCLUDE gxdatain.prg
*
* This procedure renames temporary tables to their original name
* and alters tables structure (only on DBMSs that allow it).
*
* NOTE: If a reorganization fails, for any reason, at this step
* it is mandatory to restore a backup version of the data base
* before executing the reorganization again.
*
IF GXCONNECTED
ENDIF
CLOSE DATA
* Setting initial values
* Dropping removed tables
RETURN
