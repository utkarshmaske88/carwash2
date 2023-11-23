
PROGRAM _INIT
	 
END_PROGRAM

PROGRAM _CYCLIC
	ExitAlarm;
	IF iExit.Status.Error=TRUE THEN
		sExitState:=enERROR;
	END_IF;
	CASE sExitState OF
		
		enWAIT:
			
			IF iExit.Cmd.Start=TRUE  THEN	
				sExitState:=enSTART;
			END_IF;
			
		enSTART:
			iExit.IO.doRelayLiftDoor:=TRUE;
			
			iExit.Status.LiftingDoor:=TRUE;
		
		enOPERATION:
			iExit.IO.doRelayLowerdDoor:=TRUE;
			
			iExit.Status.LowringDoor:=TRUE;
		enERROR:
			
			iExit.IO.doGreenLight	:=FALSE;
			iExit.IO.doOrangeLight	:=FALSE;
			iExit.IO.doRedLight		:=FALSE;
			iExit.IO.doRelayLiftDoor:=FALSE;	
			iExit.Status.LiftingDoor:=FALSE;
			iExit.Status.LowringDoor:=FALSE;
			IF iExit.Cmd.ErrorReset = TRUE THEN
				iExit.Cmd.ErrorReset:=FALSE;
				iExit.Cmd.EStop		:=FALSE;
				iExit.Status.Error	:=FALSE;
				sExitState			:=enWAIT;
			END_IF;
	END_CASE;
END_PROGRAM

PROGRAM _EXIT
	 
				END_PROGRAM

