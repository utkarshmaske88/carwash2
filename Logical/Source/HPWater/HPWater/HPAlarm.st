 
ACTION EStopHighPre: 
	IF iHighPress.Cmd.EStop=TRUE THEN
		MpAlarmXSet(gAlarmXCore,'EStopHighPre');		
		IF MpAlarmXCheckReaction(gAlarmXCore, 'EStopErr') THEN
			iHighPress.Status.Error:= TRUE ;
		END_IF
	ELSE
		MpAlarmXReset(gAlarmXCore,'EStopHighPre');
	END_IF;
END_ACTION



