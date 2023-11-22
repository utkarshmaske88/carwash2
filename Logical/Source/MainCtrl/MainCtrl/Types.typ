
TYPE
	sMainStep_enum1 : 
		(
		enWAIT,
		enSTART,
		enENTRY,
		enCHEMICAL
		);
	MainCmd_typ : 	STRUCT 
		Start : BOOL;
		Stop : BOOL;
		EStop : BOOL;
	END_STRUCT;
	MainOption_typ : 	STRUCT 
		EntryState : BOOL;
		ChemicalState : BOOL;
		HighPress : BOOL;
		HBrush : BOOL;
		Polish : BOOL;
		UnderBody : BOOL;
		Wax : BOOL;
		VBrush : BOOL;
	END_STRUCT;
	MainCtrl_typ : 	STRUCT 
		Cmd : MainCmd_typ;
		Option : MainOption_typ;
	END_STRUCT;
END_TYPE
