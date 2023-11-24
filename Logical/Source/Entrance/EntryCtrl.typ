
TYPE
	EntryCmd_typ : 	STRUCT  (*command*)
		Start : BOOL; (*start command*)
		EStop : BOOL; (*estop command entry*)
		Stop : BOOL; (*stop command entry*)
		ErrorReset : BOOL; (*errorrest command entry*)
	END_STRUCT;
	EntryCtrl_typ : 	STRUCT  (*control main entry*)
		Cmd : EntryCmd_typ; (*command*)
		IO : EntryIOs_typ; (*IOs*)
		Par : EntryParam_typ; (*parameters*)
		Status : EntryStatus_typ; (*status*)
	END_STRUCT;
	EntryIOs_typ : 	STRUCT  (*IOs*)
		diSensEntry : BOOL; (*entry sens*)
		diSensSoilLvl : REAL; (*soil level*)
	END_STRUCT;
	EntryParam_typ : 	STRUCT  (*parameters*)
		CarLength : REAL; (*car length*)
	END_STRUCT;
	EntryStatus_typ : 	STRUCT  (*status*)
		Running : BOOL; (*running main control*)
		Error : BOOL; (*errror occured*)
		CarGone : BOOL; (*car gone*)
		CarIN : BOOL; (*car is in *)
	END_STRUCT;
END_TYPE
