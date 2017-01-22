; Sound Control Registers

; Sound 1 Mode Registers
NR10                            EQU $FF10
NR11                            EQU $FF11
NR12                            EQU $FF12
NR13                            EQU $FF13
NR14                            EQU $FF14

; Sound 2 Mode Registers
NR21                            EQU $FF16
NR22                            EQU $FF17
NR23                            EQU $FF18
NR24                            EQU $FF19

; Sound 3 Mode Registers
NR30                            EQU $FF1A
NR31                            EQU $FF1B
NR32                            EQU $FF1C
NR33                            EQU $FF1D
NR34                            EQU $FF1E

; Sound 4 Mode Registers
NR41                            EQU $FF20
NR42                            EQU $FF21
NR43                            EQU $FF22
NR44                            EQU $FF23

; Sound Control Registers
NR50                            EQU $FF24
NR51                            EQU $FF25
NR51_Sound1_to_TerminalSO1      EQU %00000001
NR51_Sound2_to_TerminalSO1      EQU %00000010
NR51_Sound3_to_TerminalSO1      EQU %00000100
NR51_Sound4_to_TerminalSO1      EQU %00001000
NR51_Sound1_to_TerminalSO2      EQU %00010000
NR51_Sound2_to_TerminalSO2      EQU %00100000
NR51_Sound3_to_TerminalSO2      EQU %01000000
NR51_Sound4_to_TerminalSO2      EQU %10000000
NR52                            EQU $FF26
NR52_Sound1_ON                  EQU %00000001
NR52_Sound1_OFF                 EQU 0
NR52_Sound2_ON                  EQU %00000010
NR52_Sound2_OFF                 EQU 0
NR52_Sound3_ON                  EQU %00000100
NR52_Sound3_OFF                 EQU 0
NR52_Sound4_ON                  EQU %00001000
NR52_Sound4_OFF                 EQU 0
NR52_AllSounds_ON               EQU %10000000
NR52_AllSounds_OFF              EQU 0
