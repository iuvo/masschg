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
Option  ===>ZCMD                                                             
SAREA39                                                                       
)AREA SAREA39
                     -----------------------------------
                     ¦ Edit Macro Mass Change Facility ¦
                     -----------------------------------

  TheEdit Macro Mass Change Facilityis an ISPF dialog that uses the ISPF
   Editor and an edit macro to edit all (or a subset) of members from one to
   four partitioned data sets.  Editing can be performed either in the
   foreground or in batch.  If multiple data sets are entered, a composite
   member list will be presented for member selection.  Any changes will be
   stored in the first data set.  Using an empty first data set will cause all
   changes to be stored there.  You can then use SuperC to compare the source
   data set(s) to that target data set to verify results.

  The following topics are presented in sequence, or may be selected by
   entering a selection code in the option field:

      1Entry Panel    - Information on the entry panel fields
      2Member List    - Commands available from the member list
      3Macro Examples - Example Macros for use with this dialog
      4Batch Mode     - Special considerations for batch mode
)PROC
   &ZSEL = TRANS(&ZCMD
                1,MASSCT10
                2,MASSCT15
                3,MASSCT20
                4,MASSCT30
                )
)PNTS
FIELD(ZPS01001) VAR(ZCMD) VAL(1)
FIELD(ZPS01002) VAR(ZCMD) VAL(2)
FIELD(ZPS01003) VAR(ZCMD) VAL(3)
FIELD(ZPS01004) VAR(ZCMD) VAL(4)
)END
