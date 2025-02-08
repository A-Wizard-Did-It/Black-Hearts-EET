BEGIN WIFIREG2

CHAIN IF ~NumTimesTalkedTo(0)~ THEN WIFIREG2 WIFGB1
	@433
= @434
= @435 DO ~
	ClearActions(Player2)
	ClearActions(Player3)
	ClearActions(Player4)
	ClearActions(Player5)
	ClearActions(Player6)
	ClearActions(Player1)
	StartCutSceneEx("WIcuts21",TRUE)
	StartCutSceneMode()~ EXIT
