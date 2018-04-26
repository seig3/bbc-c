.__putchar
LDY #00
LDA (&8E),Y
JSR &FFEE
STA &70
RTS

.__getchar
JSR &FFE0
STA &70
RTS

.__osbyte
LDA &71
PHA
LDY #02
LDA (&8E),Y
STA &71
LDY #01
LDA (&8E),Y
TAX
LDY #00
LDA (&8E),Y
LDY &71
JSR &FFF4
PLA
STA &71
STA &70
RTS

.__fgets
LDA #0
STA &72
STA &73
.__fgets_1
LDA &73
LDY #3
CMP (&8E),Y
BCC __fgets_2
BNE __fgets_3
LDA &72
LDY #2
CMP (&8E),Y
BCS __fgets_3
.__fgets_2
JSR __getchar
LDA &70
LDY #0
STA (&8E),Y
CLC
LDA (&8E),Y
ADC #1
STA (&8E),Y
LDY #1
LDA (&8E),Y
ADC #0
STA (&8E),Y
INC &72
BNE __fgets_4
INC &73
.__fgets_4
JMP __fgets_1
.__fgets_3
RTS



\ Routines
._bbcc_pusha PHA
LDA &8E
BNE _bbcc_pusha_1
DEC &8F
._bbcc_pusha_1 
DEC &8E
PLA
LDY #00
STA (&8E),Y
RTS
._bbcc_pulla LDY #0
LDA (&8E),Y
INC &8E
BEQ _bbcc_pulla_1
RTS
._bbcc_pulla_1 
INC &8F
RTS

\ Label
._setup_global 

\ Return
RTS

\ Function
._start 

\ Set
LDA #&18
STA &8E
LDA #&00
STA &8F

\ JmpSub
JSR _setup_global

\ CallFunction
JSR __main
LDA &70
STA &72

\ Return
LDA &72
STA &70
RTS

\ Function
.__reverse 
LDA &78
PHA
LDA &79
PHA
LDA &7A
PHA
LDA &7B
PHA
LDA &76
PHA
LDA &77
PHA
LDA &74
PHA
LDA &75
PHA
LDA &72
PHA
LDA &73
PHA

\ Set
LDA #&00
STA &72
LDA #&00
STA &73

\ Set
LDA #&00
STA &74
LDA #&00
STA &75

\ Set
LDA #&00
STA &76

\ Set
LDA #&00
STA &72
LDA #&00
STA &73

\ Sub
SEC
LDA #0
STA &76
LDA #0
STA &77

\ Set
LDA &76
STA &74
LDA &77
STA &75

\ Label
.__bbcc_00000000 

\ LessThanCmp
LDA #00
STA &76
LDA &73
CMP &75
BCC __bbcc_00000004
BNE __bbcc_00000005
LDA &72
CMP &74
BCS __bbcc_00000005
.__bbcc_00000004 LDA #01
STA &77
.__bbcc_00000005 

\ JmpZero
LDA &76
BNE __bbcc_00000006
JMP __bbcc_00000001
.__bbcc_00000006 

\ Mult
LDA #&01
STA &78
LDA &72
STA &76
LDA &73
STA &77
LDA #0
STA &7A
STA &7B
LDX #&10
.__bbcc_00000007 
LSR &77
ROR &76
BCC __bbcc_00000008
CLC
LDA &78
ADC &7A
STA &7A
LDA #0
ADC &7B
STA &7B
.__bbcc_00000008 CLC
ASL &78
DEX
BNE __bbcc_00000007

\ Add
CLC
LDA #0
STA &76

\ ReadAt
LDA &77
STA &79
LDA &76
STA &78
LDY #&00
LDA (&78),Y
STA &7A

\ Set
LDA &7A
STA &76

\ Mult
LDA #&01
STA &78
LDA &74
STA &76
LDA &75
STA &77
LDA #0
STA &7A
STA &7B
LDX #&10
.__bbcc_00000009 
LSR &77
ROR &76
BCC __bbcc_0000000a
CLC
LDA &78
ADC &7A
STA &7A
LDA #0
ADC &7B
STA &7B
.__bbcc_0000000a CLC
ASL &78
DEX
BNE __bbcc_00000009

