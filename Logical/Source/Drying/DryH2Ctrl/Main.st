
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
		
	CASE sDryState2 OF

		enWAIT:
			IF iDry2.Cmd.Start = TRUE THEN
				sDryState2		:= enSTART;
			END_IF;
			
		enSTART:
			IF (iDry2.IO.diSens2Dry1 = FALSE) AND (iDry2.IO.diSens2Dry2 = FALSE) AND (iDry2.IO.diSens2Dry3 = FALSE) AND (iDry2.IO.diSens2Dry4 = FALSE) THEN
				iDry2.IO.doRelayHD2Lower	:= TRUE;
				iDry2.IO.doRelayHD2Lift	:= FALSE;
				iDry2.IO.doRelayHD2Vent	:= TRUE;
				iDry2.IO.doRelayHD2Heater:= TRUE;
			END_IF;
			IF (iDry2.IO.diSens2Dry1 = TRUE) AND (iDry2.IO.diSens2Dry2 = FALSE) AND (iDry2.IO.diSens2Dry3 = FALSE) AND (iDry2.IO.diSens2Dry4 = FALSE) THEN
				iDry2.IO.doRelayHD2Lower	:= FALSE;
				iDry2.IO.doRelayHD2Lift		:= FALSE;
				sDryState2					:= enOPERATION;
			END_IF;
		enOPERATION:
			IF (iDry2.IO.diSens2Dry1 = TRUE) AND (iDry2.IO.diSens2Dry2 = FALSE) AND (iDry2.IO.diSens2Dry3 = FALSE) AND (iDry2.IO.diSens2Dry4 = FALSE) THEN
				iDry2.IO.doRelayHD2Lower	:= FALSE;
				iDry2.IO.doRelayHD2Lift	:= FALSE;
			END_IF;
			IF (iDry2.IO.diSens2Dry1 = TRUE) AND (iDry2.IO.diSens2Dry2 = TRUE) AND (iDry2.IO.diSens2Dry3 = TRUE) AND (iDry2.IO.diSens2Dry4 = FALSE) THEN
				iDry2.IO.doRelayHD2Lower	:= FALSE;
				iDry2.IO.doRelayHD2Lift	:= TRUE;
			END_IF;
			IF (iDry2.IO.diSens2Dry1 = TRUE) AND (iDry2.IO.diSens2Dry2 = TRUE) AND (iDry2.IO.diSens2Dry3 = FALSE) AND (iDry2.IO.diSens2Dry4 = FALSE) THEN
				iDry2.IO.doRelayHD2Lower	:= FALSE;
				iDry2.IO.doRelayHD2Lift	:= TRUE;
			END_IF;
			IF (iDry2.IO.diSens2Dry1 = FALSE) AND (iDry2.IO.diSens2Dry2 = FALSE) AND (iDry2.IO.diSens2Dry3 = TRUE) AND (iDry2.IO.diSens2Dry4 = FALSE) THEN
				iDry2.IO.doRelayHD2Lower	:= TRUE;
				iDry2.IO.doRelayHD2Lift	:= FALSE;
			END_IF;
			IF (iDry2.IO.diSens2Dry1 = FALSE) AND (iDry2.IO.diSens2Dry2 = FALSE) AND (iDry2.IO.diSens2Dry3 = TRUE) AND (iDry2.IO.diSens2Dry4 = TRUE) THEN
				iDry2.IO.doRelayHD2Lower	:= FALSE;
				iDry2.IO.doRelayHD2Lift	:= FALSE;
			END_IF;
			IF (iDry2.IO.diSens2Dry1 = FALSE) AND (iDry2.IO.diSens2Dry2 = FALSE) AND (iDry2.IO.diSens2Dry3 = FALSE) AND (iDry2.IO.diSens2Dry4 = FALSE) THEN
				iDry2.IO.doRelayHD2Lower	:= FALSE;
				iDry2.IO.doRelayHD2Lift	:= FALSE;
				iDry2.IO.doRelayVDHeater	:=FALSE;
				iDry2.IO.doRelayVDVent	:=FALSE;
//				iDry2.Cmd.Start		:= FALSE;
//				sDryState2				:= enWAIT;
			END_IF;
		
		enERROR:
			iDry2.IO.doRelayHD2Lower	:= FALSE;
			iDry2.IO.doRelayHD2Lift	:= FALSE;
			iDry2.IO.doRelayVDHeater	:=FALSE;
			iDry2.IO.doRelayVDVent	:=FALSE;
			iDry2.Cmd.Start			:= FALSE;
			IF iDry2.Cmd.ErrorReset=TRUE THEN
				iDry2.Status.Error	:=FALSE;
				sDryState:=enWAIT;
			END_IF;

	END_CASE;
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

