02b9f7c0  stp x30,x21,[sp, #-0x20]!
02b9f7c4  stp x20,x19,[sp, #0x10]
02b9f7c8  adrp x21,0x625b000
02b9f7cc  mov w20,w1
02b9f7d0  mov x19,x0
02b9f7d4  ldrb w8,[x21, #0x9fb]
02b9f7d8  tbnz w8,#0x0,0x02b9f814
02b9f7dc  adrp x0,0x5e5b000
02b9f7e0  ldr x0,[x0, #0xe98]
02b9f7e4  bl 0x029f5a50
02b9f7e8  adrp x0,0x5e5e000
02b9f7ec  ldr x0,[x0, #0x520]
02b9f7f0  bl 0x029f5a50
02b9f7f4  adrp x0,0x5e5d000
02b9f7f8  ldr x0,[x0, #0x3c0]
02b9f7fc  bl 0x029f5a50
02b9f800  adrp x0,0x5e5e000
02b9f804  ldr x0,[x0, #0x518]
02b9f808  bl 0x029f5a50
02b9f80c  mov w8,#0x1
02b9f810  strb w8,[x21, #0x9fb]
02b9f814  ldr w8,[x19, #0x30]
02b9f818  cmp w8,w20
02b9f81c  b.ne 0x02b9f92c
02b9f820  mov x0,x19
02b9f824  bl 0x02b9f50c
02b9f828  tbz w0,#0x0,0x02b9f92c
02b9f82c  adrp x8,0x5e5d000
02b9f830  ldr x8,[x8, #0x3c0]
02b9f834  ldr x0,[x8]
02b9f838  ldr w8,[x0, #0xe4]
02b9f83c  cbnz w8,0x02b9f844
02b9f840  bl 0x029f5bd0
02b9f844  adrp x8,0x5e5e000
02b9f848  mov x1,xzr
02b9f84c  ldr x8,[x8, #0x518]
02b9f850  ldr x0,[x8]
02b9f854  bl 0x02c25580
02b9f858  mov x0,x19
02b9f85c  mov w1,w20
02b9f860  bl 0x02b9f9a0
02b9f864  ldr x8,[x19, #0x40]
02b9f868  cbz x8,0x02b9f980
02b9f86c  ldrsw x9,[x19, #0x30]
02b9f870  ldr w10,[x8, #0x18]
02b9f874  cmp w9,w10
02b9f878  b.cs 0x02b9f984
02b9f87c  add x8,x8,x9, LSL #0x3
02b9f880  ldr x0,[x8, #0x20]
02b9f884  cbz x0,0x02b9f980
02b9f888  adrp x8,0x5e5e000
02b9f88c  adrp x9,0x5e5b000
02b9f890  ldr x8,[x8, #0x520]
02b9f894  ldr x8,[x8]
02b9f898  ldr x8,[x8, #0xb8]
02b9f89c  ldr x9,[x9, #0xe98]
02b9f8a0  ldr x1,[x9]
02b9f8a4  ldr x20,[x8]
02b9f8a8  bl 0x02fe5f2c
02b9f8ac  cbz x20,0x02b9f980
02b9f8b0  mov x1,x0
02b9f8b4  mov x0,x20
02b9f8b8  mov w2,#0x8
02b9f8bc  mov x3,xzr
02b9f8c0  bl 0x02c26b18
02b9f8c4  movi v0.2S,#0x1
02b9f8c8  ldr d1,[x19, #0x30]
02b9f8cc  mov x0,xzr
02b9f8d0  add v0.2S,v1.2S,v0.2S
02b9f8d4  str d0,[x19, #0x30]
02b9f8d8  bl 0x02c25c90
02b9f8dc  str x0,[x19, #0x28]
02b9f8e0  mov x0,x19
02b9f8e4  bl 0x02b9f18c
02b9f8e8  adrp x19,0x625b000
02b9f8ec  ldrb w8,[x19, #0xa57]
02b9f8f0  cbnz w8,0x02b9f908
02b9f8f4  adrp x0,0x5e5d000
02b9f8f8  ldr x0,[x0, #0xd70]
02b9f8fc  bl 0x029f5a50
02b9f900  mov w8,#0x1
02b9f904  strb w8,[x19, #0xa57]
02b9f908  adrp x8,0x5e5d000
02b9f90c  ldr x8,[x8, #0xd70]
02b9f910  ldr x8,[x8]
02b9f914  ldr x8,[x8, #0xb8]
02b9f918  ldr x0,[x8]
02b9f91c  cbz x0,0x02b9f980
02b9f920  fmov s0,0x3f800000
02b9f924  mov w1,#0x7
02b9f928  b 0x02b9f96c
02b9f92c  adrp x19,0x625b000
02b9f930  ldrb w8,[x19, #0xa57]
02b9f934  cbnz w8,0x02b9f94c
02b9f938  adrp x0,0x5e5d000
02b9f93c  ldr x0,[x0, #0xd70]
02b9f940  bl 0x029f5a50
02b9f944  mov w8,#0x1
02b9f948  strb w8,[x19, #0xa57]
02b9f94c  adrp x8,0x5e5d000
02b9f950  ldr x8,[x8, #0xd70]
02b9f954  ldr x8,[x8]
02b9f958  ldr x8,[x8, #0xb8]
02b9f95c  ldr x0,[x8]
02b9f960  cbz x0,0x02b9f980
02b9f964  fmov s0,0x3f800000
02b9f968  mov w1,#0x5
02b9f96c  ldp x20,x19,[sp, #0x10]
02b9f970  mov x2,xzr
02b9f974  mov x3,xzr
02b9f978  ldp x30,x21,[sp], #0x20
02b9f97c  b 0x02c1f10c
02b9f980  bl 0x029f5cfc
02b9f984  bl 0x029f5d04
