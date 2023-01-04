BEGIN WIELENAI

CHAIN IF ~NumTimesTalkedTo(0) Global("BHBG1Quest","GLOBAL",2)~ THEN WIELENAI WIelenai0
	@389
	== NEERAJ_ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @390
END
		++ @391 + WIelenai1
		++ @392 + WIelenai2

CHAIN WIELENAI WIelenai1
	@393
END	
	++ @394 + WIelenai2

CHAIN WIELENAI WIelenai2
	@395
	= @396
	= @397
	= @398
	= @399
	== KHALIJ IF ~InParty("Khalid") InMyArea("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN @400
	== JAHEIJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Khalid") InMyArea("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN @401
	== WIELENAI IF ~InParty("Khalid") InMyArea("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN @402
END
		++ @403 DO ~SetGlobal("ElenairFavor","GLOBAL",1)~ + WIelenai3
		++ @404 + WIelenai4
		++ @405 + WIelenai5

CHAIN WIELENAI WIelenai3
	@406
	== SHARTJ IF ~InParty("SharTeel") InMyArea("SharTeel") !StateCheck("SharTeel",CD_STATE_NOTVALID)~ THEN @407
END
		++ @408 + WIelenai6
		++ @409 + WIelenai8
 
CHAIN WIELENAI WIelenai4
	@410
END
		++ @411 + WIelenai5

CHAIN WIELENAI WIelenai5
	@412 EXTERN WIELENAI WIelenai8

CHAIN WIELENAI WIelenai6
	@413
	== MINSCJ_ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @414
END
		++ @415 + WIelenai7
		++ @416 + WIelenai7

CHAIN WIELENAI WIelenai7
	@417 EXTERN WIELENAI WIelenai8

CHAIN WIELENAI WIelenai8
	@418
END
		++ @419 + WIelenai9
		++ @420 + WIelenai10
		++ @421 EXIT

CHAIN WIELENAI WIelenai9
	@422
	== KIVANJ IF ~InParty("Kivan") InMyArea("Kivan") !StateCheck("Kivan",CD_STATE_NOTVALID)~ THEN @423
END
		+ ~Global("ElenairCompassion","LOCALS","1")~ + @424 + WIelenai11
		++ @425 EXIT
		++ @426 EXIT

CHAIN WIELENAI WIelenai10
	@427
END
		++ @428 + WIelenai9
		++ @421 EXIT

CHAIN WIELENAI WIelenai11
	@429 EXIT

CHAIN IF ~NumTimesTalkedToGT(0) Global("BHBG1Quest","GLOBAL",2) Global("ElenairCompassion","LOCALS","1")~ THEN WIELENAI WIelenai12
	@430 EXIT

CHAIN IF ~NumTimesTalkedToGT(0) Global("BHBG1Quest","GLOBAL",2) Global("ElenairCompassion","LOCALS","0")~ THEN WIELENAI WIelenai13
	@431 EXIT

CHAIN IF ~NumTimesTalkedToGT(0) Global("BHBG1Quest","GLOBAL",2) Global("ElenairCompassion","LOCALS","0")~ THEN WIELENAI WIelenai14
	@432 EXIT
