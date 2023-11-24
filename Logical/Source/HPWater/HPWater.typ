
TYPE
	HPWaterCmd_typ : 	STRUCT  (*water command*)
		Start : BOOL; (*command start*)
		EStop : BOOL; (*estop command*)
		Stop : BOOL; (*stop command*)
		ErrorReset : USINT; (*command error reset*)
	END_STRUCT;
	HPWaterCtrl_typ : 	STRUCT  (*main ocntrol OF HPWater*)
		Cmd : HPWaterCmd_typ; (*command OF HPWater*)
		IO : HPWaterIOs_typ; (*ios OF HPWater*)
		Par : HPWaterParam_typ; (*parameters*)
		Status : HPWaterStatus_typ; (*stauts OF HPWater*)
	END_STRUCT;
	HPWaterIOs_typ : 	STRUCT  (*water ios*)
		diSensHP1 : BOOL; (*sesnsor 1 OF HPWater*)
		diSensHP2 : BOOL; (*sensor 2 OF HPWater*)
		diSensHP3 : BOOL; (*sensor 3 OF HPWater*)
		diSensHP4 : BOOL; (*sensor 4 OF HPWater*)
		doValveHP : BOOL; (*valve of hp*)
		doRelayHPPump : BOOL; (*relay fro pump*)
		doRelayHPLow : BOOL; (*lowering bar*)
		doRelayHPLift : BOOL; (*lifting bar*)
	END_STRUCT;
	HPWaterParam_typ : 	STRUCT  (*parameters OF HPWater*)
		New_Member : USINT;
	END_STRUCT;
	HPWaterStatus_typ : 	STRUCT  (*water status OF HPWater*)
		Running : BOOL; (*running OF HPWater*)
		Error : BOOL; (*error OF HPWater*)
		ValveOpen : USINT; (*valve open OF HPWater*)
	END_STRUCT;
END_TYPE
