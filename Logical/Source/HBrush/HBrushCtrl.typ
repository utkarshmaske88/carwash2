
TYPE
	HBrushCmd_typ : 	STRUCT  (*hb command*)
		Start : BOOL; (*start command*)
		EStop : BOOL; (*estop command*)
		Stop : BOOL; (*stop command*)
		ErrorReset : USINT; (*error reset command*)
	END_STRUCT;
	HBrushCtrl_typ : 	STRUCT  (*control  of HBRUSH*)
		Cmd : HBrushCmd_typ; (*command of HBRUSH*)
		IO : HBrushIOs_typ; (*IOs of HBRUSH*)
		Par : HBrushParam_typ; (*parameters of HBRUSH*)
		Status : HBrushStatus_typ; (*statsus of HBRUSH*)
	END_STRUCT;
	HBrushIOs_typ : 	STRUCT  (*IOs of HBRUSH*)
		doRelayHBLift : BOOL; (*lifting HB of HBRUSH*)
		doRelayHBLower : BOOL; (*lowring HB of HBRUSH*)
		doRelayHBBrush : BOOL; (*Brush relay of HBRUSH*)
		doValveHB : BOOL; (*valve relay of HBRUSH*)
		diSensHB2 : BOOL; (*sensor1 of HBRUSH*)
		diSensHB3 : BOOL; (*sensor 2 of HBRUSH*)
		diSensHB4 : BOOL; (*sensor 3 of HBRUSH*)
		diSensHB1 : BOOL; (*sensor 4 of HBRUSH*)
	END_STRUCT;
	HBrushParam_typ : 	STRUCT  (*parameters of HBRUSH*)
		VehHeight : REAL; (*height of vehicle*)
	END_STRUCT;
	HBrushStatus_typ : 	STRUCT  (*status of HBRUSH*)
		Running : BOOL; (*running  of HBRUSH*)
		Error : BOOL; (*error of HBRUSH*)
		Lifting : BOOL; (*lifting of HBRUSH*)
		Brushing : BOOL; (*brushing  of HBRUSH*)
		ValveOpen : BOOL; (*valve open  of HBRUSH*)
		Lowering : BOOL; (*lowering  of HBRUSH*)
	END_STRUCT;
END_TYPE