\ Add
CLC
LDA #0
STA &76

\ ReadAt
LDA &77
STA &79
LDA &76
STA &78
LDY #&00
LDA (&78),Y
STA &7A

\ Mult
LDA #&01
STA &78
LDA &72
STA &76
LDA &73
STA &77
LDA #0
STA &7A
STA &7B
LDX #&10
.__bbcc_0000000b 
LSR &77
ROR &76
BCC __bbcc_0000000c
CLC
LDA &78
ADC &7A
STA &7A
LDA #0
ADC &7B
STA &7B
.__bbcc_0000000c CLC
ASL &78
DEX
BNE __bbcc_0000000b

\ Add
CLC
LDA #0
STA &76

\ SetAt
LDA &76
STA &78
LDA &77
STA &79
LDA &7A
LDY #&00
STA (&78),Y

\ Mult
LDA #&01
STA &78
LDA &74
STA &76
LDA &75
STA &77
LDA #0
STA &7A
STA &7B
LDX #&10
.__bbcc_0000000d 
LSR &77
ROR &76
BCC __bbcc_0000000e
CLC
LDA &78
ADC &7A
STA &7A
LDA #0
ADC &7B
STA &7B
.__bbcc_0000000e CLC
ASL &78
DEX
BNE __bbcc_0000000d

\ Add
CLC
LDA #0
STA &76

\ SetAt
LDA &76
STA &78
LDA &77
STA &79
LDA &76
LDY #&00
STA (&78),Y

\ Set
LDA &72
STA &76
LDA &73
STA &77

\ Inc
INC &72
BNE __bbcc_0000000f
INC &73
.__bbcc_0000000f 

\ Set
LDA &74
STA &72
LDA &75
STA &73

\ Dec
LDA &74
BNE __bbcc_00000010
DEC &75
.__bbcc_00000010 
DEC &74

\ Jmp
JMP __bbcc_00000000

\ Label
.__bbcc_00000001 

\ Return
LDA #&00
STA &70
PLA
STA &75
PLA
STA &74
PLA
STA &7B
PLA
STA &7A
PLA
STA &79
PLA
STA &78
PLA
STA &77
PLA
STA &76
PLA
STA &73
PLA
STA &72
RTS

\ Function
.__itoa 
LDA &7A
PHA
LDA &7B
PHA
LDA &74
PHA
LDA &75
PHA
LDA &76
PHA
LDA &77
PHA
LDA &78
PHA
LDA &79
PHA
LDA &72
PHA
LDA &73
PHA

\ Set
LDA #&00
STA &72
LDA #&00
STA &73

\ Set
LDA #&00
STA &72
LDA #&00
STA &73

\ Label
.__bbcc_00000002 

\ Mod
LDY #&00
LDA (&8E),Y
STA &76
LDY #&01
LDA (&8E),Y
STA &77
LDA #&0A
STA &74
LDA #&00
STA &75
LDA #0
STA &78
STA &79
LDX #&10
.__bbcc_00000011 
ASL &76
ROL &77
ROL &78
ROL &79
SEC
LDA &78
SBC &74
PHA
LDA &79
SBC &75
BCC __bbcc_00000012
STA &79
PLA
STA &78
INC &76
JMP __bbcc_00000013
.__bbcc_00000012 
PLA
.__bbcc_00000013 DEX
BNE __bbcc_00000011

\ Add
CLC
LDA #0
STA &74
LDA #0
STA &75

\ Set
LDA &72
STA &74
LDA &73
STA &75

\ Inc
INC &72
BNE __bbcc_00000014
INC &73
.__bbcc_00000014 

\ Mult
LDA #&01
STA &78
LDA &74
STA &76
LDA &75
STA &77
LDA #0
STA &7A
STA &7B
LDX #&10
.__bbcc_00000015 
LSR &77
ROR &76
BCC __bbcc_00000016
CLC
LDA &78
ADC &7A
STA &7A
LDA #0
ADC &7B
STA &7B
.__bbcc_00000016 CLC
ASL &78
DEX
BNE __bbcc_00000015

