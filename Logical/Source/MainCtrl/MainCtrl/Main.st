
PROGRAM _INIT
	
	//accessing structre and data from tasks
	Status1 := PV_xgetadr(ADR('EntryCtrl:iEntry'),ADR(EntryAddress),ADR(SizeEntry));
	Status2 := PV_xgetadr(ADR('ChemCtrl:iChem'),ADR(ChemAddress),ADR(SizeChem));
	Status3 := PV_xgetadr(ADR('Auxillary:iAuxillary'),ADR(AuxAddress),ADR(SizeAux));
	Status4	:= PV_xgetadr(ADR('HPWater:iHighPress'), ADR(HPAddress), ADR(SizeHP));
	Status5	:= PV_xgetadr(ADR('HBrushCtrl:iHBrush'), ADR(HBAddress), ADR(SizeHBrush));
	Status6	:= PV_xgetadr(ADR('HPolish:iHPolish'), ADR(HPolishAddress), ADR(SizeHPolish));
	Status7	:= PV_xgetadr(ADR('UBCtrl:iUBody'), ADR(UBodyAddress), ADR(SizeUBody));
	Status8	:= PV_xgetadr(ADR('WaxCtrl:iWax'), ADR(WaxAddress), ADR(SizeWax));
	Status9	:= PV_xgetadr(ADR('VBrushCtrl:iVBrush'), ADR(VBrushAddress), ADR(SizeVBrush));
	
END_PROGRAM

PROGRAM _CYCLIC
	//accessing data from the address
	pEntryCtrl ACCESS EntryAddress;
	pChemCtrl ACCESS ChemAddress;
	pAuxCtrl ACCESS AuxAddress;
	pHPCtrl ACCESS HPAddress;
	pHBrushCtrl ACCESS HBAddress;
	pHPolish ACCESS HPolishAddress;
	pUBCtrl ACCESS UBodyAddress;
	pWaxCtrl ACCESS WaxAddress;
	pVBrush ACCESS VBrushAddress;
	
	ScalDirt(x:=pEntryCtrl.IO.diSensSoilLvl ,y1:=5,x2:=10,y2:=0);

	IF gMain.Cmd.Start = TRUE THEN
		pAuxCtrl.doRelayConv	:= TRUE;
		gMain.Cmd.Start			:= FALSE;
		gMain.Option.EntryState	:= TRUE;
		iFl_CarFlag :=TRUE ;
	END_IF;
	
	IF (gMain.Option.EntryState = TRUE) THEN
		
		pEntryCtrl.Cmd.Start:=TRUE;
		txt:="entry";
		
		IF pEntryCtrl.IO.diSensEntry=TRUE THEN
			IF iFl_CarFlag =TRUE THEN
				FOR i:=0 TO 3 DO
					IF gCar[i]=FALSE THEN 
						gCar[i]:=TRUE;
						iFb_Timer[i].IN:=TRUE;
						iFl_CarFlag :=FALSE;
						EXIT;
					END_IF;
				END_FOR;
			END_IF;
		END_IF;
	
		
	END_IF;
	
	IF (iFb_Timer[0].ET >T#5400ms) AND (gMain.Option.ChemicalState = TRUE) THEN
		gMain.Option.EntryState			:= FALSE;
		txt:="chem";
		pChemCtrl.IO.doChemWaterValve	:= TRUE;
	END_IF;
	
	IF iFb_Timer[0].ET > (T#5400ms + T#11000ms) THEN
		pChemCtrl.IO.doChemWaterValve	:= FALSE;
		gMain.Option.ChemicalState		:= FALSE;
	END_IF;
	
	IF (iFb_Timer[0].ET > T#18290ms) AND (gMain.Option.HighPress = TRUE) THEN
		txt:="HighPressure Water";
		pHPCtrl.Cmd.Start		:= TRUE;
	END_IF;
	
	IF (iFb_Timer[0].ET > T#30650ms) AND (gMain.Option.HBrush = TRUE) THEN
		txt	:= "Horizontal Brush";
		pHBrushCtrl.Cmd.Start	:= TRUE;
		gMain.Option.HighPress	:= FALSE;
	END_IF;
	
	IF (iFb_Timer[0].ET > T#44000ms) AND (gMain.Option.VBrush = TRUE) THEN
		txt	:= "Vertical Brush";
		pVBrush.Cmd.Start	:= TRUE;
		gMain.Option.HBrush		:= FALSE;
	END_IF;
		
	IF (iFb_Timer[0].ET > T#68680ms) AND (gMain.Option.UnderBody = TRUE) THEN
		txt	:= "UnderBody Brush";
		pUBCtrl.Cmd.Start	:= TRUE;
		gMain.Option.VBrush	:= FALSE;
	END_IF;
	
	IF (iFb_Timer[0].ET > T#82040ms) AND (gMain.Option.Polish = TRUE) THEN
		txt	:= "Polishing";
		pHPolish.Cmd.Start		:= TRUE;
		gMain.Option.UnderBody	:= FALSE;
	END_IF;
	
	IF (iFb_Timer[0].ET > T#114400ms) AND (gMain.Option.Wax = TRUE) THEN
		txt	:= "Waxing";
		pWaxCtrl.Cmd.Start	:= TRUE;
		gMain.Option.Polish	:= FALSE;
	END_IF;
	
	
	IF gMain.Cmd.EStop = TRUE THEN
		iFb_Timer[0]();
	END_IF;
	
		
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

