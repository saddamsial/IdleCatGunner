02c6f9a0  str x30,[sp, #-0x40]!
02c6f9a4  stp x24,x23,[sp, #0x10]
02c6f9a8  stp x22,x21,[sp, #0x20]
02c6f9ac  stp x20,x19,[sp, #0x30]
02c6f9b0  adrp x24,0x625c000
02c6f9b4  adrp x23,0x5e5d000
02c6f9b8  mov w21,w3
02c6f9bc  ldrb w8,[x24, #0x2b9]
02c6f9c0  ldr x23,[x23, #0xd40]
02c6f9c4  mov w22,w2
02c6f9c8  mov w20,w1
02c6f9cc  mov x19,x0
02c6f9d0  tbnz w8,#0x0,0x02c6f9f4
02c6f9d4  adrp x0,0x5e5d000
02c6f9d8  ldr x0,[x0, #0xd40]
02c6f9dc  bl 0x029f5a50
02c6f9e0  adrp x0,0x5e5e000
02c6f9e4  ldr x0,[x0, #0x6d0]
02c6f9e8  bl 0x029f5a50
02c6f9ec  mov w8,#0x1
02c6f9f0  strb w8,[x24, #0x2b9]
02c6f9f4  ldr x8,[x23]
02c6f9f8  stp w22,w20,[x19, #0x88]
02c6f9fc  str w21,[x19, #0x90]
02c6fa00  ldr x8,[x8, #0xb8]
02c6fa04  ldr x9,[x8]
02c6fa08  cbz x9,0x02c6fb04
02c6fa0c  ldr x8,[x9, #0x20]
02c6fa10  cbz x8,0x02c6fb04
02c6fa14  ldr w10,[x8, #0x18]
02c6fa18  cmp w10,w20
02c6fa1c  b.ls 0x02c6fbf0
02c6fa20  ldr x9,[x9, #0x48]
02c6fa24  cbz x9,0x02c6fb04
02c6fa28  ldr w10,[x9, #0x18]
02c6fa2c  cmp w10,w20
02c6fa30  b.ls 0x02c6fbf0
02c6fa34  ldr x0,[x19, #0x20]
02c6fa38  cbz x0,0x02c6fb04
02c6fa3c  sxtw x10,w20
02c6fa40  ldr x22,[x19, #0x28]
02c6fa44  mov x2,xzr
02c6fa48  add x9,x9,x10, LSL #0x3
02c6fa4c  add x8,x8,x10, LSL #0x3
02c6fa50  ldr x21,[x9, #0x20]
02c6fa54  ldr x23,[x8, #0x20]
02c6fa58  mov x1,x21
02c6fa5c  bl 0x058d34cc
02c6fa60  cbz x22,0x02c6fb04
02c6fa64  mov w8,#0x6667
02c6fa68  mov x0,x22
02c6fa6c  mov x1,x21
02c6fa70  movk w8,#0x6666, LSL #16
02c6fa74  mov x2,xzr
02c6fa78  smull x8,w20,w8
02c6fa7c  lsr x9,x8,#0x20
02c6fa80  lsr x8,x8,#0x3f
02c6fa84  add w20,w8,w9, ASR #0x1
02c6fa88  bl 0x058d34cc
02c6fa8c  ldr x21,[x19, #0x30]
02c6fa90  mov w0,w20
02c6fa94  mov x1,xzr
02c6fa98  bl 0x02c5b234
02c6fa9c  cbz x21,0x02c6fb04
02c6faa0  ldr x8,[x21]
02c6faa4  mov x0,x21
02c6faa8  ldr x9,[x8, #0x2a8]
02c6faac  ldr x1,[x8, #0x2b0]
02c6fab0  blr x9
02c6fab4  ldr x8,[x19, #0x38]
02c6fab8  cbz x8,0x02c6fb04
02c6fabc  adrp x21,0x5e5e000
02c6fac0  mov x22,xzr
02c6fac4  ldr x21,[x21, #0x6d0]
02c6fac8  ldr w9,[x8, #0x18]
02c6facc  cmp w22,w9
02c6fad0  b.ge 0x02c6fb08
02c6fad4  cmp w22,w9
02c6fad8  b.cs 0x02c6fbf0
02c6fadc  add x8,x8,x22, LSL #0x3
02c6fae0  ldr x0,[x8, #0x20]
02c6fae4  cbz x0,0x02c6fb04
02c6fae8  cmp w20,w22
02c6faec  mov x2,xzr
02c6faf0  cset w1,eq
02c6faf4  bl 0x057dff3c
02c6faf8  ldr x8,[x19, #0x38]
02c6fafc  add x22,x22,#0x1
02c6fb00  cbnz x8,0x02c6fac8
02c6fb04  bl 0x029f5cfc
02c6fb08  cbz x23,0x02c6fb04
02c6fb0c  ldr x0,[x19, #0x40]
02c6fb10  cbz x0,0x02c6fb04
02c6fb14  ldr x8,[x0]
02c6fb18  ldr x1,[x23, #0x10]
02c6fb1c  ldr x9,[x8, #0x558]
02c6fb20  ldr x2,[x8, #0x560]
02c6fb24  blr x9
02c6fb28  ldr w1,[x23, #0x18]
02c6fb2c  ldr x20,[x19, #0x48]
02c6fb30  bl 0x02c6fc18
02c6fb34  cbz x20,0x02c6fb04
02c6fb38  ldr x8,[x20]
02c6fb3c  mov x1,x0
02c6fb40  mov x0,x20
02c6fb44  ldr x9,[x8, #0x558]
02c6fb48  ldr x2,[x8, #0x560]
02c6fb4c  blr x9
02c6fb50  ldr x20,[x19, #0x50]
02c6fb54  add x0,x23,#0x20
02c6fb58  mov x1,xzr
02c6fb5c  bl 0x0465bddc
02c6fb60  cbz x20,0x02c6fb04
02c6fb64  ldr x8,[x20]
02c6fb68  mov x1,x0
02c6fb6c  mov x0,x20
02c6fb70  ldr x9,[x8, #0x558]
02c6fb74  ldr x2,[x8, #0x560]
02c6fb78  blr x9
02c6fb7c  ldr x20,[x19, #0x58]
02c6fb80  add x0,x23,#0x40
02c6fb84  mov x1,xzr
02c6fb88  bl 0x04863c00
02c6fb8c  ldr x8,[x21]
02c6fb90  mov x1,x0
02c6fb94  mov x2,xzr
02c6fb98  mov x0,x8
02c6fb9c  bl 0x046b6c0c
02c6fba0  cbz x20,0x02c6fb04
02c6fba4  ldr x8,[x20]
02c6fba8  mov x1,x0
02c6fbac  mov x0,x20
02c6fbb0  ldr x9,[x8, #0x558]
02c6fbb4  ldr x2,[x8, #0x560]
02c6fbb8  blr x9
02c6fbbc  mov x0,x19
02c6fbc0  bl 0x02c6fc9c
02c6fbc4  mov x0,x19
02c6fbc8  mov x1,xzr
02c6fbcc  bl 0x057dc1c8
02c6fbd0  cbz x0,0x02c6fb04
02c6fbd4  ldp x20,x19,[sp, #0x30]
02c6fbd8  mov w1,#0x1
02c6fbdc  ldp x22,x21,[sp, #0x20]
02c6fbe0  mov x2,xzr
02c6fbe4  ldp x24,x23,[sp, #0x10]
02c6fbe8  ldr x30,[sp], #0x40
02c6fbec  b 0x057dff3c
02c6fbf0  bl 0x029f5d04
