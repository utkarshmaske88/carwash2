
TYPE
	ChemCmd_typ : 	STRUCT 
		Start : BOOL;
		EStop : BOOL;
		Stop : BOOL;
		ErrorReset : BOOL;
	END_STRUCT;
	ChemCtrl_typ : 	STRUCT 
		Cmd : ChemCmd_typ;
		IO : ChemIOs_typ;
		Par : ChemParam_typ;
		Status : ChemStatus_typ;
	END_STRUCT;
	ChemIOs_typ : 	STRUCT 
		aoChemChemValve : REAL;
		doChemWaterValve : BOOL;
		doChemRefill : BOOL;
	END_STRUCT;
	ChemParam_typ : 	STRUCT 
		ChemLevel : REAL;
	END_STRUCT;
	ChemStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
		ChemHigh : BOOL;
		ChemLow : BOOL;
		SprayON : BOOL;
	END_STRUCT;
END_TYPE
