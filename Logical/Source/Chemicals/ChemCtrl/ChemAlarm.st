 
ACTION ChemAlarm: 
	IF iChem.Cmd.EStop=TRUE THEN
		MpAlarmXSet(gAlarmXCore,'EStopChem');		
		IF MpAlarmXCheckReaction(gAlarmXCore, 'EStopErr') THEN
			iChem.Status.Error:= TRUE ;
		END_IF
	ELSE
		MpAlarmXReset(gAlarmXCore,'EStopChem');
	END_IF;
	
	IF iChem.Par.ChemLevel	<0.1 THEN
		MpAlarmXSet(gAlarmXCore,'ChemLow');	
		iChem.Status.Error	:=TRUE ;	
	ELSE
		MpAlarmXReset(gAlarmXCore,'ChemLow');	
		iChem.Cmd.ChemRefill:= FALSE ;
	END_IF;
	IF iChem.Cmd.ChemRefill	=TRUE THEN
		iChem.Status.Error	:=TRUE ;	
		iChem.Cmd.ErrorReset:=TRUE;
		iChem.Cmd.ChemRefill:=FALSE;
	END_IF;
	
END_ACTION



