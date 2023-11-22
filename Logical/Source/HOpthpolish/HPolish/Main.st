 
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)

	CASE sHPolishState OF
		enWAIT:
			IF iHPolish.Cmd.Start = TRUE THEN
				sHPolishState				:= enSTART;
			END_IF;
		enSTART:
			IF (iHPolish.IO.diSensHPolish1 = FALSE) AND (iHPolish.IO.diSensHPolish2 = FALSE) AND (iHPolish.IO.diSensHPolish3 = FALSE) AND (iHPolish.IO.diSensHPolish4 = FALSE) THEN
				iHPolish.IO.doRelayLower	:= TRUE;
				iHPolish.IO.doRelayLift		:= FALSE;
			END_IF;
			IF (iHPolish.IO.diSensHPolish1 = TRUE) AND (iHPolish.IO.diSensHPolish2 = FALSE) AND (iHPolish.IO.diSensHPolish3 = FALSE) AND (iHPolish.IO.diSensHPolish4 = FALSE) THEN
				iHPolish.IO.doRelayLower	:= FALSE;
				iHPolish.IO.doRelayLift		:= FALSE;
				iHPolish.IO.doRelayBrush	:= TRUE;
				sHPolishState				:= enOPERATION;
			END_IF;
		enOPERATION:
			IF (iHPolish.IO.diSensHPolish1 = TRUE) AND (iHPolish.IO.diSensHPolish2 = FALSE) AND (iHPolish.IO.diSensHPolish3 = FALSE) AND (iHPolish.IO.diSensHPolish4 = FALSE) THEN
				iHPolish.IO.doRelayLower	:= FALSE;
				iHPolish.IO.doRelayLift	:= FALSE;
			END_IF;
			IF (iHPolish.IO.diSensHPolish1 = TRUE) AND (iHPolish.IO.diSensHPolish2 = TRUE) AND (iHPolish.IO.diSensHPolish3 = TRUE) AND (iHPolish.IO.diSensHPolish4 = FALSE) THEN
				iHPolish.IO.doRelayLower	:= FALSE;
				iHPolish.IO.doRelayLift	:= TRUE;
			END_IF;
			IF (iHPolish.IO.diSensHPolish1 = TRUE) AND (iHPolish.IO.diSensHPolish2 = TRUE) AND (iHPolish.IO.diSensHPolish3 = FALSE) AND (iHPolish.IO.diSensHPolish4 = FALSE) THEN
				iHPolish.IO.doRelayLower	:= FALSE;
				iHPolish.IO.doRelayLift	:= TRUE;
			END_IF;
			IF (iHPolish.IO.diSensHPolish1 = FALSE) AND (iHPolish.IO.diSensHPolish2 = FALSE) AND (iHPolish.IO.diSensHPolish3 = TRUE) AND (iHPolish.IO.diSensHPolish4 = FALSE) THEN
				iHPolish.IO.doRelayLower	:= TRUE;
				iHPolish.IO.doRelayLift	:= FALSE;
			END_IF;
			IF (iHPolish.IO.diSensHPolish1 = FALSE) AND (iHPolish.IO.diSensHPolish2 = FALSE) AND (iHPolish.IO.diSensHPolish3 = TRUE) AND (iHPolish.IO.diSensHPolish4 = TRUE) THEN
				iHPolish.IO.doRelayLower	:= FALSE;
				iHPolish.IO.doRelayLift	:= FALSE;
			END_IF;
			IF (iHPolish.IO.diSensHPolish1 = FALSE) AND (iHPolish.IO.diSensHPolish2 = FALSE) AND (iHPolish.IO.diSensHPolish3 = FALSE) AND (iHPolish.IO.diSensHPolish4 = FALSE) THEN
				iHPolish.IO.doRelayLower	:= FALSE;
				iHPolish.IO.doRelayLift	:= FALSE;
				iHPolish.IO.doRelayBrush	:= FALSE;
				iHPolish.Cmd.Start			:= FALSE;
				sHPolishState				:= enWAIT;
			END_IF;
	END_CASE;
END_PROGRAM
   
PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

