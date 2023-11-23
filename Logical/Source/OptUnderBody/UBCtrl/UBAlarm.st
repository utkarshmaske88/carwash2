 
ACTION UBAlarm: 
	IF iUBody.Cmd.EStop=TRUE THEN
		MpAlarmXSet(gAlarmXCore,'EStopUB');		
		IF MpAlarmXCheckReaction(gAlarmXCore, 'EStopErr') THEN
			iUBody.Status.Error:= TRUE ;
		END_IF
	ELSE
		MpAlarmXReset(gAlarmXCore,'EStopUB');
	END_IF;
END_ACTION



