 
ACTION HPAlarm: 
	IF iHPolish.Cmd.EStop=TRUE THEN
		MpAlarmXSet(gAlarmXCore,'EStopHPol');		
		IF MpAlarmXCheckReaction(gAlarmXCore, 'EStopErr') THEN
			iHPolish.Status.Error:= TRUE ;
		END_IF
	ELSE
		MpAlarmXReset(gAlarmXCore,'EStopHPol');
	END_IF;
END_ACTION



