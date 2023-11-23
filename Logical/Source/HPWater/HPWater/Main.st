
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	EStopHighPre;
	CASE sHighPressState OF
		enWAIT:
			IF iHighPress.Cmd.Start = TRUE THEN
				sHighPressState				:= enSTART;
				iHighPress.IO.doValveHP		:= TRUE;
			END_IF;
		enSTART:
			IF (iHighPress.IO.diSensHP1 = FALSE) AND (iHighPress.IO.diSensHP2 = FALSE) AND (iHighPress.IO.diSensHP3 = FALSE) AND (iHighPress.IO.diSensHP4 = FALSE) THEN
				iHighPress.IO.doRelayHPLow	:= TRUE;
				iHighPress.IO.doRelayHPLift	:= FALSE;
			END_IF;
			IF (iHighPress.IO.diSensHP1 = TRUE) AND (iHighPress.IO.diSensHP2 = FALSE) AND (iHighPress.IO.diSensHP3 = FALSE) AND (iHighPress.IO.diSensHP4 = FALSE) THEN
				iHighPress.IO.doRelayHPLow	:= FALSE;
				iHighPress.IO.doRelayHPLift	:= FALSE;
				iHighPress.IO.doRelayHPPump	:= TRUE;
				sHighPressState				:= enOPERATION;
			END_IF;
			
		enOPERATION:
			IF (iHighPress.IO.diSensHP1 = TRUE) AND (iHighPress.IO.diSensHP2 = FALSE) AND (iHighPress.IO.diSensHP3 = FALSE) AND (iHighPress.IO.diSensHP4 = FALSE) THEN
				iHighPress.IO.doRelayHPLow	:= FALSE;
				iHighPress.IO.doRelayHPLift	:= FALSE;
			END_IF;
			IF (iHighPress.IO.diSensHP1 = TRUE) AND (iHighPress.IO.diSensHP2 = TRUE) AND (iHighPress.IO.diSensHP3 = TRUE) AND (iHighPress.IO.diSensHP4 = FALSE) THEN
				iHighPress.IO.doRelayHPLow	:= FALSE;
				iHighPress.IO.doRelayHPLift	:= TRUE;
			END_IF;
			IF (iHighPress.IO.diSensHP1 = TRUE) AND (iHighPress.IO.diSensHP2 = TRUE) AND (iHighPress.IO.diSensHP3 = FALSE) AND (iHighPress.IO.diSensHP4 = FALSE) THEN
				iHighPress.IO.doRelayHPLow	:= FALSE;
				iHighPress.IO.doRelayHPLift	:= TRUE;
			END_IF;
			IF (iHighPress.IO.diSensHP1 = FALSE) AND (iHighPress.IO.diSensHP2 = FALSE) AND (iHighPress.IO.diSensHP3 = TRUE) AND (iHighPress.IO.diSensHP4 = FALSE) THEN
				iHighPress.IO.doRelayHPLow	:= TRUE;
				iHighPress.IO.doRelayHPLift	:= FALSE;
			END_IF;
			IF (iHighPress.IO.diSensHP1 = FALSE) AND (iHighPress.IO.diSensHP2 = FALSE) AND (iHighPress.IO.diSensHP3 = TRUE) AND (iHighPress.IO.diSensHP4 = TRUE) THEN
				iHighPress.IO.doRelayHPLow	:= FALSE;
				iHighPress.IO.doRelayHPLift	:= FALSE;
			END_IF;
			IF (iHighPress.IO.diSensHP1 = FALSE) AND (iHighPress.IO.diSensHP2 = FALSE) AND (iHighPress.IO.diSensHP3 = FALSE) AND (iHighPress.IO.diSensHP4 = FALSE) THEN
				iHighPress.IO.doRelayHPLow	:= FALSE;
				iHighPress.IO.doRelayHPLift	:= FALSE;
				iHighPress.IO.doRelayHPPump	:= FALSE;
				iHighPress.IO.doValveHP		:= FALSE;
				iHighPress.Cmd.Start		:= FALSE;
				sHighPressState				:= enWAIT;
			END_IF;
			
		enERROR:		
			iHighPress.IO.doRelayHPLow	:= FALSE;
			iHighPress.IO.doRelayHPLift	:= FALSE;
			iHighPress.IO.doRelayHPPump	:= FALSE;
			iHighPress.IO.doValveHP		:= FALSE;
			iHighPress.Cmd.Start		:= FALSE;

			IF iHighPress.Cmd.ErrorReset = TRUE THEN
				iHighPress.Cmd.EStop:=FALSE;
				iHighPress.Status.Error:=FALSE;
				iHighPress.Cmd.ErrorReset:=FALSE;
				sHighPressState:=enWAIT;
			END_IF;
				
		  

	END_CASE;
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

