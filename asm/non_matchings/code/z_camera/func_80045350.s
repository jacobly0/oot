glabel func_80045350
/* ABC4F0 80045350 00042C00 */  sll   $a1, $a0, 0x10
/* ABC4F4 80045354 00052C03 */  sra   $a1, $a1, 0x10
/* ABC4F8 80045358 27BDFFE8 */  addiu $sp, $sp, -0x18
/* ABC4FC 8004535C 30AEF000 */  andi  $t6, $a1, 0xf000
/* ABC500 80045360 3401F000 */  li    $at, 61440
/* ABC504 80045364 AFBF0014 */  sw    $ra, 0x14($sp)
/* ABC508 80045368 11C10026 */  beq   $t6, $at, .L80045404
/* ABC50C 8004536C AFA40018 */   sw    $a0, 0x18($sp)
/* ABC510 80045370 30A27000 */  andi  $v0, $a1, 0x7000
/* ABC514 80045374 24011000 */  li    $at, 4096
/* ABC518 80045378 1041000B */  beq   $v0, $at, .L800453A8
/* ABC51C 8004537C 30A88000 */   andi  $t0, $a1, 0x8000
/* ABC520 80045380 24012000 */  li    $at, 8192
/* ABC524 80045384 1041000D */  beq   $v0, $at, .L800453BC
/* ABC528 80045388 2418001B */   li    $t8, 27
/* ABC52C 8004538C 24013000 */  li    $at, 12288
/* ABC530 80045390 1041000E */  beq   $v0, $at, .L800453CC
/* ABC534 80045394 24190020 */   li    $t9, 32
/* ABC538 80045398 3C028012 */  lui   $v0, %hi(D_8011D3A8) # $v0, 0x8012
/* ABC53C 8004539C 2442D3A8 */  addiu $v0, %lo(D_8011D3A8) # addiu $v0, $v0, -0x2c58
/* ABC540 800453A0 1000000D */  b     .L800453D8
/* ABC544 800453A4 AC400000 */   sw    $zero, ($v0)
.L800453A8:
/* ABC548 800453A8 3C028012 */  lui   $v0, %hi(D_8011D3A8) # $v0, 0x8012
/* ABC54C 800453AC 2442D3A8 */  addiu $v0, %lo(D_8011D3A8) # addiu $v0, $v0, -0x2c58
/* ABC550 800453B0 240F001A */  li    $t7, 26
/* ABC554 800453B4 10000008 */  b     .L800453D8
/* ABC558 800453B8 AC4F0000 */   sw    $t7, ($v0)
.L800453BC:
/* ABC55C 800453BC 3C028012 */  lui   $v0, %hi(D_8011D3A8) # $v0, 0x8012
/* ABC560 800453C0 2442D3A8 */  addiu $v0, %lo(D_8011D3A8) # addiu $v0, $v0, -0x2c58
/* ABC564 800453C4 10000004 */  b     .L800453D8
/* ABC568 800453C8 AC580000 */   sw    $t8, ($v0)
.L800453CC:
/* ABC56C 800453CC 3C028012 */  lui   $v0, %hi(D_8011D3A8) # $v0, 0x8012
/* ABC570 800453D0 2442D3A8 */  addiu $v0, %lo(D_8011D3A8) # addiu $v0, $v0, -0x2c58
/* ABC574 800453D4 AC590000 */  sw    $t9, ($v0)
.L800453D8:
/* ABC578 800453D8 51000007 */  beql  $t0, $zero, .L800453F8
/* ABC57C 800453DC 8C440000 */   lw    $a0, ($v0)
/* ABC580 800453E0 8C440000 */  lw    $a0, ($v0)
/* ABC584 800453E4 0C02CE29 */  jal   ShrinkWindow_SetCurrentVal
/* ABC588 800453E8 A7A5001A */   sh    $a1, 0x1a($sp)
/* ABC58C 800453EC 10000005 */  b     .L80045404
/* ABC590 800453F0 87A5001A */   lh    $a1, 0x1a($sp)
/* ABC594 800453F4 8C440000 */  lw    $a0, ($v0)
.L800453F8:
/* ABC598 800453F8 0C02CE10 */  jal   ShrinkWindow_SetVal
/* ABC59C 800453FC A7A5001A */   sh    $a1, 0x1a($sp)
/* ABC5A0 80045400 87A5001A */  lh    $a1, 0x1a($sp)
.L80045404:
/* ABC5A4 80045404 30A40F00 */  andi  $a0, $a1, 0xf00
/* ABC5A8 80045408 24010F00 */  li    $at, 3840
/* ABC5AC 8004540C 1081000F */  beq   $a0, $at, .L8004544C
/* ABC5B0 80045410 00041203 */   sra   $v0, $a0, 8
/* ABC5B4 80045414 00024C00 */  sll   $t1, $v0, 0x10
/* ABC5B8 80045418 00021C00 */  sll   $v1, $v0, 0x10
/* ABC5BC 8004541C 00095403 */  sra   $t2, $t1, 0x10
/* ABC5C0 80045420 15400002 */  bnez  $t2, .L8004542C
/* ABC5C4 80045424 00031C03 */   sra   $v1, $v1, 0x10
/* ABC5C8 80045428 24030032 */  li    $v1, 50
.L8004542C:
/* ABC5CC 8004542C 3C028012 */  lui   $v0, %hi(D_8011D3A4) # $v0, 0x8012
/* ABC5D0 80045430 2442D3A4 */  addiu $v0, %lo(D_8011D3A4) # addiu $v0, $v0, -0x2c5c
/* ABC5D4 80045434 8C4B0000 */  lw    $t3, ($v0)
/* ABC5D8 80045438 506B0005 */  beql  $v1, $t3, .L80045450
/* ABC5DC 8004543C 8FBF0014 */   lw    $ra, 0x14($sp)
/* ABC5E0 80045440 AC430000 */  sw    $v1, ($v0)
/* ABC5E4 80045444 0C020978 */  jal   Interface_ChangeAlpha
/* ABC5E8 80045448 94440002 */   lhu   $a0, 2($v0)
.L8004544C:
/* ABC5EC 8004544C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80045450:
/* ABC5F0 80045450 27BD0018 */  addiu $sp, $sp, 0x18
/* ABC5F4 80045454 03E00008 */  jr    $ra
/* ABC5F8 80045458 00000000 */   nop   

