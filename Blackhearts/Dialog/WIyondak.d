BEGIN WIYondak

CHAIN IF ~NumTimesTalkedTo(0)~ THEN WIYondak Yondak1
	@3289
	== %DORN_JOINED% IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @3290
	== BRANWJ IF ~InParty("Branwen") InMyArea("Branwen") !StateCheck("Branwen",CD_STATE_NOTVALID)~ THEN @3291
	== GARRIJ IF ~InParty("Garrick") InMyArea("Garrick") !StateCheck("Garrick",CD_STATE_NOTVALID)~ THEN @3292
	== SKIEJ IF ~InParty("Skie") InMyArea("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ THEN @3293
	== KIVANJ IF ~InParty("Kivan") InMyArea("Kivan") !StateCheck("Kivan",CD_STATE_NOTVALID)~ THEN @3294
END
		++ @3295 + Yondak2

CHAIN WIYondak Yondak2
	@3296 DO ~Enemy() StartCutSceneEx("WIcuts13",TRUE)~ EXIT