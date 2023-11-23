 
ACTION EStopHB: 
	IF iHBrush.Cmd.EStop=TRUE THEN
		MpAlarmXSet(gAlarmXCore,'EStopHB');		
		IF MpAlarmXCheckReaction(gAlarmXCore, 'EStopErr') THEN
			iHBrush.Status.Error:= TRUE ;
		END_IF
	ELSE
		MpAlarmXReset(gAlarmXCore,'EStopHB');
	END_IF;
END_ACTION



