 
ACTION DryAlarm: 
	IF iDry.Cmd.EStop=TRUE THEN
		MpAlarmXSet(gAlarmXCore,'EStopDry');		
		IF MpAlarmXCheckReaction(gAlarmXCore, 'EStopErr') THEN
			iDry.Status.Error:= TRUE ;
		END_IF
	ELSE
		MpAlarmXReset(gAlarmXCore,'EStopDry');
	END_IF;
END_ACTION



