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
   The$FNDITmacro is included in this package as a working example of how
   to use the Macro parameter field.

   To use this macro, enter $FNDIT in the macro field and a valid Find string,
   e.g.'ISREDIT' 1 20in the macro parameter field.

   If the resulting Find command contains an error, a message will be
   displayed.  In this error situation, the MASSEXIT macro will be called
   to set the MASSEXIT variable so no additional members will be processed.

   When running in the foreground, the macro will display any member with data
   matching the Find command so you can perform any updates and then END.
   Members where the string is not found will be bypassed.

   When running in batch, the member, line number, and line will be written
   to the SYSTSPRT DD for each line matching the FIND command.

                           (continued on next page)
)PROC
   &ZCONT = MASSCT23
   &ZUP = MASSCT00
)END
