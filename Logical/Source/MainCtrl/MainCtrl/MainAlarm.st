 
ACTION MainAlarm: 
	
	IF iVa_WaterLevel<0.1 THEN
		MpAlarmXSet(gAlarmXCore,'WaterLow');		
		IF MpAlarmXCheckReaction(gAlarmXCore, 'EStopErr') THEN
			gMain.Cmd.EStop:=TRUE;
		END_IF
	ELSE
		MpAlarmXReset(gAlarmXCore,'WaterLow');
	END_IF;
	
	
	
END_ACTION



