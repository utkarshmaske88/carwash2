
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	IF iWax.Status.Error=TRUE THEN
		iWaxState:=enERROR;
	END_IF;
	CASE iWaxState OF
		
		enWAIT:
			
			iWax.IO.doRealyWaxPump:=FALSE;
			iWax.IO.doValveWax:=FALSE;
			iWax.Status.PumpOn:=FALSE;
			iWax.Status.ValveOpen:=FALSE;
			iWax.Status.Running:=FALSE;
			
			IF iWax.Cmd.Start=TRUE THEN
				iWaxState:=enWAXON;
				iWax.Status.Running:=TRUE;
			END_IF;
			
		enWAXON:
			iWax.IO.doRealyWaxPump:=TRUE;
			iWax.IO.doValveWax:=TRUE;
			iWax.Status.PumpOn:=TRUE;
			iWax.Status.ValveOpen:=TRUE;
			
			IF iWax.IO.doRealyWaxPump=FALSE THEN
				iWaxState:=enWAIT;
			END_IF;
				
		enERROR:
			iWax.IO.doRealyWaxPump:=FALSE;
			iWax.IO.doValveWax:=FALSE;
			iWax.Status.PumpOn:=FALSE;
			iWax.Status.ValveOpen:=FALSE;
			iWax.Status.Running:=FALSE;
			IF iWax.Cmd.ErrorReset = TRUE THEN
				iWaxState:=enWAIT;
			END_IF;
		
	END_CASE;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

