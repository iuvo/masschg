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
   The$LOGITmacro is an example that uses the MASSMEMx variables to log
   information found in the members to a data set.  This enables your macro
   to allocate and open the data set before the first member and close and
   free the data set after the last member.

   To use this macro, enter $LOGIT in the macro field and a valid Find string,
   e.g.'ISREDIT' 1 20in the macro parameter field. The macro will assume
   the ALL parameter so do not include it. The macro will allocate a
   userid.$LOGIT.CSV data set to write the results (member name, number of
   lines, number of strings found, and the number of lines with the string) as
   a comma-delimited file.

   If running in foreground, the data set will be viewed after the last member
   is processed.

   Because $LOGIT is only being used to gather information and not make any
   changes, the macro contains anISREDIT CANCELcommand.  If you use this
   as the basis for other macros that may also make changes, you will want to
   instead use theISREDIT ENDcommand to save any changes.

                           (continued on next page)
)PROC
   &ZCONT = MASSCT24
   &ZUP = MASSCT00
)END
