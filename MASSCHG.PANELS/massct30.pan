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
  When batch mode is chosen, the dialog reads your current allocations for
   SYSPROC, SYSEXEC, ISPPLIB, ISPMLIB, ISPSLIB, ISPLLIB, and ISPTLIB and uses
   them to build the batch ISPF job.  ISPPROF is allocated to VIO.  The unit
   can be modified in the MASSCHG exec, if necesssary.

   When building the ISPTLIB JCL, the data set allocated to the ISPPROF DD,
   if found, will be excluded to prevent contention issues.

   The exec can be easily modified to copy other DDs to the JCL if necessary
   or to skip one or more data sets from the concatenations.
)PROC
   &ZUP = MASSCT00
   &ZCONT = MASSCT00
)END
