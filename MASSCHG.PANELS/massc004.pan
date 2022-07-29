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
       You have chosen to restore ISPF statistics. This option causes
       MASSCHG to reset the statistics (other than the Version, Mod level,
       and Size fields) back to what they were before the Editor was
       invoked.  This option is useful in many situations but affects the
       integrity of the member statistics.


Restore ISPF statistics  . . .Z   (YES or NO)

PressENTERto continue
)INIT
 .HELP  = MASSCT11
 .ZVARS = '(MASSSTAT)'
 &ZCMD = ''
)PROC
 &STAT = TRUNC (&MASSSTAT,1)
 &MASSSTAT = TRANS (&STAT Y,'YES' N,'NO' *,*)
 VER(&MASSSTAT,NONBLANK,LIST,YES,NO)
 VPUT (MASSSTAT) PROFILE
)END
