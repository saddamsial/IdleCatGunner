02c7f9e4  sub sp,sp,#0xc0
02c7f9e8  str d12,[sp, #0x40]
02c7f9ec  stp d11,d10,[sp, #0x48]
02c7f9f0  stp d9,d8,[sp, #0x58]
02c7f9f4  str x30,[sp, #0x68]
02c7f9f8  stp x28,x27,[sp, #0x70]
02c7f9fc  stp x26,x25,[sp, #0x80]
02c7fa00  stp x24,x23,[sp, #0x90]
02c7fa04  stp x22,x21,[sp, #0xa0]
02c7fa08  stp x20,x19,[sp, #0xb0]
02c7fa0c  adrp x20,0x625c000
02c7fa10  adrp x25,0x5e63000
02c7fa14  mov x19,x0
02c7fa18  ldrb w8,[x20, #0x353]
02c7fa1c  ldr x25,[x25, #0xd98]
02c7fa20  tbnz w8,#0x0,0x02c7fa74
02c7fa24  adrp x0,0x5e63000
02c7fa28  ldr x0,[x0, #0xda0]
02c7fa2c  bl 0x029f5a50
02c7fa30  adrp x0,0x5e63000
02c7fa34  ldr x0,[x0, #0xda8]
02c7fa38  bl 0x029f5a50
02c7fa3c  adrp x0,0x5e63000
02c7fa40  ldr x0,[x0, #0xdb0]
02c7fa44  bl 0x029f5a50
02c7fa48  adrp x0,0x5e63000
02c7fa4c  ldr x0,[x0, #0xdb8]
02c7fa50  bl 0x029f5a50
02c7fa54  adrp x0,0x5e59000
02c7fa58  ldr x0,[x0, #0x1c0]
02c7fa5c  bl 0x029f5a50
02c7fa60  adrp x0,0x5e63000
02c7fa64  ldr x0,[x0, #0xd98]
02c7fa68  bl 0x029f5a50
02c7fa6c  mov w8,#0x1
02c7fa70  strb w8,[x20, #0x353]
02c7fa74  ldr x8,[x25]
02c7fa78  stp xzr,xzr,[sp, #0x20]
02c7fa7c  str xzr,[sp, #0x30]
02c7fa80  ldr x8,[x8, #0xb8]
02c7fa84  ldr x8,[x8]
02c7fa88  cbz x8,0x02c7fcbc
02c7fa8c  ldr x0,[x8, #0x40]
02c7fa90  cbz x0,0x02c7fcbc
02c7fa94  adrp x8,0x5e63000
02c7fa98  adrp x26,0x5e63000
02c7fa9c  adrp x23,0x5e59000
02c7faa0  ldr x8,[x8, #0xdb8]
02c7faa4  adrp x24,0x5e63000
02c7faa8  ldr x26,[x26, #0xda8]
02c7faac  ldr x23,[x23, #0x1c0]
02c7fab0  ldr x24,[x24, #0xda0]
02c7fab4  ldr x1,[x8]
02c7fab8  add x8,sp,#0x8
02c7fabc  bl 0x0452d690
02c7fac0  ldur q0,[sp, #0x8]
02c7fac4  ldr x8,[sp, #0x18]
02c7fac8  mov w9,#0x7f7fffff
02c7facc  str xzr,[sp, #0x8]
02c7fad0  adrp x21,0x5e59000
02c7fad4  mov x22,xzr
02c7fad8  str q0,[sp, #0x20]
02c7fadc  fmov s0,w9
02c7fae0  adrp x27,0x625c000
02c7fae4  str x8,[sp, #0x30]
02c7fae8  add x8,sp,#0x20
02c7faec  mov w28,#0x1
02c7faf0  ldr x21,[x21]
02c7faf4  str x8,[sp, #0x10]
02c7faf8  fmov s12,s0
02c7fafc  mov x20,x22
02c7fb00  ldr x1,[x26]
02c7fb04  add x0,sp,#0x20
02c7fb08  bl 0x03fa4e10
02c7fb0c  tbz w0,#0x0,0x02c7fbf4
02c7fb10  ldr x0,[x23]
02c7fb14  ldr x22,[sp, #0x30]
02c7fb18  ldr w8,[x0, #0xe4]
02c7fb1c  cbnz w8,0x02c7fb24
02c7fb20  bl 0x029f5bd0
02c7fb24  mov x0,x22
02c7fb28  mov x1,x19
02c7fb2c  mov x2,xzr
02c7fb30  bl 0x057e14b4
02c7fb34  tbnz w0,#0x0,0x02c7fb00
02c7fb38  cbz x22,0x02c7fcb0
02c7fb3c  mov x0,x22
02c7fb40  mov x1,xzr
02c7fb44  bl 0x057dc1c8
02c7fb48  cbz x0,0x02c7fcb4
02c7fb4c  mov x1,xzr
02c7fb50  bl 0x057e0000
02c7fb54  tbz w0,#0x0,0x02c7fb00
02c7fb58  ldrb w8,[x22, #0x6d]
02c7fb5c  cbnz w8,0x02c7fb00
02c7fb60  ldr x8,[x25]
02c7fb64  ldr x8,[x8, #0xb8]
02c7fb68  ldr x0,[x8]
02c7fb6c  cbz x0,0x02c7fcb8
02c7fb70  ldr w1,[x22, #0x68]
02c7fb74  mov x2,xzr
02c7fb78  bl 0x02c82a74
02c7fb7c  fmov s8,s0
02c7fb80  fmov s9,s1
02c7fb84  ldr x1,[x19, #0x70]
02c7fb88  mov x0,x19
02c7fb8c  bl 0x02c80f60
02c7fb90  tbz w0,#0x0,0x02c7fb00
02c7fb94  ldr x0,[x19, #0x70]
02c7fb98  cbz x0,0x02c7fcc0
02c7fb9c  mov x1,xzr
02c7fba0  bl 0x057eddfc
02c7fba4  fmov s10,s0
02c7fba8  fmov s11,s1
02c7fbac  ldrb w8,[x27, #0x2a2]
02c7fbb0  cbnz w8,0x02c7fbc0
02c7fbb4  mov x0,x21
02c7fbb8  bl 0x029f5a50
02c7fbbc  strb w28,[x27, #0x2a2]
02c7fbc0  ldr x0,[x21]
02c7fbc4  ldr w8,[x0, #0xe4]
02c7fbc8  cbnz w8,0x02c7fbd0
02c7fbcc  bl 0x029f5bd0
02c7fbd0  fsub s0,s11,s9
02c7fbd4  fsub s1,s10,s8
02c7fbd8  fmul s1,s1,s1
02c7fbdc  fmul s0,s0,s0
02c7fbe0  fadd s0,s1,s0
02c7fbe4  fsqrt s0,s0
02c7fbe8  fcmp s0,s12
02c7fbec  b.pl 0x02c7fb00
02c7fbf0  b 0x02c7faf8
02c7fbf4  ldr x1,[x24]
02c7fbf8  add x0,sp,#0x20
02c7fbfc  bl 0x03fa4e0c
02c7fc00  ldr x0,[x23]
02c7fc04  ldr w8,[x0, #0xe4]
02c7fc08  cbnz w8,0x02c7fc10
02c7fc0c  bl 0x029f5bd0
02c7fc10  mov x0,x20
02c7fc14  mov x1,xzr
02c7fc18  mov x2,xzr
02c7fc1c  bl 0x057dfa70
02c7fc20  tbz w0,#0x0,0x02c7fc60
02c7fc24  cbz x20,0x02c7fcbc
02c7fc28  ldr w8,[x20, #0x64]
02c7fc2c  ldr w9,[x19, #0x64]
02c7fc30  cmp w8,w9
02c7fc34  b.ne 0x02c7fc48
02c7fc38  ldrb w8,[x19, #0x6c]
02c7fc3c  cbnz w8,0x02c7fc48
02c7fc40  ldrb w8,[x20, #0x6c]
02c7fc44  cbz w8,0x02c7fca4
02c7fc48  mov x0,x19
02c7fc4c  mov x1,xzr
02c7fc50  bl 0x02c81034
02c7fc54  mov x0,x19
02c7fc58  mov x1,x20
02c7fc5c  b 0x02c7fc74
02c7fc60  mov x0,x19
02c7fc64  mov x1,xzr
02c7fc68  bl 0x02c81034
02c7fc6c  mov x0,x19
02c7fc70  mov x1,xzr
02c7fc74  bl 0x02c811b4
02c7fc78  ldp x20,x19,[sp, #0xb0]
02c7fc7c  ldr x30,[sp, #0x68]
02c7fc80  ldp x22,x21,[sp, #0xa0]
02c7fc84  ldr d12,[sp, #0x40]
02c7fc88  ldp x24,x23,[sp, #0x90]
02c7fc8c  ldp x26,x25,[sp, #0x80]
02c7fc90  ldp x28,x27,[sp, #0x70]
02c7fc94  ldp d9,d8,[sp, #0x58]
02c7fc98  ldp d11,d10,[sp, #0x48]
02c7fc9c  add sp,sp,#0xc0
02c7fca0  ret
02c7fca4  mov x0,x19
02c7fca8  mov x1,x20
02c7fcac  b 0x02c7fc68
02c7fcb0  bl 0x029f5cfc
02c7fcb4  bl 0x029f5cfc
02c7fcb8  bl 0x029f5cfc
02c7fcbc  bl 0x029f5cfc
02c7fcc0  bl 0x029f5cfc
