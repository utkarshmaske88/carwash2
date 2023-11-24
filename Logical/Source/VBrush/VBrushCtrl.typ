
TYPE
	VBrushCmd_typ : 	STRUCT  (*commands*)
		Start : BOOL; (*start of Vbrush*)
		EStop : BOOL; (*estop of Vbrush*)
		Stop : BOOL; (*stop  of Vbrush*)
		ErrorReset : USINT; (* error reseet of Vbrush*)
	END_STRUCT;
	VBrushCtrl_typ : 	STRUCT  (*control*)
		Cmd : VBrushCmd_typ; (*commands*)
		IO : VBrushIOs_typ; (*ios  of Vbrush*)
		Par : VBrushParam_typ; (*parameteres  of Vbrush*)
		Status : VBrushStatus_typ; (*status  of Vbrush*)
	END_STRUCT;
	VBrushIOs_typ : 	STRUCT  (*ios*)
		doRelayVBLClose : BOOL; (*leftcloseof Vbrush*)
		doRelayVBROpen : BOOL; (*rightopen of Vbrush*)
		doRelayVBLOpen : BOOL; (*leftopen of Vbrush*)
		doRelayVBRClose : BOOL; (*rightclose of Vbrush*)
		aiVBRForceS : REAL; (*sideforce of Vbrush*)
		aiVBRForceF : REAL; (*frontforce of Vbrush*)
		aiVBLForceS : REAL; (*sideforce of Vbrush*)
		aiVBLForceF : REAL; (*leftforce of Vbrush*)
		aoVBRRVelocity : REAL; (*velocity*)
		aoVBRLVelocity : REAL; (*velocity*)
	END_STRUCT;
	VBrushParam_typ : 	STRUCT 
		LeftVel : REAL := 5.0; (*leftvelocity*)
		RightVel : REAL := 5.0; (*rightvelocity*)
	END_STRUCT;
	VBrushStatus_typ : 	STRUCT 
		Running : BOOL; (*running of Vbrush*)
		Error : BOOL; (*error  of Vbrush*)
		ForceIN : BOOL; (*forcein of Vbrush*)
		Rotating : USINT; (*rotating of Vbrush*)
	END_STRUCT;
END_TYPE
