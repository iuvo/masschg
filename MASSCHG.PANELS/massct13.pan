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
 If the Batch option is selected, a second panel will be shown on which you
  can enter the following:

    Edit JCL:

         Enter eitherYESorNOto indicate whether you want to edit the JCL
         that has been created.  If YES is indicated, you must enter the
         SUBMIT command to submit the job.  If NO is indicated, the job will
         be submitted for you automatically.

    Show Progress:

         Enter eitherYESorNOto indicate whether you want MASSCHG to write
         the time, member name and its return code to the batch output.

    Job Statement Information:

         Enter your job information that you wish to use for the batch job.
         These fields will be included into the JCL to be submitted.  The
         first time you use MASSCHG, the job statement information used for the
         the ISPF LOG and LIST JCL will be used to initialize these fields.
)PROC
   &ZUP = MASSCT00
)END
