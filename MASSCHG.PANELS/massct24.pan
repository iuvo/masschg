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
   The$SETVVMMmacro is another included macro that will set the version
   and/or modification level for each processed member.  The macro requires a
   parameter in one of the following three forms where vv and mm are whole
   numbers:

     vv.mm- Set the version to vv and the level to mm
     vv   - Set the version to vv
     .mm  - Set the level to mm

   Version (vv) can range from 01-99 and modification level (mm) from 00-99.


                           (continued on next page)
)INIT
)PROC
   &ZCONT = MASSCT25
   &ZUP = MASSCT00
)END
