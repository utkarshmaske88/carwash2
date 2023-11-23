 
ACTION ExitAlarm: 
	IF iExit.Cmd.EStop=TRUE THEN
		MpAlarmXSet(gAlarmXCore,'EStopExit');		
		IF MpAlarmXCheckReaction(gAlarmXCore, 'EStopErr') THEN
			iExit.Status.Error:= TRUE ;
		END_IF
	ELSE
		MpAlarmXReset(gAlarmXCore,'EStopExit');
	END_IF;
END_ACTION



