glabel func_809691BC
/* 0286C 809691BC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02870 809691C0 00067880 */  sll     $t7, $a2,  2               
/* 02874 809691C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02878 809691C8 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 0287C 809691CC AFA60038 */  sw      $a2, 0x0038($sp)           
/* 02880 809691D0 00AFC021 */  addu    $t8, $a1, $t7              
/* 02884 809691D4 8F021D8C */  lw      $v0, 0x1D8C($t8)           ## 00001D8C
/* 02888 809691D8 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 0288C 809691DC 8C4A0018 */  lw      $t2, 0x0018($v0)           ## 00000018
/* 02890 809691E0 8C59000C */  lw      $t9, 0x000C($v0)           ## 0000000C
/* 02894 809691E4 8C480010 */  lw      $t0, 0x0010($v0)           ## 00000010
/* 02898 809691E8 448A5000 */  mtc1    $t2, $f10                  ## $f10 = 0.00
/* 0289C 809691EC 8C490014 */  lw      $t1, 0x0014($v0)           ## 00000014
/* 028A0 809691F0 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 028A4 809691F4 46805420 */  cvt.s.w $f16, $f10                 
/* 028A8 809691F8 44883000 */  mtc1    $t0, $f6                   ## $f6 = 0.00
/* 028AC 809691FC 44894000 */  mtc1    $t1, $f8                   ## $f8 = 0.00
/* 028B0 80969200 468020A0 */  cvt.s.w $f2, $f4                   
/* 028B4 80969204 E7B00018 */  swc1    $f16, 0x0018($sp)          
/* 028B8 80969208 8C4B001C */  lw      $t3, 0x001C($v0)           ## 0000001C
/* 028BC 8096920C 448B9000 */  mtc1    $t3, $f18                  ## $f18 = 0.00
/* 028C0 80969210 46803320 */  cvt.s.w $f12, $f6                  
/* 028C4 80969214 46809120 */  cvt.s.w $f4, $f18                  
/* 028C8 80969218 468043A0 */  cvt.s.w $f14, $f8                  
/* 028CC 8096921C E7A4001C */  swc1    $f4, 0x001C($sp)           
/* 028D0 80969220 8C4C0020 */  lw      $t4, 0x0020($v0)           ## 00000020
/* 028D4 80969224 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 028D8 80969228 00000000 */  nop
/* 028DC 8096922C 46803220 */  cvt.s.w $f8, $f6                   
/* 028E0 80969230 E7A80020 */  swc1    $f8, 0x0020($sp)           
/* 028E4 80969234 94E61D74 */  lhu     $a2, 0x1D74($a3)           ## 00001D74
/* 028E8 80969238 94450002 */  lhu     $a1, 0x0002($v0)           ## 00000002
/* 028EC 8096923C 94440004 */  lhu     $a0, 0x0004($v0)           ## 00000004
/* 028F0 80969240 E7AE002C */  swc1    $f14, 0x002C($sp)          
/* 028F4 80969244 E7AC0028 */  swc1    $f12, 0x0028($sp)          
/* 028F8 80969248 0C01BE4F */  jal     Kankyo_InvLerp_u16              
/* 028FC 8096924C E7A20024 */  swc1    $f2, 0x0024($sp)           
/* 02900 80969250 C7A20024 */  lwc1    $f2, 0x0024($sp)           
/* 02904 80969254 C7AA0018 */  lwc1    $f10, 0x0018($sp)          
/* 02908 80969258 8FA20030 */  lw      $v0, 0x0030($sp)           
/* 0290C 8096925C C7AC0028 */  lwc1    $f12, 0x0028($sp)          
/* 02910 80969260 46025401 */  sub.s   $f16, $f10, $f2            
/* 02914 80969264 C7AE002C */  lwc1    $f14, 0x002C($sp)          
/* 02918 80969268 46008482 */  mul.s   $f18, $f16, $f0            
/* 0291C 8096926C 46029100 */  add.s   $f4, $f18, $f2             
/* 02920 80969270 E4440024 */  swc1    $f4, 0x0024($v0)           ## 00000024
/* 02924 80969274 C7A6001C */  lwc1    $f6, 0x001C($sp)           
/* 02928 80969278 460C3201 */  sub.s   $f8, $f6, $f12             
/* 0292C 8096927C 46004282 */  mul.s   $f10, $f8, $f0             
/* 02930 80969280 460C5400 */  add.s   $f16, $f10, $f12           
/* 02934 80969284 E4500028 */  swc1    $f16, 0x0028($v0)          ## 00000028
/* 02938 80969288 C7B20020 */  lwc1    $f18, 0x0020($sp)          
/* 0293C 8096928C 460E9101 */  sub.s   $f4, $f18, $f14            
/* 02940 80969290 46002182 */  mul.s   $f6, $f4, $f0              
/* 02944 80969294 460E3200 */  add.s   $f8, $f6, $f14             
/* 02948 80969298 E448002C */  swc1    $f8, 0x002C($v0)           ## 0000002C
/* 0294C 8096929C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02950 809692A0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02954 809692A4 03E00008 */  jr      $ra                        
/* 02958 809692A8 00000000 */  nop
/* 0295C 809692AC 00000000 */  nop
