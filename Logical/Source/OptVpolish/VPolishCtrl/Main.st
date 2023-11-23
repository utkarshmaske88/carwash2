
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	VPolAlarm;
	IF iVPolish.Status.Error=TRUE THEN
		sVPolishState :=enERROR;
	END_IF;
	
	CASE sVPolishState OF
		
		enWAIT:
			
			IF iVPolish.Cmd.Start=TRUE THEN
				sVPolishState:=enSTART;
			END_IF;
				
		enSTART:
			iVPolish.IO.doRelayRClose 		:=TRUE;
			iVPolish.IO.doRelayLClose		:=TRUE;
			IF (iVPolish.IO.aiVPLForceF > 70.0) AND (iVPolish.IO.aiVPRForceF  > 70.0) THEN
				iVPolish.IO.doRelayRClose	:=FALSE;
				iVPolish.IO.doRelayLClose	:=FALSE;
				sVPolishState:=enOPEN;
			END_IF;
			
		enOPEN:
			iVPolish.IO.doRelayLOpen :=TRUE;
			iVPolish.IO.doRelayROpen :=TRUE;
			IF (iVPolish.IO.aiVPLForceF <= 5.0) AND (iVPolish.IO.aiVPRForceF <= 5.0 ) THEN
				iVPolish.IO.doRelayLClose :=FALSE;
				iVPolish.IO.doRelayRClose :=FALSE;
				sVPolishState:=enCLOSE;
			END_IF;
			//	(iVPolish.IO.aiVBLForceS >120 AND iVPolish.IO.aiVBRForceS >120)
			
		enCLOSE:
			iVPolish.IO.doRelayRClose:=TRUE;
			iVPolish.IO.doRelayLClose:=TRUE;
			
			IF (iVPolish.IO.aiVPLForceS > 120) AND (iVPolish.IO.aiVPRForceS > 120) THEN 
				sVPolishState:=enOPERATION;
			END_IF;
			
		enOPERATION:	
			iVPolish.IO.doRelayRClose:=FALSE;
			iVPolish.IO.doRelayLClose:=FALSE;			
			IF (iVPolish.IO.aiVPLForceS =0 AND iVPolish.IO.aiVPRForceS =0) THEN
				sVPolishState:=enSTART;
			END_IF;
			
			
		enERROR:
			iVPolish.IO.doRelayLClose:=FALSE;
			iVPolish.IO.doRelayRClose:=FALSE;
			iVPolish.IO.doRelayRClose:=FALSE;
			iVPolish.IO.doRelayLClose:=FALSE;
			
			IF iVPolish.Cmd.ErrorReset=TRUE THEN
				iVPolish.Status.Error:=FALSE;
				iVPolish.Cmd.EStop	 :=FALSE;
				iVPolish.Cmd.ErrorReset:=FALSE;
				sVPolishState:=enSTART;	
			END_IF;
		
	END_CASE;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

