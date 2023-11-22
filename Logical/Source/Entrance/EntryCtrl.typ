
TYPE
	EntryCmd_typ : 	STRUCT 
		Start : BOOL;
		EStop : BOOL;
		Stop : BOOL;
		ErrorReset : BOOL;
	END_STRUCT;
	EntryCtrl_typ : 	STRUCT 
		Cmd : EntryCmd_typ;
		IO : EntryIOs_typ;
		Par : EntryParam_typ;
		Status : EntryStatus_typ;
	END_STRUCT;
	EntryIOs_typ : 	STRUCT 
		diSensEntry : BOOL;
		diSensSoilLvl : REAL;
	END_STRUCT;
	EntryParam_typ : 	STRUCT 
		CarLength : REAL;
	END_STRUCT;
	EntryStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
		CarGone : BOOL;
		CarIN : BOOL;
	END_STRUCT;
END_TYPE
