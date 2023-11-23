 
ACTION VPolAlarm: 
	IF iVPolish.Cmd.EStop=TRUE THEN
		MpAlarmXSet(gAlarmXCore,'EStopVPol');		
		IF MpAlarmXCheckReaction(gAlarmXCore, 'EStopErr') THEN
			iVPolish.Status.Error:= TRUE ;
		END_IF
	ELSE
		MpAlarmXReset(gAlarmXCore,'EStopVPol');
	END_IF;
END_ACTION



