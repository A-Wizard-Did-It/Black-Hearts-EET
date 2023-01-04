BEGIN BLANE

IF ~Global("BHBG1Quest","GLOBAL",1) !PartyHasItem("WIHELM01")~ THEN BEGIN WIblane0
	SAY @166
	IF ~~ EXIT
END 

IF ~Global("BHBG1Quest","GLOBAL",1) PartyHasItem("WIHELM01")~ THEN WIblane1
	SAY @167
	IF ~~ EXIT
END 

IF ~Global("BlaneTalk","GLOBAL",0)~ THEN BEGIN WIblane2
	SAY @168
		++ @169 GOTO WIblane3
		++ @170 GOTO WIblane4
END 	

IF ~~ THEN BEGIN WIblane3
	SAY @171 IF ~~ THEN DO ~SetGlobal("BlaneTalk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN WIblane4
	SAY @172 IF ~~ THEN DO ~SetGlobal("BlaneTalk","GLOBAL",1)~ EXIT
END

IF ~Global("BlaneTalk","GLOBAL",1)~ THEN BEGIN WIblane5
	SAY @173
	IF ~~ EXIT
END 
