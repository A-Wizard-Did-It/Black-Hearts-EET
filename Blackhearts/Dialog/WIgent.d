BEGIN WIgent

CHAIN IF ~NumTimesTalkedTo(0)~ THEN WIgent ge4.0
	@484 DO ~SetGlobal("GentleTalkedTo","GLOBAL",1)~
	== NEERAJ_ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @485
	== MINSCJ_ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @486
END
		++ @487 + ge4.1
		++ @488 + ge4.2
		++ @489 + ge4.3
	
CHAIN WIgent ge4.1
	@490
	== IMOEN2_ IF ~InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN @491
	== WIgent @492
	== RASAADJ_ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @493
END
		++ @494 + ge4.4
		++ @495 + ge4.5
		++ @496 + ge4.6
	
CHAIN WIgent ge4.2
	@497
END
		++ @498 + ge4.6
		++ @499 + ge4.4

CHAIN WIgent ge4.3
	@500
	== DORNJ_ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @501
	== WIgent IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @502
END
		++ @503 + ge4.7
		++ @504 + ge4.7
		++ @505 + ge4.5
	
CHAIN WIgent ge4.4
	@506
	== IMOEN2_ IF ~InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN @507
	== AJANTJ IF ~InParty("Ajantis") InMyArea("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @508
	== KIVANJ IF ~InParty("Kivan") InMyArea("Kivan") !StateCheck("Kivan",CD_STATE_NOTVALID)~ THEN @509
END
		++ @510 + ge4.8
		++ @511 + ge4.5
	
CHAIN WIgent ge4.5
	@512
	= @513
	== GARRIJ IF ~InParty("Garrick") InMyArea("Garrick") !StateCheck("Garrick",CD_STATE_NOTVALID)~ THEN @514
END		
		++ @515 + ge4.9
		++ @516 + ge4.10
		++ @517 + ge4.11
		++ @518 + ge4.6
		
CHAIN WIgent ge4.6
	@519
	== XANJ IF ~InParty("Xan") InMyArea("Xan") !StateCheck("Xan",CD_STATE_NOTVALID)~ THEN @520
END
		++ @515 + ge4.9
		++ @516 + ge4.10
		++ @517 + ge4.11
		++ @521 + ge4.12

CHAIN WIgent ge4.7
	@522 DO ~Enemy() ApplySpell(Myself,WIZARD_INVISIBILITY) SetGlobal("BHBG1Quest4spawn","%LionsWay%",2)~ EXIT

CHAIN WIgent ge4.8
	@523
	== DYNAHJ IF ~InParty("Dynaheir") InMyArea("Dynaheir") !StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN @524
	== WIgent IF ~InParty("Dynaheir") InMyArea("Dynaheir") !StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN @525
END
		++ @526 + ge4.5

CHAIN WIgent ge4.9
	@527
	== IMOEN2_ IF ~InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN @528
	== WIgent IF ~InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN @529
END
		++ @530 + ge4.13
		++ @531 + ge4.14

CHAIN WIgent ge4.10
	@532
	== BRANWJ IF ~InParty("Branwen") InMyArea("Branwen") !StateCheck("Branwen",CD_STATE_NOTVALID)~ THEN @533
END
		++ @534 + ge4.15
		++ @535 + ge4.16
		
CHAIN WIgent ge4.11
	@536 DO ~SetGlobal("GentleArgument3","LOCALS",1)~
	== IMOEN2_ IF ~InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN @537
END
		++ @538 + ge4.17
		+ ~CheckStatGT(Player1,13,CHR)~ + @539 + ge4.19
		++ @540 + ge4.18
		++ @541 + ge4.20
		++ @542 + ge4.21

CHAIN WIgent ge4.12
	@543
	== SHARTJ IF ~InParty("SharTeel") InMyArea("SharTeel") !StateCheck("SharTeel",CD_STATE_NOTVALID)~ THEN @544
END
		++ @545 + ge4.22
		++ @546 + ge4.7
		++ @547 + ge4.23

CHAIN WIgent ge4.13
	@548 DO ~SetGlobal("GentleArgument1","LOCALS",1)~
	== VICONJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @549
END	
		++ @550 + ge4.24
		++ @551 + ge4.25
		++ @552 + ge4.26
		+ ~CheckStatGT(Player1,13,CHR)~ + @553 + ge4.27
		++ @554 + ge4.28

CHAIN WIgent ge4.14
	@555
END
		++ @556 + ge4.23
		++ @557 + ge4.22
		
CHAIN WIgent ge4.15
	@558 DO ~SetGlobal("GentleArgument2","LOCALS",1)~
	== IMOEN2_ IF ~InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN @559
	== EDWINJ_ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @560
END
		+ ~CheckStatLT(Player1,16,INT)~ + @561 + ge4.29
		+ ~CheckStatGT(Player1,15,INT)~ + @562 + ge4.30
		+ ~InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ + @563 EXTERN IMOEN2_ BHImoenInt1
		+ ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ + @564 EXTERN EDWINJ_ BHEdwinInt1

CHAIN WIgent ge4.16
	@565 DO ~SetGlobal("GentleArgument2","LOCALS",1)~
	== IMOEN2_ IF ~InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN @566
	== EDWINJ_ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @567
END
		+ ~CheckStatLT(Player1,16,INT)~ + @561 + ge4.29
		+ ~CheckStatGT(Player1,15,INT)~ + @562 + ge4.30
		+ ~InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ + @563 EXTERN IMOEN2_ BHImoenInt1
		+ ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ + @564 EXTERN EDWINJ_ BHEdwinInt1
		
CHAIN WIgent ge4.17
	@568
END
		++ @569 + ge4.32

CHAIN WIgent ge4.18
	@570
END
		++ @571 + ge4.32
		++ @572 + ge4.32
		
CHAIN WIgent ge4.19
	@573 DO ~IncrementGlobal("GentleFavor","GLOBAL",1)~ EXTERN WIgent ge4.33

CHAIN WIgent ge4.20
	@574
END
		++ @575 + ge4.32

CHAIN WIgent ge4.21
	@576
END
		++ @577 + ge4.32
		++ @578 + ge4.32
		
CHAIN WIgent ge4.22
	@579
END
		+ ~Global("GentleArgument1","LOCALS",0)~ + @580 + ge4.9
		+ ~Global("GentleArgument2","LOCALS",0)~ + @581 + ge4.10
		+ ~Global("GentleArgument3","LOCALS",0)~ + @582 + ge4.11
		+ ~Global("GentleArgument1","LOCALS",1) Global("GentleArgument2","LOCALS",1) Global("GentleArgument3","LOCALS",1) GlobalLT("GentleFavor","GLOBAL",3)~ + @583 EXIT
		+ ~Global("GentleArgument1","LOCALS",1) Global("GentleArgument2","LOCALS",1) Global("GentleArgument3","LOCALS",1) GlobalLT("GentleFavor","GLOBAL",3)~ + @584 + ge4.7
		+ ~Global("GentleArgument1","LOCALS",1) Global("GentleArgument2","LOCALS",1) Global("GentleArgument3","LOCALS",1) GlobalGT("GentleFavor","GLOBAL",1)~ + @585 + ge4.41

CHAIN WIgent ge4.23
	@586 EXIT
	
CHAIN WIgent ge4.24
	@587
END
		++ @588 + ge4.32

CHAIN WIgent ge4.25
	@589
END
		++ @590 + ge4.32
		
CHAIN WIgent ge4.26
	@591
END
		++ @592 + ge4.32
		
CHAIN WIgent ge4.27
	@593 DO ~IncrementGlobal("GentleFavor","GLOBAL",1)~ EXTERN WIgent ge4.33
		
CHAIN WIgent ge4.28
	@594
END
		++ @595 + ge4.32

CHAIN WIgent ge4.29
	@596
END
		++ @597 + ge4.34
		++ @598 + ge4.35
		++ @599 + ge4.36

CHAIN WIgent ge4.30
	@600
END
		++ @601 + ge4.31
		
CHAIN WIgent ge4.31
	@602 DO ~SetGlobal("KnowEroBook","GLOBAL",1)~
	== SAFANJ IF ~InParty("Safana") InMyArea("Safana") !StateCheck("Safana",CD_STATE_NOTVALID)~ THEN @603
	== VICONJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @604
END
		++ @605 + ge4.37
		++ @606 + ge4.35
		++ @607 + ge4.36
		++ @608 + ge4.38
		+ ~CheckStatGT(Player1,13,CHR)~ + @609 + ge4.39

CHAIN WIgent ge4.32
	@610
END
		+ ~Global("GentleArgument1","LOCALS",0)~ + @580 + ge4.9
		+ ~Global("GentleArgument2","LOCALS",0)~ + @581 + ge4.10
		+ ~Global("GentleArgument3","LOCALS",0)~ + @582 + ge4.11
		+ ~Global("GentleArgument1","LOCALS",1) Global("GentleArgument2","LOCALS",1) Global("GentleArgument3","LOCALS",1)~ + @611 EXIT
		+ ~Global("GentleArgument1","LOCALS",1) Global("GentleArgument2","LOCALS",1) Global("GentleArgument3","LOCALS",1)~ + @584 + ge4.7
		+ ~Global("GentleArgument1","LOCALS",1) Global("GentleArgument2","LOCALS",1) Global("GentleArgument3","LOCALS",1) GlobalGT("GentleFavor","GLOBAL",1)~ + @612 + ge4.41

CHAIN WIgent ge4.33
	@613
END
		+ ~Global("GentleArgument1","LOCALS",0)~ + @580 + ge4.9
		+ ~Global("GentleArgument2","LOCALS",0)~ + @581 + ge4.10
		+ ~Global("GentleArgument3","LOCALS",0)~ + @582 + ge4.11
		+ ~Global("GentleArgument1","LOCALS",1) Global("GentleArgument2","LOCALS",1) Global("GentleArgument3","LOCALS",1)~ + @611 EXIT
		+ ~Global("GentleArgument1","LOCALS",1) Global("GentleArgument2","LOCALS",1) Global("GentleArgument3","LOCALS",1)~ + @584 + ge4.7
		+ ~Global("GentleArgument1","LOCALS",1) Global("GentleArgument2","LOCALS",1) Global("GentleArgument3","LOCALS",1) GlobalGT("GentleFavor","GLOBAL",1)~ + @612 + ge4.41

CHAIN WIgent ge4.34
	@614
END
		++ @615 + ge4.32

CHAIN WIgent ge4.35
	@616
END
		++ @617 + ge4.32

CHAIN WIgent ge4.36
	@618
END
		++ @619 + ge4.32

CHAIN WIgent ge4.37
	@620
END
		++ @621 + ge4.22
		
CHAIN WIgent ge4.38
	@622
END
		++ @623 + ge4.32
		
CHAIN WIgent ge4.39
	@624
END
		++ @625 + ge4.40

CHAIN WIgent ge4.40
	@626 DO ~SetGlobal("GentleArgument2","LOCALS",1) IncrementGlobal("GentleFavor","GLOBAL",1)~ EXTERN WIgent ge4.33

CHAIN WIgent ge4.41
	@627 DO ~AddExperienceParty(4000)~ EXTERN WIgent ge4.42

CHAIN WIgent ge4.42
	@628
	== IMOEN2_ IF ~InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN @629
	== WIgent @630
	= @631
END
		++ @632 + ge4.43

CHAIN WIgent ge4.43
	@633
	== IMOEN2_ IF ~InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN @634
	== NEERAJ_ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @635
	== WIgent @636
END
		++ @637 + ge4.44
		++ @638 + ge4.44

CHAIN WIgent ge4.44
	@639 DO ~GiveItemCreate("WIBOOK03",Player1,0,0,0) GiveItemCreate("WIRING01",Player1,0,0,0) SetGlobal("GentlemanAlive","GLOBAL",1)~
	= @640 DO ~EscapeArea()~ EXIT
	
CHAIN IF ~NumTimesTalkedToGT(0) !PartyHasItem("WIBOOK02")~ THEN WIgent ge4.45
	@641
END
		+ ~Global("GentleArgument1","LOCALS",0)~ + @515 + ge4.9
		+ ~Global("GentleArgument2","LOCALS",0)~ + @516 + ge4.10
		+ ~Global("GentleArgument3","LOCALS",0)~ + @517 + ge4.11
		+ ~Global("GentleArgument1","LOCALS",1) Global("GentleArgument2","LOCALS",1) Global("GentleArgument3","LOCALS",1)~ + @642 EXIT
		+ ~Global("GentleArgument1","LOCALS",1) Global("GentleArgument2","LOCALS",1) Global("GentleArgument3","LOCALS",1)~ + @643 + ge4.7
		+ ~Global("GentleArgument1","LOCALS",1) Global("GentleArgument2","LOCALS",1) Global("GentleArgument3","LOCALS",1) GlobalGT("GentleFavor","GLOBAL",1)~ + @644 + ge4.41

CHAIN IF ~NumTimesTalkedToGT(0) PartyHasItem("WIBOOK02")~ THEN WIgent ge4.46
	@645
END
	++ @646 + ge4.47
	
CHAIN WIgent ge4.47
	@647
	= @648 DO ~TakePartyItem("WIBOOK02") AddExperienceParty(4000)~ EXTERN WIgent ge4.42

