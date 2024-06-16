BEGIN WICheris

CHAIN IF ~Global("BHBG1Quest","GLOBAL",14)~ THEN WICheris Ch1.0
	@232
	= @233
	== YESLIJ IF ~InParty("Yeslick") InMyArea("Yeslick") !StateCheck("Yeslick",CD_STATE_NOTVALID)~ THEN @234
END
		++ @235 + Ch1.1
		++ @236 + Ch1.2
		++ @237 + Ch1.3
		
CHAIN WICheris Ch1.1
	@238 EXTERN WIMalach WIMalach1
	
CHAIN WICheris Ch1.2
	@239 EXTERN WIMalach WIMalach1

CHAIN WICheris Ch1.3
	@240 EXTERN WIMalach WIMalach2
	
CHAIN WICheris Ch1.4
	@241 EXTERN WIMalach WIMalach2
	
CHAIN WICheris Ch1.5
	@242
	== ELDOTJ IF ~InParty("Eldoth") InMyArea("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ THEN @243
	== TIAXJ IF ~InParty("Tiax") InMyArea("Tiax") !StateCheck("Tiax",CD_STATE_NOTVALID)~ THEN @244
	== RASAADJ_ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @245
	== SAFANJ IF ~InParty("Safana") InMyArea("Safana") !StateCheck("Safana",CD_STATE_NOTVALID)~ THEN @246
END
		++ @247 + Ch1.6
		++ @248 + Ch1.6
		++ @249 + Ch1.6

CHAIN WICheris Ch1.6
	@250 EXTERN WIMalach WIMalach3
	
CHAIN WICheris Ch1.7
	@251 DO ~SetGlobal("BHBG1Quest","GLOBAL",15) AddJournalEntry(@107,QUEST) CreateVisualEffectObject("spdimndr",myself) DestroySelf()~ EXIT
	
	
CHAIN IF ~GlobalGT("BHBG1Quest","GLOBAL",14)~ THEN WICheris Ch2.0
	@252
END
		++ @253 + Ch2.1
		++ @254 + Ch2.2
		++ @255 + Ch2.2
		++ @256 + Ch2.3

CHAIN WICheris Ch2.1
	@257 DO ~SetGlobal("BHBG1Quest","GLOBAL",19) Enemy() ChangeAIScript("WICHDETH",OVERRIDE)~ EXIT
	
CHAIN WICheris Ch2.2
	@258
	== QUAYLJ IF ~InParty("Quayle") InMyArea("Quayle") !StateCheck("Quayle",CD_STATE_NOTVALID)~ THEN @259
	== WICheris IF ~InParty("Quayle") InMyArea("Quayle") !StateCheck("Quayle",CD_STATE_NOTVALID)~ THEN @260
END
		++ @261 + Ch2.4
		++ @262 + Ch2.1
		++ @263 + Ch2.4
		++ @264 + Ch2.5
	
CHAIN WICheris Ch2.3
	@265
	== QUAYLJ IF ~InParty("Quayle") InMyArea("Quayle") !StateCheck("Quayle",CD_STATE_NOTVALID)~ THEN @259
	== WICheris IF ~InParty("Quayle") InMyArea("Quayle") !StateCheck("Quayle",CD_STATE_NOTVALID)~ THEN @260
END
		++ @261 + Ch2.4
		++ @262 + Ch2.1
		++ @263 + Ch2.4
		++ @264 + Ch2.5
	
CHAIN WICheris Ch2.4
	@266
	= @267
END
		++ @268 + Ch2.6
		++ @269 + Ch2.7
		++ @270 + Ch2.1

CHAIN WICheris Ch2.5
	@271
END
		++ @268 + Ch2.6
		++ @269 + Ch2.7
		++ @270 + Ch2.1
		
CHAIN WICheris Ch2.6
	@272
	== SAFANJ IF ~InParty("Safana") InMyArea("Safana") !StateCheck("Safana",CD_STATE_NOTVALID)~ THEN @273
END
		++ @274 + Ch2.8

CHAIN WICheris Ch2.7
	@275
	== SAFANJ IF ~InParty("Safana") InMyArea("Safana") !StateCheck("Safana",CD_STATE_NOTVALID)~ THEN @273
END
		++ @274 + Ch2.8

CHAIN WICheris Ch2.8
	@276
	=@277
	== DORNJ_ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @278
END
		++ @279 + Ch2.9
		+ ~CheckStatGT(Player1,13,WIS)~ + @280 + Ch2.10
		++ @281 + Ch2.1

CHAIN WICheris Ch2.9
	@282
	== KHALIJ IF ~InParty("Khalid") InMyArea("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN @283
END
		++ @284 + Ch2.10

CHAIN WICheris Ch2.10
	@285
	= @286
	= @287
END
		++ @288 + Ch2.11
		++ @289 + Ch2.12
		++ @290 + Ch2.12

CHAIN WICheris Ch2.11
	@291 EXTERN WICheris Ch2.12

CHAIN WICheris Ch2.12
	@292
	= @293 DO ~SetGlobal("BHBG1Quest","GLOBAL",19) Enemy() ChangeAIScript("WICHDETH",OVERRIDE)~ EXIT