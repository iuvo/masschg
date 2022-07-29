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
  The following Rexx macro is a simple example of a macro that could be used
   with this facility.  The macro saves the User State (various profile
   settings as well as last find/change strings), sets the BOUNDS to default,
   uses CHANGE with Picture Strings to change all lowercase characters to
   uppercase, restores the User State, and then ENDs.  END will perform a SAVE
   before exiting the member if any changes were made.

                  /* Rexx                              */
                  Address ISREDIT "MACRO"
                  Address ISREDIT "(USTATE) = USER&UNDER.STATE"
                  Address ISREDIT "BOUNDS"
                  Address ISREDIT "C ALL P'<' P'>' "
                  Address ISREDIT "USER&UNDER.STATE = (USTATE)"
                  Address ISREDIT "END"

)INIT
  &UNDER = _
)PROC
   &ZUP = MASSCT00
)END
