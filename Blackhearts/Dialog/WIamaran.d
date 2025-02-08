BEGIN WIAMARAN

CHAIN IF ~NumTimesTalkedTo(0)~ THEN WIAMARAN WIAmaran1
	@178
	= @179
	== TIAXJ IF ~InParty("Tiax") InMyArea("Tiax") !StateCheck("Tiax",CD_STATE_NOTVALID)~ THEN @180
	== CORANJ IF ~InParty("Coran") InMyArea("Coran") !StateCheck("Coran",CD_STATE_NOTVALID)~ THEN @181
END
		++ @182 + WIAmaran2
		++ @183 + WIAmaran3

CHAIN WIAMARAN WIAmaran2
	@184
	== %RASAAD_JOINED% IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @185
END
		++ @186 + WIAmaran3
		
CHAIN WIAMARAN WIAmaran3
	@187
	= @188
	== KIVANJ IF ~InParty("Kivan") InMyArea("Kivan") !StateCheck("Kivan",CD_STATE_NOTVALID)~ THEN @189
END
		++ @190 + WIAmaran4
		++ @191 + WIAmaran5
		++ @192 + WIAmaran6

CHAIN WIAMARAN WIAmaran4
	@193
	== SKIEJ IF ~InParty("Skie") InMyArea("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ THEN @194
END
		++ @195 + WIAmaran7
		++ @196 + WIAmaran5

CHAIN WIAMARAN WIAmaran5
	@197
	== MONTAJ IF ~InParty("Montaron") InMyArea("Montaron") !StateCheck("Montaron",CD_STATE_NOTVALID)~ THEN @198
END
		++ @199 + WIAmaran8
		++ @200 + WIAmaran8

CHAIN WIAMARAN WIAmaran6
	@201
END
		++ @202 + WIAmaran4
		++ @203 + WIAmaran5
		
CHAIN WIAMARAN WIAmaran7
	@204
	== %EDWIN_JOINED% IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @205
	== DYNAHJ IF ~InParty("Dynaheir") InMyArea("Dynaheir") !StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN @206
END
		++ @203 + WIAmaran5

CHAIN WIAMARAN WIAmaran8
	@207 DO ~SetGlobal("WIShDruidQuestion","GLOBAL",1) SetGlobal("WIAnkhegAmbush","GLOBAL",1) StartCutSceneMode() StartCutSceneEx("WIcuts8",TRUE) EscapeArea()~ EXIT