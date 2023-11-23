 
ACTION VBAlarm: 
	IF iVBrush.Cmd.EStop=TRUE THEN
		MpAlarmXSet(gAlarmXCore,'EStopVB');		
		IF MpAlarmXCheckReaction(gAlarmXCore, 'EStopErr') THEN
			iVBrush.Status.Error:= TRUE ;
		END_IF
	ELSE
		MpAlarmXReset(gAlarmXCore,'EStopVB');
	END_IF;
END_ACTION



