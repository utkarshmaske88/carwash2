
TYPE
	HBrushCmd_typ : 	STRUCT 
		Start : BOOL;
		EStop : BOOL;
		Stop : BOOL;
	END_STRUCT;
	HBrushCtrl_typ : 	STRUCT 
		Cmd : HBrushCmd_typ;
		IO : HBrushIOs_typ;
		Par : HBrushParam_typ;
		Status : HBrushStatus_typ;
	END_STRUCT;
	HBrushIOs_typ : 	STRUCT 
		doRelayHBLift : BOOL;
		doRelayHBLower : BOOL;
		doRelayHBBrush : BOOL;
		doValveHB : BOOL;
		diSensHB2 : BOOL;
		diSensHB3 : BOOL;
		diSensHB4 : BOOL;
		diSensHB1 : BOOL;
	END_STRUCT;
	HBrushParam_typ : 	STRUCT 
		VehHeight : REAL;
	END_STRUCT;
	HBrushStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
		Lifting : BOOL;
		Brushing : BOOL;
		ValveOpen : BOOL;
		ValveOpem : BOOL;
		Lowering : BOOL;
	END_STRUCT;
END_TYPE
