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
  Fill in the fields of the initial panel as follows:

    Data sets to be edited:

         Enter the name(s) of thepartitioneddata set(s) that you wish to
         edit using the edit macro.  Any changes will be stored into the
         first data set.

    Member list pattern:(optional)

         Enter the member pattern to be used to display the member
         list (e.g. ABC*, *A%%2, etc.).

    Name of edit macro:

         Enter the name of the ISPF edit macro that you wish to
         be run against each selected member.  If you are using
         a program macro, prefix the name with an !.

                           (continued on next page)
)PROC
   &ZCONT = MASSCT11
   &ZUP = MASSCT00
)END
