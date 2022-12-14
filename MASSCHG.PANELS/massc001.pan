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
)BODY  EXPAND() CMD(ZCMD)
~Z   	- Edit Macro Mass Change Facility -----
Command ===>ZCMD                                                             

Data sets to be edited . . . .MASSCDSN                                       
   (Changes will be    . . . .MASSCDS2                                       
    saved into the     . . . .MASSCDS3                                       
    first data set.)   . . . .MASSCDS4                                       

Member list pattern  . . . . .MASSCPAT

Name of edit macro . . . . . .MASSCMAC  
Macro parameter  . . . . . . .MASSPARM                                       

Restore ISPF statistics  . . .Z  (YES or NO)

Execution mode . . . . . . . .Z  (F = Foreground, B = Batch)

Variables available to the macro via the Shared Pool:
MACPARM1 . . .MACPARM1                                                       
MACPARM2 . . .MACPARM2                                                       
MACPARM3 . . .MACPARM3                                                       
MACPARM4 . . .MACPARM4                                                       
)INIT
 .HELP = MASSCT00
 .ZVARS = '(MASSRLSE MASSSTAT MASSMODE)'
 IF (&MASSMODE = ' ')
   &MASSMODE = 'F'
 IF (&MASSSTAT = ' ')
   &MASSSTAT = 'NO'
 &ZCMD = ''
)PROC
 VER(&MASSCDSN,NONBLANK,DSNAMEQ)
 VER(&MASSCDS2,DSNAMEQ)
 VER(&MASSCDS3,DSNAMEQ)
 VER(&MASSCDS4,DSNAMEQ)
 VER(&MASSCMAC,NONBLANK)
 &STAT = TRUNC (&MASSSTAT,1)
 &MASSSTAT = TRANS (&STAT Y,'YES' N,'NO' *,*)
 VER(&MASSSTAT,NONBLANK,LIST,YES,NO)
 IF (&MASSSTAT = 'YES')
   VER(&MASSCDS2,LIST,' ',MSG=MASSC116)
   VER(&MASSCDS3,LIST,' ',MSG=MASSC116)
   VER(&MASSCDS4,LIST,' ',MSG=MASSC116)
 VER(&MASSMODE,NONBLANK,LIST,F,B)
 VPUT (MASSCDSN,MASSCPAT,MASSMODE,MASSCMAC) PROFILE
 VPUT (MASSPARM,MASSCDS2,MASSCDS3,MASSCDS4) PROFILE
 VPUT (MACPARM1,MACPARM2,MACPARM3,MACPARM4) PROFILE
)END
