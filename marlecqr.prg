parameter lcMiTexto, lcMiArchivoImagen

LOCAL  loQR, lcQR_Imagen
  

  
  SET PROCEDURE TO FOXBARCODEQR ADDITIVE
  
  loQR = CreateObject("FoxBarCodeQR")
  
  lcString64 = SPACE(990) 
  
  lcString64 = STRCONV(lcMiTexto, 13, 1033)
  
  lcQR = SPACE(990) 

  lcQR = [https://www.afip.gob.ar/fe/qr/?p=] + lcString64
  

  lcQR_Imagen = loQR.FullQRCodeImage(lcQR , lcMiArchivoImagen, 6, 1)
  
  SET PROCEDURE TO
  
  loQR = .NULL.
  
  RELEASE loQR
  
RETURN
*
*
  