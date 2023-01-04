BEGIN WIthief2

IF ~~ THEN BEGIN WIthief2.0
	SAY @3276
IF ~~ EXIT
END

CHAIN WIthief2 WIthief2.1
	@3277 EXTERN WIthief1 WIthief1.2
	
CHAIN WIthief2 WIthief2.2
	@3278 EXTERN WIthief1 WIthief1.3
	
CHAIN WIthief2 WIthief2.3
	@3279 EXTERN WIthief1 WIthief1.4
	
CHAIN WIthief2 WIthief2.4
	@3280 EXTERN WInerys ne8.2

CHAIN WIthief2 WIthief2.5
	@3281 EXTERN WInerys ne8.3
	
CHAIN WIthief2 WIthief2.6
	@3282 EXTERN WInerys ne8.4

CHAIN WIthief2 WIthief2.7
	@3283 EXTERN WIthief1 WIthief1.7
	
CHAIN WIthief2 WIthief2.8
	@3284 EXTERN WInerys ne8.5

CHAIN WIthief2 WIthief2.9
	@3285 EXTERN WIthief1 WIthief1.9
	
CHAIN WIthief2 WIthief2.10
	@3286 EXTERN WInerys ne8.7
	
CHAIN WIthief2 WIthief2.11
	@3287 EXTERN WIthief1 WIthief1.11
	
CHAIN WIthief2 WIthief2.12
	@3288 DO ~EscapeArea()~ EXTERN WIthief1 WIthief1.12