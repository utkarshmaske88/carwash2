
TYPE
	UBCmd_typ : 	STRUCT 
		Start : BOOL;
		EStop : BOOL;
		Stop : BOOL;
		ErrorReset : USINT;
	END_STRUCT;
	UBCtrl_typ : 	STRUCT 
		Cmd : UBCmd_typ;
		IO : UBIOs_typ;
		Par : UBParam_typ;
		Status : UBStatus_typ;
	END_STRUCT;
	UBIOs_typ : 	STRUCT 
		doValveUB : BOOL;
		doRelayPump : BOOL;
	END_STRUCT;
	UBParam_typ : 	STRUCT 
		New_Member : USINT;
	END_STRUCT;
	UBStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
		PumpOpen : BOOL;
		ValveOpen : BOOL;
	END_STRUCT;
END_TYPE
