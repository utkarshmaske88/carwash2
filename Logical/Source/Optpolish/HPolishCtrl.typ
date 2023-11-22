
TYPE
	PolishCmd_typ : 	STRUCT 
		Start : BOOL;
		EStop : BOOL;
		Stop : BOOL;
	END_STRUCT;
	PolishCtrl_typ : 	STRUCT 
		Cmd : PolishCmd_typ;
		IO : PolishIOs_typ;
		Par : PolishParam_typ;
		Status : PolishStatus_typ;
	END_STRUCT;
	PolishIOs_typ : 	STRUCT 
		doRelayLower : BOOL;
		doRelayBrush : BOOL;
		doRelayLift : BOOL;
		diSensHPolish2 : BOOL;
		diSensHPolish3 : BOOL;
		diSensHPolish4 : BOOL;
		diSensHPolish1 : BOOL;
	END_STRUCT;
	PolishParam_typ : 	STRUCT 
<<<<<<< HEAD:Logical/Source/Optpolish/HPolishCtrl.typ
		New_Member : USINT;
=======
		New_Member : BOOL;
>>>>>>> edcf355ccd2dc5a058ed4214cc82538d90d7c920:Logical/Source/HOpthpolish/HPolishCtrl.typ
	END_STRUCT;
	PolishStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
	END_STRUCT;
END_TYPE
