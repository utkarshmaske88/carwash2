
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	CASE sHBrushState OF
		enWAIT:
			IF iHBrush.Cmd.Start = TRUE THEN
				sHBrushState				:= enSTART;
			END_IF;
		enSTART:
			IF (iHBrush.IO.diSensHB1 = FALSE) AND (iHBrush.IO.diSensHB2 = FALSE) AND (iHBrush.IO.diSensHB3 = FALSE) AND (iHBrush.IO.diSensHB4 = FALSE) THEN
				iHBrush.IO.doRelayHBLower	:= TRUE;
				iHBrush.IO.doRelayHBLift	:= FALSE;
			END_IF;
			IF (iHBrush.IO.diSensHB1 = TRUE) AND (iHBrush.IO.diSensHB2 = FALSE) AND (iHBrush.IO.diSensHB3 = FALSE) AND (iHBrush.IO.diSensHB4 = FALSE) THEN
				iHBrush.IO.doRelayHBLower	:= FALSE;
				iHBrush.IO.doRelayHBLift	:= FALSE;
				iHBrush.IO.doRelayHBBrush	:= TRUE;
				iHBrush.IO.doValveHB		:= TRUE;
				sHBrushState				:= enOPERATION;
			END_IF;
		enOPERATION:
			IF (iHBrush.IO.diSensHB1 = TRUE) AND (iHBrush.IO.diSensHB2 = FALSE) AND (iHBrush.IO.diSensHB3 = FALSE) AND (iHBrush.IO.diSensHB4 = FALSE) THEN
				iHBrush.IO.doRelayHBLower	:= FALSE;
				iHBrush.IO.doRelayHBLift	:= FALSE;
			END_IF;
			IF (iHBrush.IO.diSensHB1 = TRUE) AND (iHBrush.IO.diSensHB2 = TRUE) AND (iHBrush.IO.diSensHB3 = TRUE) AND (iHBrush.IO.diSensHB4 = FALSE) THEN
				iHBrush.IO.doRelayHBLower	:= FALSE;
				iHBrush.IO.doRelayHBLift	:= TRUE;
			END_IF;
			IF (iHBrush.IO.diSensHB1 = TRUE) AND (iHBrush.IO.diSensHB2 = TRUE) AND (iHBrush.IO.diSensHB3 = FALSE) AND (iHBrush.IO.diSensHB4 = FALSE) THEN
				iHBrush.IO.doRelayHBLower	:= FALSE;
				iHBrush.IO.doRelayHBLift	:= TRUE;
			END_IF;
			IF (iHBrush.IO.diSensHB1 = FALSE) AND (iHBrush.IO.diSensHB2 = FALSE) AND (iHBrush.IO.diSensHB3 = TRUE) AND (iHBrush.IO.diSensHB4 = FALSE) THEN
				iHBrush.IO.doRelayHBLower	:= TRUE;
				iHBrush.IO.doRelayHBLift	:= FALSE;
			END_IF;
			IF (iHBrush.IO.diSensHB1 = FALSE) AND (iHBrush.IO.diSensHB2 = FALSE) AND (iHBrush.IO.diSensHB3 = TRUE) AND (iHBrush.IO.diSensHB4 = TRUE) THEN
				iHBrush.IO.doRelayHBLower	:= FALSE;
				iHBrush.IO.doRelayHBLift	:= FALSE;
			END_IF;
			IF (iHBrush.IO.diSensHB1 = FALSE) AND (iHBrush.IO.diSensHB2 = FALSE) AND (iHBrush.IO.diSensHB3 = FALSE) AND (iHBrush.IO.diSensHB4 = FALSE) THEN
				iHBrush.IO.doRelayHBLower	:= FALSE;
				iHBrush.IO.doRelayHBLift	:= FALSE;
				iHBrush.IO.doRelayHBBrush	:= FALSE;
				iHBrush.IO.doValveHB		:= FALSE;
				iHBrush.Cmd.Start			:= FALSE;
				sHBrushState				:= enWAIT;
			END_IF;

	END_CASE;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

