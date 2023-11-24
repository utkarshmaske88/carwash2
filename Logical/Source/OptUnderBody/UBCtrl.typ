
TYPE
	UBCmd_typ : 	STRUCT  (*commmand of UBody*)
		Start : BOOL; (*start of UBody*)
		EStop : BOOL; (*estop of UBody*)
		Stop : BOOL; (*stop of UBody*)
		ErrorReset : USINT; (*errorrest of UBody*)
	END_STRUCT;
	UBCtrl_typ : 	STRUCT  (*control  of UBody*)
		Cmd : UBCmd_typ; (*command of UBody*)
		IO : UBIOs_typ; (*IOs  of UBody*)
		Par : UBParam_typ; (*parameters*)
		Status : UBStatus_typ; (*parametes of UBody*)
	END_STRUCT;
	UBIOs_typ : 	STRUCT  (*IOs*)
		doValveUB : BOOL; (*valve is on*)
		doRelayPump : BOOL; (*relay is on*)
	END_STRUCT;
	UBParam_typ : 	STRUCT 
		New_Member : USINT;
	END_STRUCT;
	UBStatus_typ : 	STRUCT  (*status*)
		Running : BOOL; (*running  of UBody*)
		Error : BOOL; (*error of UBody*)
		PumpOpen : BOOL; (*pump of UBody*)
		ValveOpen : BOOL; (*valve of UBody*)
	END_STRUCT;
END_TYPE
