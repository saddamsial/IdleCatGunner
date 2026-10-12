02c367f4  stp d9,d8,[sp, #-0x40]!
02c367f8  str x30,[sp, #0x10]
02c367fc  stp x22,x21,[sp, #0x20]
02c36800  stp x20,x19,[sp, #0x30]
02c36804  adrp x20,0x625c000
02c36808  mov x19,x0
02c3680c  ldrb w8,[x20, #0x71]
02c36810  tbnz w8,#0x0,0x02c36834
02c36814  adrp x0,0x5e63000
02c36818  ldr x0,[x0, #0x170]
02c3681c  bl 0x029f5a50
02c36820  adrp x0,0x5e5d000
02c36824  ldr x0,[x0, #0x5e8]
02c36828  bl 0x029f5a50
02c3682c  mov w8,#0x1
02c36830  strb w8,[x20, #0x71]
02c36834  ldr w8,[x19, #0x10]
02c36838  ldr x20,[x19, #0x20]
02c3683c  cmp w8,#0x1
02c36840  b.eq 0x02c3695c
02c36844  cbnz w8,0x02c36a74
02c36848  adrp x8,0x5e63000
02c3684c  mov w9,#0xffffffff
02c36850  mov w1,#0x2
02c36854  ldr x8,[x8, #0x170]
02c36858  str w9,[x19, #0x10]
02c3685c  ldr x0,[x8]
02c36860  bl 0x029f5b40
02c36864  adrp x22,0x5e5d000
02c36868  mov x21,x0
02c3686c  mov w1,#0x2
02c36870  ldr x22,[x22, #0x5e8]
02c36874  ldr x8,[x22]
02c36878  mov x0,x8
02c3687c  bl 0x029f5b40
02c36880  cbz x0,0x02c36b4c
02c36884  ldr w8,[x0, #0x18]
02c36888  mov x1,x0
02c3688c  cbz w8,0x02c36b50
02c36890  mov w9,#0xcccd
02c36894  cmp w8,#0x1
02c36898  movk w9,#0x3f8c, LSL #16
02c3689c  str w9,[x1, #0x20]
02c368a0  b.eq 0x02c36b50
02c368a4  mov w8,#0x999a
02c368a8  movk w8,#0x3e19, LSL #16
02c368ac  str w8,[x1, #0x24]
02c368b0  cbz x21,0x02c36b4c
02c368b4  ldr w8,[x21, #0x18]
02c368b8  cbz w8,0x02c36b50
02c368bc  mov x0,x21
02c368c0  str x1,[x0, #0x20]!
02c368c4  bl 0x029f59f4
02c368c8  ldr x0,[x22]
02c368cc  mov w1,#0x2
02c368d0  bl 0x029f5b40
02c368d4  cbz x0,0x02c36b4c
02c368d8  ldr w8,[x0, #0x18]
02c368dc  mov x1,x0
02c368e0  cbz w8,0x02c36b50
02c368e4  mov w9,#0x3f800000
02c368e8  cmp w8,#0x1
02c368ec  str w9,[x1, #0x20]
02c368f0  b.eq 0x02c36b50
02c368f4  mov w8,#0xcccd
02c368f8  movk w8,#0x3dcc, LSL #16
02c368fc  str w8,[x1, #0x24]
02c36900  ldr w8,[x21, #0x18]
02c36904  tst w8,#0xfffffffe
02c36908  b.eq 0x02c36b50
02c3690c  mov x0,x21
02c36910  str x1,[x0, #0x28]!
02c36914  bl 0x029f59f4
02c36918  mov x0,x19
02c3691c  mov x1,x21
02c36920  str x21,[x0, #0x28]!
02c36924  bl 0x029f59f4
02c36928  cbz x20,0x02c36b4c
02c3692c  mov x0,x20
02c36930  mov x1,xzr
02c36934  bl 0x057dc0f8
02c36938  cbz x0,0x02c36b4c
02c3693c  movi d1,#0x0
02c36940  fmov s0,0x3f800000
02c36944  mov x1,xzr
02c36948  fmov s2,0x3f800000
02c3694c  bl 0x057ef654
02c36950  mov w21,wzr
02c36954  str wzr,[x19, #0x30]
02c36958  b 0x02c36a08
02c3695c  ldp s0,s8,[x19, #0x3c]
02c36960  mov w8,#0xffffffff
02c36964  str w8,[x19, #0x10]
02c36968  b 0x02c369cc
02c3696c  cbz x21,0x02c36b4c
02c36970  mov x0,x21
02c36974  mov x1,xzr
02c36978  bl 0x057ef578
02c3697c  ldr x8,[x19, #0x28]
02c36980  str s1,[x19, #0x34]
02c36984  cbz x8,0x02c36b4c
02c36988  ldrsw x9,[x19, #0x30]
02c3698c  ldr w10,[x8, #0x18]
02c36990  cmp w9,w10
02c36994  b.cs 0x02c36b50
02c36998  add x8,x8,x9, LSL #0x3
02c3699c  ldr x8,[x8, #0x20]
02c369a0  cbz x8,0x02c36b4c
02c369a4  ldr w9,[x8, #0x18]
02c369a8  cbz w9,0x02c36b50
02c369ac  ldr s0,[x8, #0x20]
02c369b0  cmp w9,#0x1
02c369b4  str s0,[x19, #0x38]
02c369b8  b.eq 0x02c36b50
02c369bc  ldr s0,[x8, #0x24]
02c369c0  movi d8,#0x0
02c369c4  str wzr,[x19, #0x40]
02c369c8  str s0,[x19, #0x3c]
02c369cc  fcmp s8,s0
02c369d0  b.mi 0x02c36a7c
02c369d4  cbz x20,0x02c36b4c
02c369d8  mov x0,x20
02c369dc  mov x1,xzr
02c369e0  bl 0x057dc0f8
02c369e4  cbz x0,0x02c36b4c
02c369e8  fmov s0,0x3f800000
02c369ec  fmov s2,0x3f800000
02c369f0  ldr s1,[x19, #0x38]
02c369f4  mov x1,xzr
02c369f8  bl 0x057ef654
02c369fc  ldr w8,[x19, #0x30]
02c36a00  add w21,w8,#0x1
02c36a04  str w21,[x19, #0x30]
02c36a08  ldr x8,[x19, #0x28]
02c36a0c  cbz x8,0x02c36b4c
02c36a10  ldr w22,[x8, #0x18]
02c36a14  mov x0,x20
02c36a18  mov x1,xzr
02c36a1c  bl 0x057dc0f8
02c36a20  cmp w21,w22
02c36a24  mov x21,x0
02c36a28  b.lt 0x02c3696c
02c36a2c  adrp x19,0x625b000
02c36a30  ldrb w8,[x19, #0x279]
02c36a34  cbnz w8,0x02c36a4c
02c36a38  adrp x0,0x5e58000
02c36a3c  ldr x0,[x0, #0xbf8]
02c36a40  bl 0x029f5a50
02c36a44  mov w8,#0x1
02c36a48  strb w8,[x19, #0x279]
02c36a4c  cbz x21,0x02c36b4c
02c36a50  adrp x8,0x5e58000
02c36a54  mov x0,x21
02c36a58  mov x1,xzr
02c36a5c  ldr x8,[x8, #0xbf8]
02c36a60  ldr x8,[x8]
02c36a64  ldr x8,[x8, #0xb8]
02c36a68  ldp s1,s2,[x8, #0x10]
02c36a6c  ldr s0,[x8, #0xc]
02c36a70  bl 0x057ef654
02c36a74  mov w0,wzr
02c36a78  b 0x02c36b38
02c36a7c  mov x0,xzr
02c36a80  bl 0x057ebb34
02c36a84  fadd s8,s8,s0
02c36a88  str s8,[x19, #0x40]
02c36a8c  cbz x20,0x02c36b4c
02c36a90  ldr s9,[x19, #0x3c]
02c36a94  mov x0,x20
02c36a98  mov x1,xzr
02c36a9c  bl 0x057dc0f8
02c36aa0  cbz x0,0x02c36b4c
02c36aa4  fdiv s0,s8,s9
02c36aa8  fmov s1,0x3f800000
02c36aac  movi d3,#0x0
02c36ab0  fmov s4,0x40400000
02c36ab4  mov x1,xzr
02c36ab8  fcmp s0,s1
02c36abc  fcsel s2,s1,s0,gt
02c36ac0  fcmp s0,#0.0
02c36ac4  fcsel s0,s3,s2,mi
02c36ac8  fcmp s0,#0.0
02c36acc  fcsel s0,s3,s0,mi
02c36ad0  fadd s2,s0,s0
02c36ad4  fmul s4,s0,s4
02c36ad8  fmul s2,s0,s2
02c36adc  fmul s4,s0,s4
02c36ae0  fmul s0,s0,s2
02c36ae4  fsub s0,s4,s0
02c36ae8  fsub s2,s1,s0
02c36aec  fmul s2,s2,s3
02c36af0  fadd s0,s0,s2
02c36af4  fcmp s0,s1
02c36af8  fcsel s1,s1,s0,gt
02c36afc  fcmp s0,#0.0
02c36b00  ldp s2,s0,[x19, #0x34]
02c36b04  fsub s0,s0,s2
02c36b08  fcsel s1,s3,s1,mi
02c36b0c  fmul s0,s1,s0
02c36b10  fadd s1,s2,s0
02c36b14  fmov s0,0x3f800000
02c36b18  fmov s2,0x3f800000
02c36b1c  bl 0x057ef654
02c36b20  str xzr,[x19, #0x18]!
02c36b24  mov x0,x19
02c36b28  mov x1,xzr
02c36b2c  bl 0x029f59f4
02c36b30  mov w0,#0x1
02c36b34  stur w0,[x19, #-0x8]
02c36b38  ldp x20,x19,[sp, #0x30]
02c36b3c  ldr x30,[sp, #0x10]
02c36b40  ldp x22,x21,[sp, #0x20]
02c36b44  ldp d9,d8,[sp], #0x40
02c36b48  ret
02c36b4c  bl 0x029f5cfc
02c36b50  bl 0x029f5d04
