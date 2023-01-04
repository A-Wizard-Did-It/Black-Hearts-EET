BEGIN WIguard

CHAIN IF ~NumTimesTalkedTo(0) !PartyHasItem("WIBOOK01")~ THEN WIguard WIguard0
	@649
END
		++ @650 GOTO WIguard1
		++ @651 GOTO WIguard2

CHAIN WIguard WIguard1
	@652 EXIT

CHAIN WIguard WIguard2
	@653 EXIT

CHAIN IF ~NumTimesTalkedToGT(0) !PartyHasItem("WIBOOK01")~ THEN WIguard WIguard3
	@654 EXIT


CHAIN IF ~PartyHasItem("WIBOOK01") Global("BHBG1Quest","GLOBAL",3)~ THEN WIguard WIguard4
	@655
END
		++ @656 DO ~StartCutSceneEx("WIcuts24",TRUE) StartCutSceneMode()~ EXIT
		++ @657 EXIT