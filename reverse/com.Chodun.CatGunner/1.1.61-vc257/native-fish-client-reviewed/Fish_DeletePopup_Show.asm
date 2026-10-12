02c5f93c  str x30,[sp, #-0x30]!
02c5f940  stp x22,x21,[sp, #0x10]
02c5f944  stp x20,x19,[sp, #0x20]
02c5f948  adrp x21,0x625c000
02c5f94c  adrp x22,0x5e5d000
02c5f950  mov x20,x1
02c5f954  ldrb w8,[x21, #0x212]
02c5f958  ldr x22,[x22, #0xd38]
02c5f95c  mov x19,x0
02c5f960  tbnz w8,#0x0,0x02c5f978
02c5f964  adrp x0,0x5e5d000
02c5f968  ldr x0,[x0, #0xd38]
02c5f96c  bl 0x029f5a50
02c5f970  mov w8,#0x1
02c5f974  strb w8,[x21, #0x212]
02c5f978  mov x21,x19
02c5f97c  mov x1,x20
02c5f980  str x20,[x21, #0x40]!
02c5f984  mov x0,x21
02c5f988  bl 0x029f59f4
02c5f98c  ldr x8,[x22]
02c5f990  ldr x8,[x8, #0xb8]
02c5f994  ldr x8,[x8]
02c5f998  cbz x8,0x02c5fa1c
02c5f99c  cbz x20,0x02c5fa1c
02c5f9a0  ldr x8,[x8, #0x28]
02c5f9a4  cbz x8,0x02c5fa1c
02c5f9a8  ldrsw x9,[x20, #0x40]
02c5f9ac  ldr w10,[x8, #0x18]
02c5f9b0  cmp w9,w10
02c5f9b4  b.cs 0x02c5fa84
02c5f9b8  ldur x0,[x21, #-0x20]
02c5f9bc  cbz x0,0x02c5fa1c
02c5f9c0  add x8,x8,x9, LSL #0x3
02c5f9c4  mov x2,xzr
02c5f9c8  ldr x1,[x8, #0x20]
02c5f9cc  bl 0x058d34cc
02c5f9d0  ldr x8,[x19, #0x30]
02c5f9d4  cbz x8,0x02c5fa1c
02c5f9d8  mov x21,xzr
02c5f9dc  ldr w9,[x8, #0x18]
02c5f9e0  cmp w21,w9
02c5f9e4  b.ge 0x02c5fa20
02c5f9e8  cmp w21,w9
02c5f9ec  b.cs 0x02c5fa84
02c5f9f0  add x8,x8,x21, LSL #0x3
02c5f9f4  ldr x0,[x8, #0x20]
02c5f9f8  cbz x0,0x02c5fa1c
02c5f9fc  ldr w8,[x20, #0x40]
02c5fa00  mov x2,xzr
02c5fa04  cmp w21,w8
02c5fa08  cset w1,eq
02c5fa0c  bl 0x057dff3c
02c5fa10  ldr x8,[x19, #0x30]
02c5fa14  add x21,x21,#0x1
02c5fa18  cbnz x8,0x02c5f9dc
02c5fa1c  bl 0x029f5cfc
02c5fa20  ldr x8,[x19, #0x38]
02c5fa24  cbz x8,0x02c5fa1c
02c5fa28  ldrsw x9,[x20, #0x40]
02c5fa2c  ldr w10,[x8, #0x18]
02c5fa30  cmp w9,w10
02c5fa34  b.cs 0x02c5fa84
02c5fa38  ldr x0,[x19, #0x28]
02c5fa3c  cbz x0,0x02c5fa1c
02c5fa40  add x8,x8,x9, LSL #0x4
02c5fa44  ldr x9,[x0]
02c5fa48  ldp s2,s3,[x8, #0x28]
02c5fa4c  ldr x1,[x9, #0x2b0]
02c5fa50  ldp s0,s1,[x8, #0x20]
02c5fa54  ldr x8,[x9, #0x2a8]
02c5fa58  blr x8
02c5fa5c  mov x0,x19
02c5fa60  mov x1,xzr
02c5fa64  bl 0x057dc1c8
02c5fa68  cbz x0,0x02c5fa1c
02c5fa6c  ldp x20,x19,[sp, #0x20]
02c5fa70  mov w1,#0x1
02c5fa74  ldp x22,x21,[sp, #0x10]
02c5fa78  mov x2,xzr
02c5fa7c  ldr x30,[sp], #0x30
02c5fa80  b 0x057dff3c
02c5fa84  bl 0x029f5d04
