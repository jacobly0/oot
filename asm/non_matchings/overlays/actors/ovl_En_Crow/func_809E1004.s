glabel func_809E1004
/* 00DC4 809E1004 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00DC8 809E1008 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00DCC 809E100C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00DD0 809E1010 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00DD4 809E1014 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00DD8 809E1018 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00DDC 809E101C 2484017C */  addiu   $a0, $a0, 0x017C           ## $a0 = 0000017C
/* 00DE0 809E1020 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 00DE4 809E1024 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00DE8 809E1028 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00DEC 809E102C 31CF0008 */  andi    $t7, $t6, 0x0008           ## $t7 = 00000000
/* 00DF0 809E1030 11E00004 */  beq     $t7, $zero, .L809E1044     
/* 00DF4 809E1034 24070C00 */  addiu   $a3, $zero, 0x0C00         ## $a3 = 00000C00
/* 00DF8 809E1038 8618007E */  lh      $t8, 0x007E($s0)           ## 0000007E
/* 00DFC 809E103C 10000005 */  beq     $zero, $zero, .L809E1054   
/* 00E00 809E1040 A61801C8 */  sh      $t8, 0x01C8($s0)           ## 000001C8
.L809E1044:
/* 00E04 809E1044 8619008A */  lh      $t9, 0x008A($s0)           ## 0000008A
/* 00E08 809E1048 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00E0C 809E104C 03214021 */  addu    $t0, $t9, $at              
/* 00E10 809E1050 A60801C8 */  sh      $t0, 0x01C8($s0)           ## 000001C8
.L809E1054:
/* 00E14 809E1054 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 00E18 809E1058 860501C8 */  lh      $a1, 0x01C8($s0)           ## 000001C8
/* 00E1C 809E105C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00E20 809E1060 860501C6 */  lh      $a1, 0x01C6($s0)           ## 000001C6
/* 00E24 809E1064 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00E28 809E1068 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 00E2C 809E106C 24070100 */  addiu   $a3, $zero, 0x0100         ## $a3 = 00000100
/* 00E30 809E1070 860201C4 */  lh      $v0, 0x01C4($s0)           ## 000001C4
/* 00E34 809E1074 10400003 */  beq     $v0, $zero, .L809E1084     
/* 00E38 809E1078 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 00E3C 809E107C A60901C4 */  sh      $t1, 0x01C4($s0)           ## 000001C4
/* 00E40 809E1080 860201C4 */  lh      $v0, 0x01C4($s0)           ## 000001C4
.L809E1084:
/* 00E44 809E1084 54400004 */  bnel    $v0, $zero, .L809E1098     
/* 00E48 809E1088 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E4C 809E108C 0C2780D5 */  jal     func_809E0354              
/* 00E50 809E1090 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E54 809E1094 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809E1098:
/* 00E58 809E1098 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00E5C 809E109C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E60 809E10A0 03E00008 */  jr      $ra                        
/* 00E64 809E10A4 00000000 */  nop
