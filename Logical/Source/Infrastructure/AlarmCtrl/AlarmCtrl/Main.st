
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	
	// alarmx on
	iFb_AlarmX.Enable:=TRUE;
	iFb_AlarmX.MpLink:=ADR(gAlarmXCore);
	
	iFb_AlarmUI.Enable:=TRUE;
	iFb_AlarmUI.MpLink:=ADR(gAlarmXCore);
	iFb_AlarmUI.UIConnect:=ADR(UIConnectCore);
	
	
	iFb_AlarmX();
	iFb_AlarmUI();
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
	iFb_AlarmUI.Enable:=FALSE;
	iFb_AlarmX.Enable:=FALSE;
	iFb_AlarmX();
	iFb_AlarmUI();
END_PROGRAM

