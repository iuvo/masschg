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
 The following line commands can be used from the MASSCHG member list:

    S- Select a member to be processed
    X- Exclude a member that was previously selected
    B- Browse a member
    B- View a member
    E- Edit a member (statistics will be restored if requested)

  The above line commands can also be used with the member listS (SELECT)
  primary command to perform the functions.  For example, to select all
  members in the list except those starting with A, you can use theS*
  command and then theS A* Xcommand.  All other member list commands such
  as SORT, LOCATE, and SAVE are also available.

  When you have selected the members to be processed, enter theENDcommand
  to begin foreground processing or to submit the batch job.

  If you wish to cancel the selections and return to the initial entry
  panel, enter theCANCELcommand.
)PROC
   &ZUP = MASSCT00
)END
