glabel func_8084D3E4
/* 1B1D4 8084D3E4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 1B1D8 8084D3E8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1B1DC 8084D3EC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 1B1E0 8084D3F0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 1B1E4 8084D3F4 8C8E0680 */  lw      $t6, 0x0680($a0)           ## 00000680
/* 1B1E8 8084D3F8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1B1EC 8084D3FC 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 1B1F0 8084D400 35CF0040 */  ori     $t7, $t6, 0x0040           ## $t7 = 00000040
/* 1B1F4 8084D404 AC8F0680 */  sw      $t7, 0x0680($a0)           ## 00000680
/* 1B1F8 8084D408 0C2132FD */  jal     func_8084CBF4              
/* 1B1FC 8084D40C 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 1B200 8084D410 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 1B204 8084D414 0C028EF0 */  jal     func_800A3BC0              
/* 1B208 8084D418 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 1B20C 8084D41C 1040002C */  beq     $v0, $zero, .L8084D4D0     
/* 1B210 8084D420 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 1B214 8084D424 8E030440 */  lw      $v1, 0x0440($s0)           ## 00000440
/* 1B218 8084D428 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1B21C 8084D42C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 1B220 8084D430 0C20F03A */  jal     func_8083C0E8              
/* 1B224 8084D434 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 1B228 8084D438 8E18067C */  lw      $t8, 0x067C($s0)           ## 0000067C
/* 1B22C 8084D43C 3C01FF7F */  lui     $at, 0xFF7F                ## $at = FF7F0000
/* 1B230 8084D440 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FF7FFFFF
/* 1B234 8084D444 0301C824 */  and     $t9, $t8, $at              
/* 1B238 8084D448 AE19067C */  sw      $t9, 0x067C($s0)           ## 0000067C
/* 1B23C 8084D44C AE000118 */  sw      $zero, 0x0118($s0)         ## 00000118
/* 1B240 8084D450 3C088016 */  lui     $t0, %hi(gGameInfo)
/* 1B244 8084D454 8D08FA90 */  lw      $t0, %lo(gGameInfo)($t0)
/* 1B248 8084D458 24040018 */  addiu   $a0, $zero, 0x0018         ## $a0 = 00000018
/* 1B24C 8084D45C 0C00D6D3 */  jal     Flags_GetEventChkInf
              
/* 1B250 8084D460 A5000E60 */  sh      $zero, 0x0E60($t0)         ## 80160E60
/* 1B254 8084D464 14400006 */  bne     $v0, $zero, .L8084D480     
/* 1B258 8084D468 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 1B25C 8084D46C 3C098016 */  lui     $t1, %hi(gGameInfo)
/* 1B260 8084D470 8D29FA90 */  lw      $t1, %lo(gGameInfo)($t1)
/* 1B264 8084D474 852A0556 */  lh      $t2, 0x0556($t1)           ## 80160556
/* 1B268 8084D478 51400029 */  beql    $t2, $zero, .L8084D520     
/* 1B26C 8084D47C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084D480:
/* 1B270 8084D480 C4640024 */  lwc1    $f4, 0x0024($v1)           ## 00000024
/* 1B274 8084D484 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 1B278 8084D488 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 1B27C 8084D48C 4600218D */  trunc.w.s $f6, $f4                   
/* 1B280 8084D490 440C3000 */  mfc1    $t4, $f6                   
/* 1B284 8084D494 00000000 */  nop
/* 1B288 8084D498 A44C134A */  sh      $t4, 0x134A($v0)           ## 8015F9AA
/* 1B28C 8084D49C C4680028 */  lwc1    $f8, 0x0028($v1)           ## 00000028
/* 1B290 8084D4A0 4600428D */  trunc.w.s $f10, $f8                  
/* 1B294 8084D4A4 440E5000 */  mfc1    $t6, $f10                  
/* 1B298 8084D4A8 00000000 */  nop
/* 1B29C 8084D4AC A44E134C */  sh      $t6, 0x134C($v0)           ## 8015F9AC
/* 1B2A0 8084D4B0 C470002C */  lwc1    $f16, 0x002C($v1)          ## 0000002C
/* 1B2A4 8084D4B4 4600848D */  trunc.w.s $f18, $f16                 
/* 1B2A8 8084D4B8 44189000 */  mfc1    $t8, $f18                  
/* 1B2AC 8084D4BC 00000000 */  nop
/* 1B2B0 8084D4C0 A458134E */  sh      $t8, 0x134E($v0)           ## 8015F9AE
/* 1B2B4 8084D4C4 847900B6 */  lh      $t9, 0x00B6($v1)           ## 000000B6
/* 1B2B8 8084D4C8 10000014 */  beq     $zero, $zero, .L8084D51C   
/* 1B2BC 8084D4CC A4591350 */  sh      $t9, 0x1350($v0)           ## 8015F9B0
.L8084D4D0:
/* 1B2C0 8084D4D0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 1B2C4 8084D4D4 0C030129 */  jal     Gameplay_GetCamera              
/* 1B2C8 8084D4D8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1B2CC 8084D4DC 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1B2D0 8084D4E0 0C0169DF */  jal     func_8005A77C              
/* 1B2D4 8084D4E4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 1B2D8 8084D4E8 8208043C */  lb      $t0, 0x043C($s0)           ## 0000043C
/* 1B2DC 8084D4EC 3C058085 */  lui     $a1, %hi(D_808549C4)       ## $a1 = 80850000
/* 1B2E0 8084D4F0 24A549C4 */  addiu   $a1, $a1, %lo(D_808549C4)  ## $a1 = 808549C4
/* 1B2E4 8084D4F4 05010006 */  bgez    $t0, .L8084D510            
/* 1B2E8 8084D4F8 240A281D */  addiu   $t2, $zero, 0x281D         ## $t2 = 0000281D
/* 1B2EC 8084D4FC 3C058085 */  lui     $a1, %hi(D_808549C4)       ## $a1 = 80850000
/* 1B2F0 8084D500 24A549C4 */  addiu   $a1, $a1, %lo(D_808549C4)  ## $a1 = 808549C4
/* 1B2F4 8084D504 24092828 */  addiu   $t1, $zero, 0x2828         ## $t1 = 00002828
/* 1B2F8 8084D508 10000002 */  beq     $zero, $zero, .L8084D514   
/* 1B2FC 8084D50C A4A90002 */  sh      $t1, 0x0002($a1)           ## 808549C6
.L8084D510:
/* 1B300 8084D510 A4AA0002 */  sh      $t2, 0x0002($a1)           ## 808549C6
.L8084D514:
/* 1B304 8084D514 0C20CA49 */  jal     func_80832924              
/* 1B308 8084D518 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8084D51C:
/* 1B30C 8084D51C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084D520:
/* 1B310 8084D520 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 1B314 8084D524 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 1B318 8084D528 03E00008 */  jr      $ra                        
/* 1B31C 8084D52C 00000000 */  nop
