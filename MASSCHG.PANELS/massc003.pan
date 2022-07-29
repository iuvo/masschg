)PANEL
)ATTR DEFAULT() FORMAT(MIX)
 0D TYPE(PS)
 05 TYPE(PT)
 08 TYPE(CH)
 09 TYPE(FP)
 0A TYPE(NT)
 11 TYPE(SAC)
 13 TYPE(NEF)  PADC(USER)
 22 TYPE(WASL) SKIP(ON) GE(ON)
 26 TYPE(NEF) CAPS(ON) PADC(USER)
 27 AREA(SCRL) EXTEND(ON)
  ~ TYPE(OUTPUT) CAPS(OFF)
)BODY  EXPAND()
	- Edit Macro Mass Change Facility -
Command ===>ZCMD                                                             


Edit JCL  . . . . .Z   (YES or NO)  (If YES, you must do the SUBMIT)

Show Progress . . .Z   (YES or NO)  (Output each member and return code)

Job Statement Information:
 . . .MASSJOB1                                                                
 . . .MASSJOB2                                                                
 . . .MASSJOB3                                                                
 . . .MASSJOB4                                                                

PressENTERto continue
)INIT
 .HELP = MASSCT13
 .ZVARS = '(MASSEDIT MASSPROG)'
 IF (&MASSEDIT = ' ')
   &MASSEDIT = 'NO'
 IF (&MASSPROG = ' ')
   &MASSPROG = 'YES'
 &ZCMD = ''
)PROC
 &EDIT = TRUNC (&MASSEDIT,1)
 &MASSEDIT = TRANS (&EDIT Y,'YES' N,'NO' *,*)
 &PROG = TRUNC (&MASSPROG,1)
 &MASSPROG = TRANS (&PROG Y,'YES' N,'NO' *,*)
 VER(&MASSEDIT,NONBLANK,LIST,YES,NO)
 VER(&MASSMODE,NONBLANK,LIST,F,B)
 VPUT (MASSEDIT) PROFILE
 VPUT (MASSJOB1,MASSJOB2,MASSJOB3,MASSJOB4) PROFILE
)END
