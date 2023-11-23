 
ACTION WaxAlarm: 

	IF iWax.Cmd.EStop=TRUE THEN
		MpAlarmXSet(gAlarmXCore,'EStopHWax');		
		IF MpAlarmXCheckReaction(gAlarmXCore, 'EStopErr') THEN
			iWax.Status.Error:= TRUE ;
		END_IF
	ELSE
		MpAlarmXReset(gAlarmXCore,'EStopHWax');
	END_IF;
	

	
END_ACTION



