 
ACTION EntryAlarm: 
	IF iEntry.Cmd.EStop=TRUE THEN
		MpAlarmXSet(gAlarmXCore,'EStopEntry');		
		IF MpAlarmXCheckReaction(gAlarmXCore, 'EStopErr') THEN
			iEntry.Status.Error:= TRUE ;
		END_IF
	ELSE
		MpAlarmXReset(gAlarmXCore,'EStopEntry');
	END_IF;
END_ACTION



