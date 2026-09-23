PROCEDURE getLocation
   PARAMETERS sLocation
   IF 0=1
      gx_nSOAPErr = -30000
      gx_sSOAPErrMsg = "soapparm.prg not generated."
   ELSE
      gx_nSOAPErr = 0
      gx_sSOAPErrMsg = "No error."
   ENDIF
RETURN oLocation

