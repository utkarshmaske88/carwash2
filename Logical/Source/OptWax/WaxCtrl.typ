
TYPE
	WaxCmd_typ : 	STRUCT 
		Start : BOOL;
		EStop : BOOL;
		Stop : BOOL;
		ErrorReset : BOOL;
	END_STRUCT;
	WaxCtrl_typ : 	STRUCT 
		Cmd : WaxCmd_typ;
		IO : WaxIOs_typ;
		Par : WaxParam_typ;
		Status : WaxStatus_typ;
	END_STRUCT;
	WaxIOs_typ : 	STRUCT 
		doValveWax : BOOL;
		doRealyWaxPump : BOOL;
		doRefillWax : BOOL;
	END_STRUCT;
	WaxParam_typ : 	STRUCT 
		New_Member : USINT;
	END_STRUCT;
	WaxStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
		PumpOn : BOOL;
		ValveOpen : BOOL;
	END_STRUCT;
END_TYPE
