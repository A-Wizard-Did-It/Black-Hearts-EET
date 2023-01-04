BEGIN WIthief1

IF ~~ THEN BEGIN WIthief1.0
	SAY @3263
IF ~~ EXIT
END	

CHAIN WIthief1 WIthief1.1 
	@3264 EXTERN WIthief2 WIthief2.1

CHAIN WIthief1 WIthief1.2
	@3265 EXTERN WIthief2 WIthief2.2

CHAIN WIthief1 WIthief1.3
	@3266 EXTERN WIthief2 WIthief2.3
	
CHAIN WIthief1 WIthief1.4
	@3267 EXTERN WInerys ne8.1
	
CHAIN WIthief1 WIthief1.5
	@3268 EXTERN WIthief2 WIthief2.5
	
CHAIN WIthief1 WIthief1.6
	@3269 EXTERN WIthief2 WIthief2.7
	
CHAIN WIthief1 WIthief1.7
	@3270 EXTERN WIthief2 WIthief2.8

CHAIN WIthief1 WIthief1.8
	@3271 EXTERN WIthief2 WIthief2.9
	
CHAIN WIthief1 WIthief1.9
	@3272 EXTERN WInerys ne8.6
	
CHAIN WIthief1 WIthief1.10
	@3273 EXTERN WIthief2 WIthief2.10
	
CHAIN WIthief1 WIthief1.11
	@3274 EXTERN WIthief2 WIthief2.12
	
CHAIN WIthief1 WIthief1.12
	@3275 DO ~SetGlobal("WINerysMet","GLOBAL",1) EscapeArea()~ EXIT