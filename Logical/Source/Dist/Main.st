
PROGRAM _INIT
	(* Insert code here *)
	Status1 := PV_xgetadr(ADR('Auxillary:iAuxillary'),ADR(AuxAddress),ADR(SizeAux));
	Status2 := PV_xgetadr(ADR('EntryCtrl:iEntry'),ADR(EntryAddress),ADR(SizeEntry));
	
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	
	pDistAux	ACCESS AuxAddress;
	pDistEntry	ACCESS EntryAddress;
	
	
	CASE sDistState OF
		enSTART:
			IF pDistEntry.IO.diSensEntry = TRUE THEN
				sDistState		:= enDISTMOVE;
			END_IF;
		enDISTMOVE:
			IF pDistAux.doRelayConv = TRUE THEN
				iVa_Distance	:= iVa_Distance + 0.044;
			END_IF;
	END_CASE;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

