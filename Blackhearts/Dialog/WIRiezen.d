BEGIN WIRiezen

CHAIN IF ~NumTimesTalkedTo(0)~ THEN WIRiezen ri9.0
	@3220
	== BRANWJ IF ~InParty("Branwen") InMyArea("Branwen") !StateCheck("Branwen",CD_STATE_NOTVALID)~ THEN @3221
	== KHALIJ IF ~InParty("Khalid") InMyArea("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN @3222
END
		++ @3223 + ri9.2
		++ @3224 + ri9.3
		++ @3225 + ri9.2
		++ @3226 + ri9.4
		
CHAIN WIRiezen ri9.2
	@3227
	== SHARTJ IF ~InParty("SharTeel") InMyArea("SharTeel") !StateCheck("SharTeel",CD_STATE_NOTVALID)~ THEN @3228
END
		++ @3229 + ri9.5
		++ @3230 + ri9.6
		++ @3231 + ri9.7
		++ @3232 + ri9.8
		++ @3233 + ri9.3
		++ @3234 + ri9.4

CHAIN WIRiezen ri9.3
	@3235
	== AJANTJ IF ~InParty("Ajantis") InMyArea("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @3236
	== VICONJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3237
END
		++ @3238 + ri9.2
		++ @3239 + ri9.4
		
CHAIN WIRiezen ri9.4
	@3240 DO ~SetGlobal("BHBG1Quest","GLOBAL",10) Enemy() StartCutSceneEx("WIcuts12",TRUE)~ EXIT
	
CHAIN WIRiezen ri9.5
	@3241
	== FALDOJ IF ~InParty("Faldorn") InMyArea("Faldorn") !StateCheck("Faldorn",CD_STATE_NOTVALID)~ THEN @3242
	== JAHEIJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3243
	== WIRiezen IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3244
	== JAHEIJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3245
END
		++ @3246 + ri9.6
		++ @3247 + ri9.7
		++ @3248 + ri9.8
		++ @3249 + ri9.3
		++ @3250 + ri9.4

CHAIN WIRiezen ri9.6
	@3251
	== NEERAJ_ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @3252
END
		++ @3253 + ri9.9
		++ @3254 + ri9.5
		++ @3247 + ri9.7
		++ @3248 + ri9.8
		++ @3249 + ri9.3
		++ @3250 + ri9.4
		
CHAIN WIRiezen ri9.7
	@3255
	== DYNAHJ IF ~InParty("Dynaheir") InMyArea("Dynaheir") !StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN @3256
END
		++ @3257 + ri9.9
		++ @3246 + ri9.6
		++ @3248 + ri9.8
		++ @3249 + ri9.3
		++ @3250 + ri9.4

CHAIN WIRiezen ri9.8
	@3258
	== SKIEJ IF ~InParty("Skie") InMyArea("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ THEN @3259
END
		++ @3260 + ri9.9
		++ @3254 + ri9.5
		++ @3246 + ri9.6
		++ @3247 + ri9.7
		++ @3249 + ri9.3
		++ @3250 + ri9.4

CHAIN WIRiezen ri9.9
	@3261
	== QUAYLJ IF ~InParty("Quayle") InMyArea("Quayle") !StateCheck("Quayle",CD_STATE_NOTVALID)~ THEN @3262
END
		++ @3254 + ri9.5
		++ @3246 + ri9.6
		++ @3247 + ri9.7
		++ @3248 + ri9.8
		++ @3249 + ri9.3
		++ @3250 + ri9.4