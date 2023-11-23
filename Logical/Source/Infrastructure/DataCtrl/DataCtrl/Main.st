PROGRAM _INIT
	(* Insert code here *)
	gMi_Mode1 ; 
	gMi_Mode2 ; 
	gMi_Mode3 ; 
	gMi_Mode4 ; 
END_PROGRAM
 
PROGRAM _CYCLIC
	(* Insert code here *)
	//Data Recorder for two parameter of Feed Change
	iFb_DataRecorder.Enable := TRUE ; 
	iFb_DataRecorder.DeviceName := ADR('USER') ; 
	iFb_DataRecorder.MpLink := ADR(gDataRecorder); 
	iFb_DataRecorder.RecordMode := mpDATA_RECORD_MODE_VALUE ; 

	iFb_DataParMode1.Enable := TRUE ; 
	iFb_DataParMode1.MpLink := ADR(gDataRecorder);
	iFb_DataParMode1.PVName := ADR ('gMi_Mode1') ;

	iFb_DataParMode2.Enable := TRUE ; 
	iFb_DataParMode2.MpLink := ADR(gDataRecorder);
	iFb_DataParMode2.PVName := ADR ('gMi_Mode2') ;
	iFb_DataParMode3.Enable := TRUE ; 
	iFb_DataParMode3.MpLink := ADR(gDataRecorder);
	iFb_DataParMode3.PVName := ADR ('gMi_Mode3') ;
	iFb_DataParMode4.Enable := TRUE ; 
	iFb_DataParMode4.MpLink := ADR(gDataRecorder);
	iFb_DataParMode4.PVName := ADR ('gMi_Mode4') ;
	IF iFb_DataRecorder.Active = TRUE AND iFb_DataRecorder.StatusID = 0 THEN
		iFb_DataRecorder.Record := TRUE;
	END_IF
	iFb_DataParMode1 (); 
	iFb_DataParMode2 (); 
	iFb_DataParMode3 () ; 
	iFb_DataParMode4 () ; 
	iFb_DataRecorder(); 
	END_PROGRAM
 
PROGRAM _EXIT
	(* Insert code here *)
	iFb_DataRecorder.Enable := FALSE ; 
	iFb_DataRecorder();
END_PROGRAM