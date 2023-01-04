BEGIN WIguard2

CHAIN IF ~NumTimesTalkedTo(0)~ THEN WIguard2 WIguard2.0
	@658
END
		++ @659 DO ~StartCutSceneEx("WIcuts25",TRUE) StartCutSceneMode()~ EXIT
		++ @660 EXIT
		
CHAIN IF ~NumTimesTalkedToGT(0)~ THEN WIguard2 WIguard2.1
	@661
END
		++ @662 DO ~StartCutSceneEx("WIcuts25",TRUE) StartCutSceneMode()~ EXIT
		++ @663 EXIT