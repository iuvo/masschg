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
  TheEdit Macro Mass Change Facilityuses the EDIT service with an initial
   edit macro to perform its function.  Your initial edit macro should (must
   in batch mode) contain anISREDIT ENDorISREDIT CANCELstatement as the
   last statement in the macro so that the edit screen is not displayed.

   Edit macros can only be called implicitly.  That is, they must be a
   member of a PDS in your SYSEXEC or SYSPROC concatenation or in an ALTLIB'd
   data set.  Program macros (written in COBOL, for example) must exist in
   a PDS in the ISPLLIB DD or a LIBDEF'd data set.  To indicate a macro is a
   program macro, it must be prefixed with an !, e.g. !DOIT.

   In addition to the single macro parameter that is passed directly to
   the edit macro, this facility provides four shared pool variables
   (MACPARM1 through MACPARM4) which can be used to pass information to
   the edit macro.  The processing macro can use the VGET service to get
   the values of these variables and use them to affect processing.  The
   variables are available in both foreground and batch operation.

                           (continued on next page)
)PROC
   &ZCONT = MASSCT21
   &ZUP = MASSCT00
)END
