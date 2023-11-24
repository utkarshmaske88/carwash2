
TYPE
	VPolishCmd_typ : 	STRUCT  (*commanding*)
		Start : BOOL; (*start vpolish*)
		EStop : BOOL; (*estop  of UBody*)
		Stop : BOOL; (*stop of vpolish*)
		ErrorReset : USINT; (* error reset of vpolish*)
	END_STRUCT;
	VPolishCtrl_typ : 	STRUCT  (*control*)
		Cmd : VPolishCmd_typ; (*command  of vpolish*)
		IO : VPolishIOs_typ; (*IO  of vpolish*)
		Status : VPolishStatus_typ; (*status of vpolish*)
	END_STRUCT;
	VPolishIOs_typ : 	STRUCT  (*IOs  of vpolish*)
		doRelayRClose : BOOL; (*realy close  of vpolish*)
		doRelayROpen : BOOL; (*relay  of vpolish*)
		doRelayLClose : BOOL; (*relay  of vpolish*)
		doRelayLOpen : BOOL; (*left oepn  of vpolish*)
		doRelayBrush : BOOL; (*relay brush  of vpolish*)
		aoVPLVel : REAL; (*right valve  of vpolish*)
		aoVPRVel : REAL; (*Right vel  of vpolish*)
		aiVPRForceS : REAL; (*sideforce of vpolish*)
		aiVPRForceF : REAL; (*force front  of vpolish*)
		aiVPLForceS : REAL; (*side of vpolish*)
		aiVPLForceF : REAL; (*force front  of vpolish*)
	END_STRUCT;
	VPolishStatus_typ : 	STRUCT  (*status*)
		Running : BOOL; (*running  of vpolish*)
		Error : BOOL; (*error of vpolish*)
		ForceIN : USINT; (*forcein of vpolish*)
		Rotating : USINT; (*rotating of vpolish*)
	END_STRUCT;
END_TYPE
