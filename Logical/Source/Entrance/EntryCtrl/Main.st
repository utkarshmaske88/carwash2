
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	IF iEntry.Status.Error=TRUE THEN
		iEntryState:=enERROR;
	END_IF;
	
	CASE iEntryState OF
		
		enWAIT:
			iEntry.Status.Running:=FALSE ;
			IF iEntry.Cmd.Start=TRUE THEN
				iEntryState:=enSTART;
			END_IF;
			
		enSTART:
			iEntry.Status.Running:=TRUE ;
			IF iEntry.IO.diSensEntry=TRUE THEN
				iEntryState:=enCARIN;
			END_IF;
		enCARIN:
			iEntry.Status.CarIN:=TRUE;
			
			IF iEntry.IO.diSensEntry=FALSE THEN
				iEntry.Status.CarIN:=FALSE;
				iEntryState:=enWAIT;
			END_IF;
		
		enERROR:
			iEntry.Status.Running:=FALSE ;
			iEntry.Status.CarIN:=FALSE;
			iEntry.Cmd.Start:=FALSE;

			IF iEntry.Cmd.ErrorReset = TRUE THEN
				iEntryState:=enWAIT;
			END_IF;
			
				
		
	END_CASE;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

