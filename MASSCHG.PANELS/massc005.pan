)ATTR
  _ TYPE(INPUT) CAPS(OFF) INTENS(HIGH)
  | AREA(DYNAMIC) SCROLL(ON) EXTEND(ON)
  + TYPE(TEXT) INTENS(LOW)
  $ TYPE(OUTPUT) INTENS(HIGH) JUST(RIGHT) PAD(0)
 01 TYPE(DATAIN) INTENS(HIGH) CAPS(ON)
 02 TYPE(DATAOUT) INTENS(LOW)
 03 TYPE(DATAIN)  INTENS(HIGH) CAPS(ON)
 04 TYPE(DATAOUT)  INTENS(LOW)
 05 TYPE(DATAOUT)  INTENS(HIGH)
 06 TYPE(DATAOUT)  INTENS(LOW)
 0D TYPE(PS)
 08 TYPE(CH)
 09 TYPE(FP)
 0A TYPE(NT)
 10 TYPE(ET)
 11 TYPE(SAC)
 13 TYPE(NEF)  PADC(USER)
 16 TYPE(VOI) PADC(USER)
 22 TYPE(WASL) SKIP(ON) GE(ON)
 26 TYPE(NEF) CAPS(ON) PADC(USER)
 27 AREA(SCRL) EXTEND(ON)
 28 TYPE(FP)
  ~ TYPE(OUTPUT) CAPS(OFF)
)BODY WIDTH(80)
Z           Z                                         RowZ      ofZ      
Command ===>Z                                               Scroll ===>Z   
  S- Select member  X- Exclude member  B- Browse  E-Edit  V-View
  EnterEndcommand to process selections orCancelto leave the member list.

&ZMLCOLS
|ZDATA ------------------------------------------------------------------------|
|                                                                              |
| -----------------------------------------------------------------------------|
)INIT
  .ZVARS = '(MASSCHGT ZDSN ZMLCR ZMLTR ZCMD ZSCML)'
  &MASSCHGT = 'Mass Change'
  .ATTR(ZMLCR)='JUST(RIGHT) PAD(''0'')'
  .ATTR(ZMLTR)='JUST(RIGHT) PAD(''0'')'
  .HELP = MASSCT15
  &ZCMD = ''
)PROC
  &MEMZCMD = &ZCMD
  VPUT (ZSCML) PROFILE
)END
