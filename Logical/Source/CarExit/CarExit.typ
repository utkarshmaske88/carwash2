
TYPE
	CarExitCmd_typ : 	STRUCT 
		Start : BOOL;
		EStop : BOOL;
		Stop : BOOL;
		ErrorReset : BOOL;
	END_STRUCT;
	CarExitCtrl_typ : 	STRUCT 
		Cmd : CarExitCmd_typ;
		IO : CarExitIOs_typ;
		Par : CarExitParam_typ;
		Status : CarExitStatus_typ;
	END_STRUCT;
	CarExitIOs_typ : 	STRUCT 
		doGreenLight : BOOL;
		doRelayLowerdDoor : BOOL;
		doRelayLiftDoor : BOOL;
		doRedLight : BOOL;
		doOrangeLight : BOOL;
	END_STRUCT;
	CarExitParam_typ : 	STRUCT 
		New_Member : USINT;
	END_STRUCT;
	CarExitStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
		LiftingDoor : BOOL;
		LowringDoor : BOOL;
	END_STRUCT;
END_TYPE