\ Add
CLC
LDA #0
STA &74

\ SetAt
LDA &74
STA &76
LDA &75
STA &77
LDA &74
LDY #&00
STA (&76),Y
LDA &75
LDY #&01
STA (&76),Y

\ Div
LDY #&00
LDA (&8E),Y
STA &78
LDY #&01
LDA (&8E),Y
STA &79
LDA #&0A
STA &76
LDA #&00
STA &77
LDA #0
STA &74
STA &75
LDX #&10
.__bbcc_00000017 
ASL &78
ROL &79
ROL &74
ROL &75
SEC
LDA &74
SBC &76
PHA
LDA &75
SBC &77
BCC __bbcc_00000018
STA &75
PLA
STA &74
INC &78
JMP __bbcc_00000019
.__bbcc_00000018 
PLA
.__bbcc_00000019 DEX
BNE __bbcc_00000017
LDA &78
STA &7A
LDA &79
STA &7B

\ Set
LDA &7A
LDY #&00
STA (&8E),Y
LDA &7B
LDY #&01
STA (&8E),Y

\ MoreThanCmp
LDA #00
STA &74
LDY #&01
LDA (&8E),Y
CMP #&00
BCC __bbcc_0000001b
BNE __bbcc_0000001a
LDY #&00
LDA (&8E),Y
CMP #&00
BEQ __bbcc_0000001b
BCC __bbcc_0000001b
.__bbcc_0000001a LDA #01
STA &75
.__bbcc_0000001b 

\ JmpZero
LDA &74
BNE __bbcc_0000001c
JMP __bbcc_00000003
.__bbcc_0000001c 

\ Jmp
JMP __bbcc_00000002

\ Label
.__bbcc_00000003 

\ Mult
LDA #&01
STA &76
LDA &72
STA &74
LDA &73
STA &75
LDA #0
STA &78
STA &79
LDX #&10
.__bbcc_0000001d 
LSR &75
ROR &74
BCC __bbcc_0000001e
CLC
LDA &76
ADC &78
STA &78
LDA #0
ADC &79
STA &79
.__bbcc_0000001e CLC
ASL &76
DEX
BNE __bbcc_0000001d

\ Add
CLC
LDA #0
STA &72

\ SetAt
LDA &72
STA &74
LDA &73
STA &75
LDA #&00
LDY #&00
STA (&74),Y
LDA #&00
LDY #&01
STA (&74),Y

\ CallFunction
LDY #&02
LDA (&8E),Y
JSR _bbcc_pusha
LDA &72
JSR _bbcc_pusha
LDA &73
JSR _bbcc_pusha
JSR __reverse
CLC
LDA &8E
ADC #&03
STA &8E
LDA &8F
ADC #&00
STA &8F

\ Return
LDA #&00
STA &70
PLA
STA &7B
PLA
STA &7A
PLA
STA &77
PLA
STA &76
PLA
STA &79
PLA
STA &78
PLA
STA &73
PLA
STA &72
PLA
STA &75
PLA
STA &74
RTS

\ Function
.__main 
LDA &72
PHA
LDA &73
PHA
LDA &74
PHA
LDA &75
PHA

\ Mult
LDA #&03
STA &72
LDA #&00
STA &73
LDA #&0A
STA &70
LDA #&00
STA &71
LDA #0
STA &74
STA &75
LDX #&10
.__bbcc_0000001f 
LSR &71
ROR &70
BCC __bbcc_00000020
CLC
LDA &72
ADC &74
STA &74
LDA &73
ADC &75
STA &75
.__bbcc_00000020 CLC
ASL &72
ROL &73
DEX
BNE __bbcc_0000001f

\ Return
LDA &74
STA &70
LDA &75
STA &71
PLA
STA &73
PLA
STA &72
PLA
STA &75
PLA
STA &74
RTS
