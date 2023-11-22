
PROGRAM _INIT
	(* Insert code here *)

		  
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	IF iDry.Status.Error=TRUE THEN
		sDryState:=enERROR;
		sDryState2:=enERROR;
	END_IF;
	
	CASE sDryState OF

		enWAIT:
			IF iDry.Cmd.Start = TRUE THEN
				sDryState		:= enSTART;
			END_IF;
			
		enSTART:
			IF (iDry.IO.diSens2Dry1 = FALSE) AND (iDry.IO.diSens2Dry2 = FALSE) AND (iDry.IO.diSens2Dry3 = FALSE) AND (iDry.IO.diSens2Dry4 = FALSE) THEN
				iDry.IO.doRelayHD1Lower	:= TRUE;
				iDry.IO.doRelayHD1Lift	:= FALSE;
				iDry.IO.doRelayVDHeater	:=TRUE;
				iDry.IO.doRelayVDVent	:=TRUE;
				iDry.IO.doRelayHD1Vent	:= TRUE;
				iDry.IO.doRelayHD1Heater:= TRUE;
			END_IF;
			IF (iDry.IO.diSens2Dry1 = TRUE) AND (iDry.IO.diSens2Dry2 = FALSE) AND (iDry.IO.diSens2Dry3 = FALSE) AND (iDry.IO.diSens2Dry4 = FALSE) THEN
				iDry.IO.doRelayHD1Lower		:= FALSE;
				iDry.IO.doRelayHD1Lift		:= FALSE;
				sDryState					:= enOPERATION;
			END_IF;
		enOPERATION:
			IF (iDry.IO.diSens2Dry1 = TRUE) AND (iDry.IO.diSens2Dry2 = FALSE) AND (iDry.IO.diSens2Dry3 = FALSE) AND (iDry.IO.diSens2Dry4 = FALSE) THEN
				iDry.IO.doRelayHD1Lower	:= FALSE;
				iDry.IO.doRelayHD1Lift	:= FALSE;
			END_IF;
			IF (iDry.IO.diSens2Dry1 = TRUE) AND (iDry.IO.diSens2Dry2 = TRUE) AND (iDry.IO.diSens2Dry3 = TRUE) AND (iDry.IO.diSens2Dry4 = FALSE) THEN
				iDry.IO.doRelayHD1Lower	:= FALSE;
				iDry.IO.doRelayHD1Lift	:= TRUE;
			END_IF;
			IF (iDry.IO.diSens2Dry1 = TRUE) AND (iDry.IO.diSens2Dry2 = TRUE) AND (iDry.IO.diSens2Dry3 = FALSE) AND (iDry.IO.diSens2Dry4 = FALSE) THEN
				iDry.IO.doRelayHD1Lower	:= FALSE;
				iDry.IO.doRelayHD1Lift	:= TRUE;
			END_IF;
			IF (iDry.IO.diSens2Dry1 = FALSE) AND (iDry.IO.diSens2Dry2 = FALSE) AND (iDry.IO.diSens2Dry3 = TRUE) AND (iDry.IO.diSens2Dry4 = FALSE) THEN
				iDry.IO.doRelayHD1Lower	:= TRUE;
				iDry.IO.doRelayHD1Lift	:= FALSE;
			END_IF;
			IF (iDry.IO.diSens2Dry1 = FALSE) AND (iDry.IO.diSens2Dry2 = FALSE) AND (iDry.IO.diSens2Dry3 = TRUE) AND (iDry.IO.diSens2Dry4 = TRUE) THEN
				iDry.IO.doRelayHD1Lower	:= FALSE;
				iDry.IO.doRelayHD1Lift	:= FALSE;
			END_IF;
			IF (iDry.IO.diSens2Dry1 = FALSE) AND (iDry.IO.diSens2Dry2 = FALSE) AND (iDry.IO.diSens2Dry3 = FALSE) AND (iDry.IO.diSens2Dry4 = FALSE) THEN
				iDry.IO.doRelayHD1Lower	:= FALSE;
				iDry.IO.doRelayHD1Lift	:= FALSE;
				iDry.IO.doRelayHD1Vent	:= FALSE;
				iDry.IO.doRelayHD1Heater:= FALSE;
				iDry.IO.doRelayHD1Vent	:= FALSE;
				iDry.IO.doRelayHD1Heater:= FALSE;
				iDry.Cmd.Start		:= FALSE;
				sDryState				:= enWAIT;
			END_IF;
		
		enERROR:
			iDry.IO.doRelayHD1Lower	:= FALSE;
			iDry.IO.doRelayHD1Lift	:= FALSE;
			iDry.IO.doRelayHD1Vent	:= FALSE;
			iDry.IO.doRelayHD1Heater:= FALSE;
			iDry.IO.doRelayHD1Vent	:= FALSE;
			iDry.IO.doRelayHD1Heater:= FALSE;
			iDry.Cmd.Start		:= FALSE;
			IF iDry.Cmd.ErrorReset=TRUE THEN
				sDryState:=enWAIT;
			END_IF;
	END_CASE;
	
	CASE sDryState2 OF

		enWAIT:
			IF iDry.Cmd.Start = TRUE THEN
				sDryState		:= enSTART;
			END_IF;
			
		enSTART:
			IF (iDry.IO.diSens2Dry1 = FALSE) AND (iDry.IO.diSens2Dry2 = FALSE) AND (iDry.IO.diSens2Dry3 = FALSE) AND (iDry.IO.diSens2Dry4 = FALSE) THEN
				iDry.IO.doRelayHD2Lower	:= TRUE;
				iDry.IO.doRelayHD2Lift	:= FALSE;
				iDry.IO.doRelayHD2Vent	:= TRUE;
				iDry.IO.doRelayHD2Heater:= TRUE;
			END_IF;
			IF (iDry.IO.diSens2Dry1 = TRUE) AND (iDry.IO.diSens2Dry2 = FALSE) AND (iDry.IO.diSens2Dry3 = FALSE) AND (iDry.IO.diSens2Dry4 = FALSE) THEN
				iDry.IO.doRelayHD2Lower		:= FALSE;
				iDry.IO.doRelayHD2Lift		:= FALSE;
				sDryState2					:= enOPERATION;
			END_IF;
		enOPERATION:
			IF (iDry.IO.diSens2Dry1 = TRUE) AND (iDry.IO.diSens2Dry2 = FALSE) AND (iDry.IO.diSens2Dry3 = FALSE) AND (iDry.IO.diSens2Dry4 = FALSE) THEN
				iDry.IO.doRelayHD2Lower	:= FALSE;
				iDry.IO.doRelayHD2Lift	:= FALSE;
			END_IF;
			IF (iDry.IO.diSens2Dry1 = TRUE) AND (iDry.IO.diSens2Dry2 = TRUE) AND (iDry.IO.diSens2Dry3 = TRUE) AND (iDry.IO.diSens2Dry4 = FALSE) THEN
				iDry.IO.doRelayHD2Lower	:= FALSE;
				iDry.IO.doRelayHD2Lift	:= TRUE;
			END_IF;
			IF (iDry.IO.diSens2Dry1 = TRUE) AND (iDry.IO.diSens2Dry2 = TRUE) AND (iDry.IO.diSens2Dry3 = FALSE) AND (iDry.IO.diSens2Dry4 = FALSE) THEN
				iDry.IO.doRelayHD2Lower	:= FALSE;
				iDry.IO.doRelayHD2Lift	:= TRUE;
			END_IF;
			IF (iDry.IO.diSens2Dry1 = FALSE) AND (iDry.IO.diSens2Dry2 = FALSE) AND (iDry.IO.diSens2Dry3 = TRUE) AND (iDry.IO.diSens2Dry4 = FALSE) THEN
				iDry.IO.doRelayHD2Lower	:= TRUE;
				iDry.IO.doRelayHD2Lift	:= FALSE;
			END_IF;
			IF (iDry.IO.diSens2Dry1 = FALSE) AND (iDry.IO.diSens2Dry2 = FALSE) AND (iDry.IO.diSens2Dry3 = TRUE) AND (iDry.IO.diSens2Dry4 = TRUE) THEN
				iDry.IO.doRelayHD2Lower	:= FALSE;
				iDry.IO.doRelayHD2Lift	:= FALSE;
			END_IF;
			IF (iDry.IO.diSens2Dry1 = FALSE) AND (iDry.IO.diSens2Dry2 = FALSE) AND (iDry.IO.diSens2Dry3 = FALSE) AND (iDry.IO.diSens2Dry4 = FALSE) THEN
				iDry.IO.doRelayHD2Lower	:= FALSE;
				iDry.IO.doRelayHD2Lift	:= FALSE;
				iDry.IO.doRelayVDHeater	:=FALSE;
				iDry.IO.doRelayVDVent	:=FALSE;
				iDry.Cmd.Start		:= FALSE;
				sDryState2				:= enWAIT;
			END_IF;
		
		enERROR:
			iDry.IO.doRelayHD2Lower	:= FALSE;
			iDry.IO.doRelayHD2Lift	:= FALSE;
			iDry.IO.doRelayVDHeater	:=FALSE;
			iDry.IO.doRelayVDVent	:=FALSE;
			iDry.Cmd.Start		:= FALSE;
			IF iDry.Cmd.ErrorReset=TRUE THEN
				sDryState:=enWAIT;
			END_IF;

	END_CASE;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

