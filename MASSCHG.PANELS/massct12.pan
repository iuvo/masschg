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
    Variables available via the Shared Pool: (optional)

        The MACPARM1-MACPARM4 fields enable you to pass additional
         parameters to your edit macro.  Your macro can use the VGET
         service to retrieve the variables from the Shared variable
         pool.  The included$CHGITmacro shows an example of this usage.

    Other Shared Pool variables available to your macro:

        MASSEXIT- Can be set toYESand VPUT to the Shared pool to
                    interrupt processing of the members.  Useful if you
                    forget to include an ISREDIT END or CANCEL in your macro
                    and you are processing a large list in the foreground
                    or you experience a macro error.
                    The includedMASSEXITmacro sets this variable.
        MASSMEM#- Number of the current member being edited
        MASSMEMT- Total number of members being edited
        MASSMEMF-YESif this is the first member being edited
        MASSMEML-YESif this is the last member being edited

                           (continued on next page)
)PROC
   &ZCONT = MASSCT13
   &ZUP = MASSCT00
)END
