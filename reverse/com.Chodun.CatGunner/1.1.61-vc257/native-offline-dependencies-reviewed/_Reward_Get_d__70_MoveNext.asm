02b8fa10  str x30,[sp, #-0x30]!
02b8fa14  stp x22,x21,[sp, #0x10]
02b8fa18  stp x20,x19,[sp, #0x20]
02b8fa1c  adrp x20,0x625b000
02b8fa20  mov x19,x0
02b8fa24  ldrb w8,[x20, #0x963]
02b8fa28  tbnz w8,#0x0,0x02b8fadc
02b8fa2c  adrp x0,0x5e5d000
02b8fa30  ldr x0,[x0, #0xd28]
02b8fa34  bl 0x029f5a50
02b8fa38  adrp x0,0x5e5d000
02b8fa3c  ldr x0,[x0, #0x540]
02b8fa40  bl 0x029f5a50
02b8fa44  adrp x0,0x5e5d000
02b8fa48  ldr x0,[x0, #0xd30]
02b8fa4c  bl 0x029f5a50
02b8fa50  adrp x0,0x5e5d000
02b8fa54  ldr x0,[x0, #0x4c0]
02b8fa58  bl 0x029f5a50
02b8fa5c  adrp x0,0x5e5d000
02b8fa60  ldr x0,[x0, #0xd38]
02b8fa64  bl 0x029f5a50
02b8fa68  adrp x0,0x5e5d000
02b8fa6c  ldr x0,[x0, #0xd40]
02b8fa70  bl 0x029f5a50
02b8fa74  adrp x0,0x5e5d000
02b8fa78  ldr x0,[x0, #0xd48]
02b8fa7c  bl 0x029f5a50
02b8fa80  adrp x0,0x5e5d000
02b8fa84  ldr x0,[x0, #0xd50]
02b8fa88  bl 0x029f5a50
02b8fa8c  adrp x0,0x5e5d000
02b8fa90  ldr x0,[x0, #0xd58]
02b8fa94  bl 0x029f5a50
02b8fa98  adrp x0,0x5e5d000
02b8fa9c  ldr x0,[x0, #0x4d0]
02b8faa0  bl 0x029f5a50
02b8faa4  adrp x0,0x5e5d000
02b8faa8  ldr x0,[x0, #0xd60]
02b8faac  bl 0x029f5a50
02b8fab0  adrp x0,0x5e5d000
02b8fab4  ldr x0,[x0, #0x920]
02b8fab8  bl 0x029f5a50
02b8fabc  adrp x0,0x5e5d000
02b8fac0  ldr x0,[x0, #0xd68]
02b8fac4  bl 0x029f5a50
02b8fac8  adrp x0,0x5e5d000
02b8facc  ldr x0,[x0, #0x4e8]
02b8fad0  bl 0x029f5a50
02b8fad4  mov w8,#0x1
02b8fad8  strb w8,[x20, #0x963]
02b8fadc  ldr w22,[x19, #0x10]
02b8fae0  ldr x20,[x19, #0x20]
02b8fae4  cbz w22,0x02b8fb94
02b8fae8  cmp w22,#0x1
02b8faec  b.ne 0x02b8ff08
02b8faf0  mov w8,#0xffffffff
02b8faf4  str w8,[x19, #0x10]
02b8faf8  cbz x20,0x02b8ff20
02b8fafc  adrp x21,0x625b000
02b8fb00  mov w9,#0x41a00000
02b8fb04  ldrb w8,[x21, #0xa57]
02b8fb08  str w9,[x20, #0x24]
02b8fb0c  cbnz w8,0x02b8fb24
02b8fb10  adrp x0,0x5e5d000
02b8fb14  ldr x0,[x0, #0xd70]
02b8fb18  bl 0x029f5a50
02b8fb1c  mov w8,#0x1
02b8fb20  strb w8,[x21, #0xa57]
02b8fb24  adrp x8,0x5e5d000
02b8fb28  ldr x8,[x8, #0xd70]
02b8fb2c  ldr x8,[x8]
02b8fb30  ldr x8,[x8, #0xb8]
02b8fb34  ldr x0,[x8]
02b8fb38  cbz x0,0x02b8ff20
02b8fb3c  fmov s0,0x3f800000
02b8fb40  mov w1,#0x7
02b8fb44  mov x2,xzr
02b8fb48  mov x3,xzr
02b8fb4c  bl 0x02c1f10c
02b8fb50  adrp x20,0x5e5d000
02b8fb54  ldr x20,[x20, #0x920]
02b8fb58  ldr x0,[x20]
02b8fb5c  ldr w8,[x0, #0xe4]
02b8fb60  cbnz w8,0x02b8fb6c
02b8fb64  bl 0x029f5bd0
02b8fb68  ldr x0,[x20]
02b8fb6c  ldr x8,[x0, #0xb8]
02b8fb70  ldrb w8,[x8, #0x9]
02b8fb74  cbnz w8,0x02b8fc1c
02b8fb78  ldr w8,[x19, #0x28]
02b8fb7c  cmp w8,#0xf
02b8fb80  b.hi 0x02b8fbf0
02b8fb84  adrp x9,0x11b0000
02b8fb88  add x9,x9,#0x4b0
02b8fb8c  ldr w20,[x9, x8, LSL #0x2]
02b8fb90  b 0x02b8fbf4
02b8fb94  mov w8,#0xffffffff
02b8fb98  str w8,[x19, #0x10]
02b8fb9c  cbz x20,0x02b8ff20
02b8fba0  ldr w8,[x20, #0x40]
02b8fba4  ldr x1,[x20, #0x48]
02b8fba8  mov x0,x19
02b8fbac  str w8,[x19, #0x28]
02b8fbb0  str x1,[x0, #0x30]!
02b8fbb4  bl 0x029f59f4
02b8fbb8  ldr x1,[x20, #0x50]
02b8fbbc  mov x0,x19
02b8fbc0  str x1,[x0, #0x38]!
02b8fbc4  bl 0x029f59f4
02b8fbc8  mov x0,x20
02b8fbcc  mov x1,xzr
02b8fbd0  bl 0x02b89a14
02b8fbd4  str xzr,[x19, #0x18]!
02b8fbd8  mov x0,x19
02b8fbdc  mov x1,xzr
02b8fbe0  bl 0x029f59f4
02b8fbe4  mov w8,#0x1
02b8fbe8  stur w8,[x19, #-0x8]
02b8fbec  b 0x02b8ff08
02b8fbf0  mov w20,wzr
02b8fbf4  adrp x8,0x5e5d000
02b8fbf8  ldr x8,[x8, #0x540]
02b8fbfc  ldr x21,[x19, #0x30]
02b8fc00  ldr x0,[x8]
02b8fc04  ldr w8,[x0, #0xe4]
02b8fc08  cbnz w8,0x02b8fc10
02b8fc0c  bl 0x029f5bd0
02b8fc10  mov w0,w20
02b8fc14  mov x1,x21
02b8fc18  bl 0x02b8ffd8
02b8fc1c  ldr w8,[x19, #0x28]
02b8fc20  cmp w8,#0xe
02b8fc24  b.hi 0x02b8fef0
02b8fc28  adrp x9,0x11b0000
02b8fc2c  add x9,x9,#0x4a0
02b8fc30  adr x10,0x2b8fc40
02b8fc34  ldrb w11,[x9, x8, LSL ]
02b8fc38  add x10,x10,x11, LSL #0x2
02b8fc3c  br x10
02b8fef0  ldr x8,[x19, #0x38]
02b8fef4  cbz x8,0x02b8ff08
02b8fef8  ldr x9,[x8, #0x18]
02b8fefc  ldr x0,[x8, #0x40]
02b8ff00  ldr x1,[x8, #0x28]
02b8ff04  blr x9
02b8ff08  cmp w22,#0x0
02b8ff0c  ldp x20,x19,[sp, #0x20]
02b8ff10  ldp x22,x21,[sp, #0x10]
02b8ff14  cset w0,eq
02b8ff18  ldr x30,[sp], #0x30
02b8ff1c  ret
02b8ff20  bl 0x029f5cfc
