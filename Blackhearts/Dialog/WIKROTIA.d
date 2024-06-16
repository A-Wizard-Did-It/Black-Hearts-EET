BEGIN WIKROTIA

CHAIN IF ~NumTimesTalkedTo(0)~ THEN WIKROTIA WIKrotia1
	@2822
END
		++ @2823 + WIKrotia2
		+ ~CheckStatGT(Player1,12,CHR)~ + @2824 + WIKrotia4
		+ ~CheckStatLT(Player1,13,CHR)~ + @2825 + WIKrotia3
		
CHAIN IF ~Global("WIKROTIASTATE","GLOBAL",1)~ THEN WIKROTIA WIKrotia31
	@2826 EXIT

CHAIN IF ~Global("WIKROTIASTATE","GLOBAL",2)~ THEN WIKROTIA WIKrotia32
	@2827 EXIT
		
CHAIN WIKROTIA WIKrotia2
	@2828 DO ~Enemy()~ EXIT
	
CHAIN WIKROTIA WIKrotia3
	@2829 DO ~Enemy()~ EXIT
	
CHAIN WIKROTIA WIKrotia4
	@2830
END
		++ @2831 + WIKrotia5
		+ ~CheckStatLT(Player1,14,CHR)~ + @2832 + WIKrotia6
		+ ~CheckStatGT(Player1,13,CHR)~ + @2832 + WIKrotia25
		+ ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ + @2833 EXTERN EDWINJ_ BHEdwinInt4

CHAIN WIKROTIA WIKrotia5
	@2834
	== FALDOJ IF  ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @2835
	== SHARTJ IF ~InParty("SharTeel") InMyArea("SharTeel") !StateCheck("SharTeel",CD_STATE_NOTVALID)~ THEN @2836
END	
		++ @2837 + WIKrotia7
		++ @2838 + WIKrotia7
		++ @2839 + WIKrotia9
		++ @2840 + WIKrotia2
		
CHAIN WIKROTIA WIKrotia6
	@2841 DO ~Enemy()~ EXIT
	
CHAIN WIKROTIA WIKrotia7
	@2842
	== RASAADJ_ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @2843
END
		++ @2844 + WIKrotia9
		++ @2845 + WIKrotia8
		++ @2846 + WIKrotia2

CHAIN WIKROTIA WIKrotia8
	@2847
END
		++ @2844 + WIKrotia9
		++ @2846 + WIKrotia2

CHAIN WIKROTIA WIKrotia9
	@2848
	== RASAADJ_ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @2843
END
		++ @2849 + WIKrotia11
		++ @2850 + WIKrotia12
		++ @2851 + WIKrotia13
		++ @2852 + WIKrotia14
	
CHAIN WIKROTIA WIKrotia10
	@2853
END
		++ @2849 + WIKrotia11
		++ @2850 + WIKrotia12
		++ @2851 + WIKrotia13
		++ @2852 + WIKrotia14
		++ @2854 + WIKrotia2

CHAIN WIKROTIA WIKrotia11
	@2855 EXTERN WIKROTIA WIKrotia10

CHAIN WIKROTIA WIKrotia12
	@2856 EXTERN WIKROTIA WIKrotia10

CHAIN WIKROTIA WIKrotia13
	@2857 EXTERN WIKROTIA WIKrotia10

CHAIN WIKROTIA WIKrotia14
	@2858
	== DYNAHJ IF ~InParty("Dynaheir") InMyArea("Dynaheir") !StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN @2859
END
		++ @2860 + WIKrotia15
		++ @2861 + WIKrotia16
		+ ~PartyHasItem("WISCRL02")~ + @2862 + WIKrotia18

CHAIN WIKROTIA WIKrotia15
	@2863
END
		+ ~!PartyHasItem("WISCRL02")~ + @2864 + WIKrotia17
		+ ~PartyHasItem("WISCRL02")~ + @2865 + WIKrotia18

CHAIN WIKROTIA WIKrotia16
	@2866
END
		+ ~!PartyHasItem("WISCRL02")~ + @2867 + WIKrotia2
		+ ~PartyHasItem("WISCRL02")~ + @2868 + WIKrotia18

CHAIN WIKROTIA WIKrotia17
	@2869 DO ~Enemy()~ EXIT

CHAIN WIKROTIA WIKrotia18
	@2870 DO ~TakePartyItem("WISCRL02")~ EXTERN WIKROTIA WIKrotia19

CHAIN WIKROTIA WIKrotia19
	@2871
	== YESLIJ IF ~InParty("Yeslick") InMyArea("Yeslick") !StateCheck("Yeslick",CD_STATE_NOTVALID)~ THEN @2872
END
		++ @2873 + WIKrotia20
		
CHAIN WIKROTIA WIKrotia20
	@2874
	= @2875
	= @2876
	= @2877 DO ~GiveItemCreate("WIMISC07",Player1,0,0,0) AddJournalEntry(@133,QUEST) SetGlobal("WIKROTIASTATE","GLOBAL",1)~ EXTERN WIKROTIA WIKrotia21

CHAIN WIKROTIA WIKrotia21
	@2878
END
		++ @2879 + WIKrotia22
		++ @2880 + WIKrotia23
		++ @2881 + WIKrotia24
		++ @2882 DO ~EscapeArea()~ EXIT

CHAIN WIKROTIA WIKrotia22
	@2883
END
		++ @2880 + WIKrotia23
		++ @2881 + WIKrotia24
		++ @2882 DO ~EscapeArea()~ EXIT

CHAIN WIKROTIA WIKrotia23
	@2884
END
		++ @2879 + WIKrotia22
		++ @2881 + WIKrotia24
		++ @2882 DO ~EscapeArea()~ EXIT

CHAIN WIKROTIA WIKrotia24
	@2885
END
		++ @2879 + WIKrotia22
		++ @2880 + WIKrotia23
		++ @2882 DO ~EscapeArea()~ EXIT

CHAIN WIKROTIA WIKrotia25
	@2886
	= @2887
	= @2888
	= @2889
END
		++ @2890 + WIKrotia26
		++ @2891 + WIKrotia27
		++ @2892 + WIKrotia28

CHAIN WIKROTIA WIKrotia26
	@2893
	= @2894
END
		++ @2891 + WIKrotia27
		++ @2892 + WIKrotia28

CHAIN WIKROTIA WIKrotia27
	@2895
END
		++ @2890 + WIKrotia26
		++ @2892 + WIKrotia28

CHAIN WIKROTIA WIKrotia28
	@2896
END
		+ ~CheckStatLT(Player1,15,CHR)~ + @2897 + WIKrotia6
		+ ~CheckStatGT(Player1,14,CHR)~ + @2898 + WIKrotia29

CHAIN WIKROTIA WIKrotia29
	@2899 DO ~GiveItemCreate("WIMISC07",Player1,0,0,0) AddJournalEntry(@133,QUEST) SetGlobal("WIKROTIASTATE","GLOBAL",2)~ EXTERN WIKROTIA WIKrotia30

CHAIN WIKROTIA WIKrotia30
	@2900 DO ~ChangeAIScript("",CLASS) ChangeAIScript("",RACE) ChangeAIScript("",OVERRIDE) EscapeArea()~ EXIT

CHAIN WIKROTIA WIKrotia33
	@2901
END
		++ @2831 + WIKrotia5
		+ ~CheckStatLT(Player1,14,CHR)~ + @2832 + WIKrotia6
		+ ~CheckStatGT(Player1,13,CHR)~ + @2832 + WIKrotia25