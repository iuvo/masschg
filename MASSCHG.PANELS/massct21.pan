)PANEL
)ATTR DEFAULT() FORMAT(MIX)
 0D TYPE(PS)
 05 TYPE(PT)
 09 TYPE(FP)
 0A TYPE(NT)
 10 TYPE(ET)
 11 TYPE(SAC)
 22 TYPE(WASL) SKIP(ON) GE(ON)
 26 TYPE(NEF) CAPS(ON) PADC(USER)
 27 AREA(SCRL) EXTEND(ON)
)BODY  EXPAND() CMD(ZCMD)
	Tutorial - Edit Macro Mass Change Facility -Tutorial
Command ===>ZCMD                                                             

   The$CHGITmacro is included in this package as a working example of how
   to use the MACPARM variables.

   To use this macro, enter $CHGIT in the macro field, the from string in
   MACPARM1, the to string in MACPARM2, and other options (columns, ALL,
   LAST, etc.) in MACPARM3.  Remember to use quotes when necessary to
   delimit the from and to strings.

   If the resulting CHANGE command contains an error, a message will be
   displayed.  In this error situation, the MASSEXIT macro will be
   called to set the MASSEXIT variable so no additional members will be
   processed.

                           (continued on next page)
)PROC
   &ZCONT = MASSCT22
   &ZUP = MASSCT00
)END
