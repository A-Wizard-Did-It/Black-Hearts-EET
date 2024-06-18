BEGIN WIpresfi

CHAIN IF ~NumTimesTalkedTo(0) Global("WIpresfiSave","GLOBAL",0)~ THEN WIpresfi pr5.0
	@3136
	== VICONJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3137
	== BRANWJ IF ~InParty("Branwen") InMyArea("Branwen") !StateCheck("Branwen",CD_STATE_NOTVALID)~ THEN @3138
	== AJANTJ IF ~InParty("Ajantis") InMyArea("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @3139
	== YESLIJ IF ~InParty("Yeslick") InMyArea("Yeslick") !StateCheck("Yeslick",CD_STATE_NOTVALID)~ THEN @3140
END
		++ @3141 + pr5.1
		+ ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ + @3142 EXTERN VICONJ BHViconiaInt1 
		+ ~InParty("Branwen") InMyArea("Branwen") !StateCheck("Branwen",CD_STATE_NOTVALID)~ + @3143 EXTERN BRANWJ BHBranwenInt1
		+ ~InParty("Ajantis") InMyArea("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ + @3144 EXTERN AJANTJ BHAjantisInt1
		+ ~InParty("Yeslick") InMyArea("Yeslick") !StateCheck("Yeslick",CD_STATE_NOTVALID)~ + @3145 EXTERN YESLIJ BHYeslickInt1
		+ ~Class(Player1,CLERIC_ALL) Gender([PC],Female)~ + @3146 + pr5.4
		+ ~Class(Player1,CLERIC_ALL) Gender([PC],Male)~ + @3147 + pr5.5
		++ @3148 + pr5.2
	
CHAIN WIpresfi pr5.1
	@3149
END
		++ @3150 + pr5.3
		++ @3151 + pr5.2
		++ @3152 EXIT

CHAIN WIpresfi pr5.2
	@3153 DO ~Kill(Myself)~ EXIT

CHAIN WIpresfi pr5.3
	@3154
END
		++ @3155 + pr5.2
		++ @3156 EXIT
	
CHAIN WIpresfi pr5.4
	@3157 DO ~SetGlobal("WIpresfiSave","GLOBAL",1) DestroySelf() StartCutSceneEx("WIcuts0",TRUE)~ EXIT

CHAIN WIpresfi pr5.5
	@3157 DO ~SetGlobal("WIpresfiSave","GLOBAL",1) DestroySelf() StartCutSceneEx("WIcuts1",TRUE)~ EXIT

CHAIN IF ~NumTimesTalkedToGT(0) Global("WIpresfiSave","GLOBAL",0)~ THEN WIpresfi pr5.6
	@3136
	== VICONJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3137
	== BRANWJ IF ~InParty("Branwen") InMyArea("Branwen") !StateCheck("Branwen",CD_STATE_NOTVALID)~ THEN @3138
	== AJANTJ IF ~InParty("Ajantis") InMyArea("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @3139
	== YESLIJ IF ~InParty("Yeslick") InMyArea("Yeslick") !StateCheck("Yeslick",CD_STATE_NOTVALID)~ THEN @3140
END
		++ @3141 + pr5.1
		+ ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ + @3142 EXTERN VICONJ BHViconiaInt1 
		+ ~InParty("Branwen") InMyArea("Branwen") !StateCheck("Branwen",CD_STATE_NOTVALID)~ + @3143 EXTERN BRANWJ BHBranwenInt1
		+ ~InParty("Ajantis") InMyArea("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ + @3144 EXTERN AJANTJ BHAjantisInt1
		+ ~InParty("Yeslick") InMyArea("Yeslick") !StateCheck("Yeslick",CD_STATE_NOTVALID)~ + @3145 EXTERN YESLIJ BHYeslickInt1
		+ ~Class(Player1,CLERIC_ALL) Gender([PC],Female)~ + @3146 + pr5.4
		+ ~Class(Player1,CLERIC_ALL) Gender([PC],Male)~ + @3147 + pr5.5
		++ @3148 + pr5.2
		
CHAIN IF ~Global("WIpresfiSave","GLOBAL",1)~ THEN WIpresfi pr5.7
	@3158
	== %IMOEN_JOINED% IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @3159
END
		++ @3160 + pr5.8
		++ @3161 + pr5.9
		++ @3162 + pr5.10

CHAIN WIpresfi pr5.8
	@3163
	== XZARJ IF ~InParty("Xzar") InMyArea("Xzar") !StateCheck("Xzar",CD_STATE_NOTVALID)~ THEN @3164
	== DYNAHJ IF ~InParty("Dynaheir") InMyArea("Dynaheir") !StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN @3165
	== WIPRESFI IF ~InParty("Dynaheir") InMyArea("Dynaheir") !StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN @3166
END
		++ @3167 + pr5.11
		++ @3168 + pr5.10

CHAIN WIpresfi pr5.9
	@3169
	== XZARJ IF ~InParty("Xzar") InMyArea("Xzar") !StateCheck("Xzar",CD_STATE_NOTVALID)~ THEN @3164
	== DYNAHJ IF ~InParty("Dynaheir") InMyArea("Dynaheir") !StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN @3165
	== WIPRESFI IF ~InParty("Dynaheir") InMyArea("Dynaheir") !StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN @3166
END
		++ @3170 + pr5.11
		++ @3171 + pr5.10

CHAIN WIpresfi pr5.10
	@3172 EXTERN WIpresfi pr5.12

CHAIN WIpresfi pr5.11
	@3173
	== XANJ IF ~InParty("Xan") InMyArea("Xan") !StateCheck("Xan",CD_STATE_NOTVALID)~ THEN @3174
	== WIPRESFI @3175
	== SHARTJ IF ~InParty("SharTeel") InMyArea("SharTeel") !StateCheck("SharTeel",CD_STATE_NOTVALID)~ THEN @3176
	== WIPRESFI @3177
	= @3178
END
		++ @3179 + pr5.13
		++ @3180 + pr5.10

CHAIN WIpresfi pr5.12
	@3181
	== SAFANJ IF ~InParty("Safana") InMyArea("Safana") !StateCheck("Safana",CD_STATE_NOTVALID)~ THEN @3182
END
		++ @3183 + pr5.14
		++ @3184 + pr5.15

CHAIN WIpresfi pr5.13
	@3185 EXTERN WIpresfi pr5.12

CHAIN WIpresfi pr5.14
	@3186
END
		++ @3187 + pr5.15

CHAIN WIpresfi pr5.15
	@3188 DO ~GiveItemCreate("WIMISC02",Player1,0,0,0)~ EXTERN WIpresfi pr5.16

CHAIN WIpresfi pr5.16
	@3189
	== KHALIJ IF ~InParty("Khalid") InMyArea("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN @3190
	== JAHEIJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Khalid") InMyArea("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN @3191
	== KHALIJ IF ~InParty("Khalid") InMyArea("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3192
	== JAHEIJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Khalid") InMyArea("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN @3193
END
		++ @3194 + pr5.17
		++ @3195 + pr5.18

CHAIN WIpresfi pr5.17
@3196 DO ~EscapeArea()~ EXIT

CHAIN WIpresfi pr5.18
@3197 DO ~EscapeArea()~ EXIT
