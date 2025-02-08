BEGIN WIBARMAI

IF ~NumTimesTalkedTo(0) Global("IllaseraScene1","GLOBAL",0)~ THEN BEGIN WIBarmaid0
	SAY @208
IF ~~ EXIT
END

IF ~NumTimesTalkedToGT(0) Dead("Marl") Global("IllaseraScene1","GLOBAL",0)~ THEN BEGIN WIBarmaid1
	SAY @209
IF ~~ EXIT
END

IF ~NumTimesTalkedToGT(0) !Dead("Marl") Global("IllaseraScene1","GLOBAL",0)~ THEN BEGIN WIBarmaid2
	SAY @210
IF ~~ EXIT
END

CHAIN IF ~Global("IllaseraScene1","GLOBAL",1)~ THEN WIBARMAI WIBarmaid3
	@211 EXTERN WIillase il6.0
	
CHAIN WIBARMAI WIBarmaid4
	@212 DO ~SetGlobal("IllaseraScene1","GLOBAL",2) StartCutSceneEx("WIcuts3",TRUE) StartCutSceneMode()~ EXIT

CHAIN IF ~Global("IllaseraScene1","GLOBAL",2)~ THEN WIBARMAI WIBarmaid5
	@213 
END
		+ ~Global("WIRubyWine","%Beregost_FeldepostsInn_L1%",1)~ + @214 + WIBarmaid6
		+ ~Global("WIBerduskan","%Beregost_FeldepostsInn_L1%",1)~ + @215 + WIBarmaid7
		+ ~Global("WIEvermead","%Beregost_FeldepostsInn_L1%",1)~ + @216 + WIBarmaid8
		+ ~Global("WIFeldTea","%Beregost_FeldepostsInn_L1%",1)~ + @217 + WIBarmaid9
		+ ~Global("WIFeldAle","%Beregost_FeldepostsInn_L1%",1)~ + @218 + WIBarmaid10
		+ ~Global("WIFeldWater","%Beregost_FeldepostsInn_L1%",1)~ + @219 + WIBarmaid11

CHAIN WIBARMAI WIBarmaid6
	@220 EXTERN WIillase il6.41

CHAIN WIBARMAI WIBarmaid7
	@221 EXTERN WIillase il6.41
	
CHAIN WIBARMAI WIBarmaid8
	@222 EXTERN WIillase il6.41
	
CHAIN WIBARMAI WIBarmaid9
	@223 EXTERN WIillase il6.41

CHAIN WIBARMAI WIBarmaid10
	@224 EXTERN WIillase il6.41
	
CHAIN WIBARMAI WIBarmaid11
	@225 EXTERN WIillase il6.41
