
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	iChem.Par.ChemLevel:=ScalDirt.y;
	
	//if error then error state
	IF iChem.Status.Error=TRUE THEN
		sChemState:=enERROR;
	END_IF;
	
	CASE sChemState OF
		
		enWAIT:
			iChem.Status.Running:=FALSE;
			IF iChem.Cmd.Start= TRUE THEN
				sChemState:=enSPRAYON;
				iChem.Status.Running:=TRUE;
			END_IF;
			
		enSPRAYON:
			iChem.IO.doChemWaterValve:=TRUE;
			iChem.Status.SprayON:=TRUE ;
			IF iChem.IO.doChemWaterValve=FALSE THEN
				sChemState:=enWAIT;
			END_IF;
				
		enERROR:
			iChem.Status.Running:=FALSE;
			iChem.IO.doChemWaterValve:=FALSE;
			iChem.Status.SprayON:=FALSE ;
			
			IF iChem.Cmd.ErrorReset=TRUE THEN
				sChemState:=enWAIT;
			END_IF;	
		
	END_CASE;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

