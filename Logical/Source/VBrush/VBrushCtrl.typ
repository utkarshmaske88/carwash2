
TYPE
	VBrushCmd_typ : 	STRUCT 
		Start : BOOL;
		EStop : BOOL;
		Stop : BOOL;
	END_STRUCT;
	VBrushCtrl_typ : 	STRUCT 
		Cmd : VBrushCmd_typ;
		IO : VBrushIOs_typ;
		Par : VBrushParam_typ;
		Status : VBrushStatus_typ;
	END_STRUCT;
	VBrushIOs_typ : 	STRUCT 
		doRelayVBLClose : BOOL;
		doRelayVBROpen : BOOL;
		doRelayVBLOpen : BOOL;
		doRelayVBRClose : BOOL;
		aiVBRForceS : REAL;
		aiVBRForceF : REAL;
		aiVBLForceS : REAL;
		aiVBLForceF : REAL;
		aoVBRRVelocity : REAL;
		aoVBRLVelocity : REAL;
	END_STRUCT;
	VBrushParam_typ : 	STRUCT 
		LeftVel : REAL := 5.0;
		RightVel : REAL := 5.0;
	END_STRUCT;
	VBrushStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
		ForceIN : BOOL;
		Rotating : USINT;
	END_STRUCT;
END_TYPE
