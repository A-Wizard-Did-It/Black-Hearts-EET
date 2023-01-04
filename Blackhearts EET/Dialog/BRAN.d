BEGIN BRAN

IF ~Global("BHBG1Quest","GLOBAL",1) !PartyHasItem("WIHELM01")~ THEN BEGIN WIbran0
	SAY @174
	IF ~~ EXIT
END 

IF ~Global("BHBG1Quest","GLOBAL",1) PartyHasItem("WIHELM01")~ THEN BEGIN WIbran1
	SAY @175
	IF ~~ EXIT
END 

IF ~Global("BranTalk","GLOBAL",0)~ THEN BEGIN WIbran2
	SAY @176 IF ~~ THEN DO ~SetGlobal("BranTalk","GLOBAL",1)~ EXIT
END 	

IF ~Global("BranTalk","GLOBAL",1)~ THEN BEGIN WIbran3
	SAY @177
	IF ~~ EXIT
END 