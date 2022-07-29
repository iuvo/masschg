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

    Macro parameter: (optional)

         Enter a parameter to be passed to the edit macro.  Additional
         data can be passed using the MACPARM Shared Pool variables.
         The included $FNDIT macro shows an example of this usage.

    Restore ISPF statistics:

         EnterYESto indicate that the member statistics are to be reset
         back to what they were before the member was edited.  If YES is
         indicated, a confirmation panel is displayed. Statistics can only
         be reset if editing a single data set.

    Execution mode:

         Enter eitherFfor foreground execution orBfor batch
         execution.  If Batch is selected, another panel will be displayed
         to indicate if you want to edit the JCL before submission, control
         if progress information should be written, and Job Statements.

                           (continued on next page)
)PROC
   &ZCONT = MASSCT12
   &ZUP = MASSCT00
)END
