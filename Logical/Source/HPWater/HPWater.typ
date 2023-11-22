
TYPE
	HPWaterCmd_typ : 	STRUCT 
		Start : BOOL;
		EStop : BOOL;
		Stop : BOOL;
	END_STRUCT;
	HPWaterCtrl_typ : 	STRUCT 
		Cmd : HPWaterCmd_typ;
		IO : HPWaterIOs_typ;
		Par : HPWaterParam_typ;
		Status : HPWaterStatus_typ;
	END_STRUCT;
	HPWaterIOs_typ : 	STRUCT 
		diSensHP1 : BOOL;
		diSensHP2 : BOOL;
		diSensHP3 : BOOL;
		diSensHP4 : BOOL;
		doValveHP : BOOL;
		doRelayHPPump : BOOL;
		doRelayHPLow : BOOL;
		doRelayHPLift : BOOL;
	END_STRUCT;
	HPWaterParam_typ : 	STRUCT 
		New_Member : USINT;
	END_STRUCT;
	HPWaterStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
		ValveOpen : USINT;
	END_STRUCT;
END_TYPE
