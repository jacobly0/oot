.rdata
glabel D_80A170EC
    .asciz "Warning : dousa 3 消滅 が呼ばれずにデモが終了した(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80A17138
    .asciz "../z_en_sakana.c"
    .balign 4

glabel D_80A1714C
    .asciz "デモ魚消滅\n"
    .balign 4

glabel D_80A17158
    .asciz "不正なデモ動作(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80A17180
    .asciz "../z_en_sakana.c"
    .balign 4

.text
glabel func_80A16A64
/* 017E4 80A16A64 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 017E8 80A16A68 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 017EC 80A16A6C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 017F0 80A16A70 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 017F4 80A16A74 8CA21D90 */  lw      $v0, 0x1D90($a1)           ## 00001D90
/* 017F8 80A16A78 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 017FC 80A16A7C 3C0480A1 */  lui     $a0, %hi(D_80A170EC)       ## $a0 = 80A10000
/* 01800 80A16A80 1440000C */  bne     $v0, $zero, .L80A16AB4     
/* 01804 80A16A84 248470EC */  addiu   $a0, $a0, %lo(D_80A170EC)  ## $a0 = 80A170EC
/* 01808 80A16A88 3C0580A1 */  lui     $a1, %hi(D_80A17138)       ## $a1 = 80A10000
/* 0180C 80A16A8C 24A57138 */  addiu   $a1, $a1, %lo(D_80A17138)  ## $a1 = 80A17138
/* 01810 80A16A90 24060491 */  addiu   $a2, $zero, 0x0491         ## $a2 = 00000491
/* 01814 80A16A94 0C00084C */  jal     osSyncPrintf
              
/* 01818 80A16A98 8607001C */  lh      $a3, 0x001C($s0)           ## 0000001C
/* 0181C 80A16A9C 0C285511 */  jal     func_80A15444              
/* 01820 80A16AA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01824 80A16AA4 0C00B55C */  jal     Actor_Kill
              
/* 01828 80A16AA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0182C 80A16AAC 1000006A */  beq     $zero, $zero, .L80A16C58   
/* 01830 80A16AB0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A16AB4:
/* 01834 80A16AB4 860F024C */  lh      $t7, 0x024C($s0)           ## 0000024C
/* 01838 80A16AB8 8619024E */  lh      $t9, 0x024E($s0)           ## 0000024E
/* 0183C 80A16ABC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01840 80A16AC0 25F80111 */  addiu   $t8, $t7, 0x0111           ## $t8 = 00000111
/* 01844 80A16AC4 27280500 */  addiu   $t0, $t9, 0x0500           ## $t0 = 00000500
/* 01848 80A16AC8 A618024C */  sh      $t8, 0x024C($s0)           ## 0000024C
/* 0184C 80A16ACC A608024E */  sh      $t0, 0x024E($s0)           ## 0000024E
/* 01850 80A16AD0 94430000 */  lhu     $v1, 0x0000($v0)           ## 00000000
/* 01854 80A16AD4 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 01858 80A16AD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0185C 80A16ADC 10610008 */  beq     $v1, $at, .L80A16B00       
/* 01860 80A16AE0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01864 80A16AE4 1061000A */  beq     $v1, $at, .L80A16B10       
/* 01868 80A16AE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0186C 80A16AEC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01870 80A16AF0 1061000C */  beq     $v1, $at, .L80A16B24       
/* 01874 80A16AF4 3C0480A1 */  lui     $a0, %hi(D_80A1714C)       ## $a0 = 80A10000
/* 01878 80A16AF8 10000012 */  beq     $zero, $zero, .L80A16B44   
/* 0187C 80A16AFC 3C0480A1 */  lui     $a0, %hi(D_80A17158)       ## $a0 = 80A10000
.L80A16B00:
/* 01880 80A16B00 0C285A26 */  jal     func_80A16898              
/* 01884 80A16B04 AFA2004C */  sw      $v0, 0x004C($sp)           
/* 01888 80A16B08 10000016 */  beq     $zero, $zero, .L80A16B64   
/* 0188C 80A16B0C 8FA2004C */  lw      $v0, 0x004C($sp)           
.L80A16B10:
/* 01890 80A16B10 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 01894 80A16B14 0C285A72 */  jal     func_80A169C8              
/* 01898 80A16B18 AFA2004C */  sw      $v0, 0x004C($sp)           
/* 0189C 80A16B1C 10000011 */  beq     $zero, $zero, .L80A16B64   
/* 018A0 80A16B20 8FA2004C */  lw      $v0, 0x004C($sp)           
.L80A16B24:
/* 018A4 80A16B24 0C00084C */  jal     osSyncPrintf
              
