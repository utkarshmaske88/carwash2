
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	IF iUBody.Status.Error=TRUE THEN
		iUBodyState:=enERROR;
	END_IF;
	
	CASE iUBodyState OF
		
		enWAIT:
			iUBody.IO.doRelayPump:=FALSE;
			iUBody.IO.doValveUB:=FALSE;
			iUBody.Status.ValveOpen:=FALSE;
			iUBody.Status.PumpOpen:=FALSE;
			IF iUBody.Cmd.Start=TRUE THEN
				iUBodyState:=enUBODYON;
			END_IF;
			
		enUBODYON:
			iUBody.IO.doRelayPump:=TRUE;
			iUBody.IO.doValveUB:=TRUE;
			iUBody.Status.ValveOpen:=TRUE;
			iUBody.Status.PumpOpen:=TRUE;
			
			IF iUBody.IO.doValveUB = FALSE THEN
				iUBodyState:=enWAIT;
			END_IF;
		enERROR:
			iUBody.IO.doRelayPump:=FALSE;
			iUBody.IO.doValveUB:=FALSE;
			iUBody.Status.ValveOpen:=FALSE;
			iUBody.Status.PumpOpen:=FALSE;
			IF iUBody.Cmd.ErrorReset = TRUE THEN
				iUBodyState:=enWAIT;
			END_IF;
	END_CASE;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

