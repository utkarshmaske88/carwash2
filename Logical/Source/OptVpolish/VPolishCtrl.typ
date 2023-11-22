
TYPE
	VPolishCmd_typ : 	STRUCT 
		Start : BOOL;
		EStop : BOOL;
		Stop : BOOL;
	END_STRUCT;
	VPolishCtrl_typ : 	STRUCT 
		Cmd : VPolishCmd_typ;
		IO : VPolishIOs_typ;
		Par : VPolishParam_typ;
		Status : VPolishStatus_typ;
	END_STRUCT;
	VPolishIOs_typ : 	STRUCT 
		doRelayRClose : BOOL;
		doRelayROpen : BOOL;
		doRelayLClose : BOOL;
		doRelayLOpen : BOOL;
		doRelayBrush : BOOL;
		aoVPLVel : REAL;
		aoVPRVel : REAL;
		aiVPRForceS : REAL;
		aiVPRForceF : REAL;
		aiVPLForceS : REAL;
		aiVPLForceF : REAL;
	END_STRUCT;
	VPolishParam_typ : 	STRUCT 
	END_STRUCT;
	VPolishStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
		ForceIN : USINT;
		Rotating : USINT;
	END_STRUCT;
END_TYPE
