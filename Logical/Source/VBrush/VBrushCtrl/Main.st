
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	
	CASE sVBrushState OF
		
		enWAIT:
			
			IF iVBrush.Cmd.Start=TRUE THEN
				sVBrushState:=enSTART;
			END_IF;
				
		enSTART:
			iVBrush.IO.doRelayVBLClose:=TRUE;
			iVBrush.IO.doRelayVBRClose:=TRUE;
			IF (iVBrush.IO.aiVBLForceF > 70.0) AND (iVBrush.IO.aiVBRForceF  > 70.0) THEN
				iVBrush.IO.doRelayVBLClose	:=FALSE;
				iVBrush.IO.doRelayVBRClose	:=FALSE;
				sVBrushState:=enOPEN;
			END_IF;
			
		enOPEN:
			iVBrush.IO.doRelayVBROpen :=TRUE;
			iVBrush.IO.doRelayVBLOpen :=TRUE;
			IF (iVBrush.IO.aiVBLForceF <= 5.0) AND (iVBrush.IO.aiVBRForceF <= 5.0 ) THEN
				iVBrush.IO.doRelayVBROpen :=FALSE;
				iVBrush.IO.doRelayVBLOpen :=FALSE;
				sVBrushState:=enCLOSE;
			END_IF;
			//	(iVBrush.IO.aiVBLForceS >120 AND iVBrush.IO.aiVBRForceS >120)
			
		enCLOSE:
			iVBrush.IO.doRelayVBLClose:=TRUE;
			iVBrush.IO.doRelayVBRClose:=TRUE;
			
			IF (iVBrush.IO.aiVBLForceS > 120) AND (iVBrush.IO.aiVBRForceS > 120) THEN 
				sVBrushState:=enOPERATION;
			END_IF;
			
		enOPERATION:	
			iVBrush.IO.doRelayVBLClose:=FALSE;
			iVBrush.IO.doRelayVBRClose:=FALSE;
		//			IF (iVBrush.IO.aiVBLForceS =0 AND iVBrush.IO.aiVBRForceS =0) THEN
		//				sVBrushState:=enSTART;
		//			END_IF;
			

	END_CASE;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