/* 018A8 80A16B28 2484714C */  addiu   $a0, $a0, %lo(D_80A1714C)  ## $a0 = 0000714C
/* 018AC 80A16B2C 0C285511 */  jal     func_80A15444              
/* 018B0 80A16B30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018B4 80A16B34 0C00B55C */  jal     Actor_Kill
              
/* 018B8 80A16B38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018BC 80A16B3C 10000046 */  beq     $zero, $zero, .L80A16C58   
/* 018C0 80A16B40 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A16B44:
/* 018C4 80A16B44 3C0580A1 */  lui     $a1, %hi(D_80A17180)       ## $a1 = 80A10000
/* 018C8 80A16B48 8607001C */  lh      $a3, 0x001C($s0)           ## 0000001C
/* 018CC 80A16B4C AFA2004C */  sw      $v0, 0x004C($sp)           
/* 018D0 80A16B50 24A57180 */  addiu   $a1, $a1, %lo(D_80A17180)  ## $a1 = 80A17180
/* 018D4 80A16B54 24847158 */  addiu   $a0, $a0, %lo(D_80A17158)  ## $a0 = 00007158
/* 018D8 80A16B58 0C00084C */  jal     osSyncPrintf
              
/* 018DC 80A16B5C 240604B0 */  addiu   $a2, $zero, 0x04B0         ## $a2 = 000004B0
/* 018E0 80A16B60 8FA2004C */  lw      $v0, 0x004C($sp)           
.L80A16B64:
/* 018E4 80A16B64 8C4C0018 */  lw      $t4, 0x0018($v0)           ## 00000018
/* 018E8 80A16B68 8C49000C */  lw      $t1, 0x000C($v0)           ## 0000000C
/* 018EC 80A16B6C 8C4A0010 */  lw      $t2, 0x0010($v0)           ## 00000010
/* 018F0 80A16B70 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 018F4 80A16B74 8C4B0014 */  lw      $t3, 0x0014($v0)           ## 00000014
/* 018F8 80A16B78 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 018FC 80A16B7C 46805420 */  cvt.s.w $f16, $f10                 
/* 01900 80A16B80 448A3000 */  mtc1    $t2, $f6                   ## $f6 = 0.00
/* 01904 80A16B84 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 01908 80A16B88 8FAF005C */  lw      $t7, 0x005C($sp)           
/* 0190C 80A16B8C 468020A0 */  cvt.s.w $f2, $f4                   
/* 01910 80A16B90 E7B00034 */  swc1    $f16, 0x0034($sp)          
/* 01914 80A16B94 8C4D001C */  lw      $t5, 0x001C($v0)           ## 0000001C
/* 01918 80A16B98 448D9000 */  mtc1    $t5, $f18                  ## $f18 = 0.00
/* 0191C 80A16B9C 46803320 */  cvt.s.w $f12, $f6                  
/* 01920 80A16BA0 46809120 */  cvt.s.w $f4, $f18                  
/* 01924 80A16BA4 468043A0 */  cvt.s.w $f14, $f8                  
/* 01928 80A16BA8 E7A40038 */  swc1    $f4, 0x0038($sp)           
/* 0192C 80A16BAC 8C4E0020 */  lw      $t6, 0x0020($v0)           ## 00000020
/* 01930 80A16BB0 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 01934 80A16BB4 00000000 */  nop
/* 01938 80A16BB8 46803220 */  cvt.s.w $f8, $f6                   
/* 0193C 80A16BBC E7A8003C */  swc1    $f8, 0x003C($sp)           
/* 01940 80A16BC0 94450002 */  lhu     $a1, 0x0002($v0)           ## 00000002
/* 01944 80A16BC4 94440004 */  lhu     $a0, 0x0004($v0)           ## 00000004
/* 01948 80A16BC8 95E61D74 */  lhu     $a2, 0x1D74($t7)           ## 00001D74
/* 0194C 80A16BCC E7AE0048 */  swc1    $f14, 0x0048($sp)          
/* 01950 80A16BD0 E7AC0044 */  swc1    $f12, 0x0044($sp)          
/* 01954 80A16BD4 0C01BE4F */  jal     Kankyo_InvLerp_u16              
/* 01958 80A16BD8 E7A20040 */  swc1    $f2, 0x0040($sp)           
/* 0195C 80A16BDC C7A20040 */  lwc1    $f2, 0x0040($sp)           
/* 01960 80A16BE0 C7AA0034 */  lwc1    $f10, 0x0034($sp)          
/* 01964 80A16BE4 C7AC0044 */  lwc1    $f12, 0x0044($sp)          
/* 01968 80A16BE8 C7AE0048 */  lwc1    $f14, 0x0048($sp)          
/* 0196C 80A16BEC 46025401 */  sub.s   $f16, $f10, $f2            
/* 01970 80A16BF0 3C0180A1 */  lui     $at, %hi(D_80A17014)       ## $at = 80A10000
/* 01974 80A16BF4 26180024 */  addiu   $t8, $s0, 0x0024           ## $t8 = 00000024
/* 01978 80A16BF8 26050078 */  addiu   $a1, $s0, 0x0078           ## $a1 = 00000078
/* 0197C 80A16BFC 46008482 */  mul.s   $f18, $f16, $f0            
/* 01980 80A16C00 27A6002C */  addiu   $a2, $sp, 0x002C           ## $a2 = FFFFFFD4
/* 01984 80A16C04 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 01988 80A16C08 46029100 */  add.s   $f4, $f18, $f2             
/* 0198C 80A16C0C E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
/* 01990 80A16C10 C7A60038 */  lwc1    $f6, 0x0038($sp)           
/* 01994 80A16C14 C4327014 */  lwc1    $f18, %lo(D_80A17014)($at) 
/* 01998 80A16C18 460C3201 */  sub.s   $f8, $f6, $f12             
/* 0199C 80A16C1C 46004282 */  mul.s   $f10, $f8, $f0             
/* 019A0 80A16C20 460C5400 */  add.s   $f16, $f10, $f12           
/* 019A4 80A16C24 46128100 */  add.s   $f4, $f16, $f18            
/* 019A8 80A16C28 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 019AC 80A16C2C C7A6003C */  lwc1    $f6, 0x003C($sp)           
/* 019B0 80A16C30 460E3201 */  sub.s   $f8, $f6, $f14             
/* 019B4 80A16C34 46004282 */  mul.s   $f10, $f8, $f0             
/* 019B8 80A16C38 460E5400 */  add.s   $f16, $f10, $f14           
/* 019BC 80A16C3C E610002C */  swc1    $f16, 0x002C($s0)          ## 0000002C
/* 019C0 80A16C40 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 019C4 80A16C44 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 019C8 80A16C48 0C00F269 */  jal     func_8003C9A4              
/* 019CC 80A16C4C 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 019D0 80A16C50 E6000080 */  swc1    $f0, 0x0080($s0)           ## 00000080
/* 019D4 80A16C54 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A16C58:
/* 019D8 80A16C58 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 019DC 80A16C5C 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 019E0 80A16C60 03E00008 */  jr      $ra                        
/* 019E4 80A16C64 00000000 */  nop
