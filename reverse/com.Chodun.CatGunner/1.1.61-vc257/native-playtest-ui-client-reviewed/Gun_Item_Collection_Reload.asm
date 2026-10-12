02c6f7cc  stp x30,x25,[sp, #-0x40]!
02c6f7d0  stp x24,x23,[sp, #0x10]
02c6f7d4  stp x22,x21,[sp, #0x20]
02c6f7d8  stp x20,x19,[sp, #0x30]
02c6f7dc  adrp x21,0x625c000
02c6f7e0  adrp x24,0x5e5d000
02c6f7e4  mov w19,w1
02c6f7e8  ldrb w8,[x21, #0x2e7]
02c6f7ec  ldr x24,[x24, #0xd40]
02c6f7f0  mov x20,x0
02c6f7f4  tbnz w8,#0x0,0x02c6f80c
02c6f7f8  adrp x0,0x5e5d000
02c6f7fc  ldr x0,[x0, #0xd40]
02c6f800  bl 0x029f5a50
02c6f804  mov w8,#0x1
02c6f808  strb w8,[x21, #0x2e7]
02c6f80c  ldr x8,[x24]
02c6f810  str w19,[x20, #0x20]
02c6f814  ldr x8,[x8, #0xb8]
02c6f818  ldr x8,[x8]
02c6f81c  cbz x8,0x02c6f8f4
02c6f820  ldr x8,[x8, #0x48]
02c6f824  cbz x8,0x02c6f8f4
02c6f828  ldr w9,[x8, #0x18]
02c6f82c  cmp w9,w19
02c6f830  b.ls 0x02c6f978
02c6f834  ldr x0,[x20, #0x28]
02c6f838  cbz x0,0x02c6f8f4
02c6f83c  sxtw x25,w19
02c6f840  ldr x23,[x20, #0x30]
02c6f844  mov x2,xzr
02c6f848  add x8,x8,x25, LSL #0x3
02c6f84c  ldr x22,[x8, #0x20]
02c6f850  mov x1,x22
02c6f854  bl 0x058d34cc
02c6f858  cbz x23,0x02c6f8f4
02c6f85c  mov w8,#0x6667
02c6f860  mov x0,x23
02c6f864  mov x1,x22
02c6f868  movk w8,#0x6666, LSL #16
02c6f86c  mov x2,xzr
02c6f870  smull x8,w19,w8
02c6f874  lsr x9,x8,#0x20
02c6f878  lsr x8,x8,#0x3f
02c6f87c  add w21,w8,w9, ASR #0x1
02c6f880  bl 0x058d34cc
02c6f884  ldr x22,[x20, #0x38]
02c6f888  mov w0,w21
02c6f88c  mov x1,xzr
02c6f890  bl 0x02c5b234
02c6f894  cbz x22,0x02c6f8f4
02c6f898  ldr x8,[x22]
02c6f89c  mov x0,x22
02c6f8a0  ldr x9,[x8, #0x2a8]
02c6f8a4  ldr x1,[x8, #0x2b0]
02c6f8a8  blr x9
02c6f8ac  ldr x8,[x20, #0x40]
02c6f8b0  cbz x8,0x02c6f8f4
02c6f8b4  mov x22,xzr
02c6f8b8  ldr w9,[x8, #0x18]
02c6f8bc  cmp w22,w9
02c6f8c0  b.ge 0x02c6f8f8
02c6f8c4  cmp w22,w9
02c6f8c8  b.cs 0x02c6f978
02c6f8cc  add x8,x8,x22, LSL #0x3
02c6f8d0  ldr x0,[x8, #0x20]
02c6f8d4  cbz x0,0x02c6f8f4
02c6f8d8  cmp w21,w22
02c6f8dc  mov x2,xzr
02c6f8e0  cset w1,eq
02c6f8e4  bl 0x057dff3c
02c6f8e8  ldr x8,[x20, #0x40]
02c6f8ec  add x22,x22,#0x1
02c6f8f0  cbnz x8,0x02c6f8b8
02c6f8f4  bl 0x029f5cfc
02c6f8f8  ldr x21,[x20, #0x48]
02c6f8fc  mov w0,w19
02c6f900  mov x1,xzr
02c6f904  bl 0x02c5b2ac
02c6f908  cbz x21,0x02c6f8f4
02c6f90c  ldr x8,[x21]
02c6f910  mov x1,x0
02c6f914  mov x0,x21
02c6f918  ldr x9,[x8, #0x558]
02c6f91c  ldr x2,[x8, #0x560]
02c6f920  blr x9
02c6f924  ldr x8,[x24]
02c6f928  ldr x8,[x8, #0xb8]
02c6f92c  ldr x8,[x8]
02c6f930  cbz x8,0x02c6f8f4
02c6f934  ldr x8,[x8, #0x30]
02c6f938  cbz x8,0x02c6f8f4
02c6f93c  ldr w9,[x8, #0x18]
02c6f940  cmp w9,w19
02c6f944  b.ls 0x02c6f978
02c6f948  ldr x0,[x20, #0x50]
02c6f94c  cbz x0,0x02c6f8f4
02c6f950  add x8,x8,x25
02c6f954  ldp x20,x19,[sp, #0x30]
02c6f958  ldrb w8,[x8, #0x20]
02c6f95c  ldp x22,x21,[sp, #0x20]
02c6f960  ldp x24,x23,[sp, #0x10]
02c6f964  mov x2,xzr
02c6f968  cmp w8,#0x0
02c6f96c  cset w1,eq
02c6f970  ldp x30,x25,[sp], #0x40
02c6f974  b 0x057dff3c
02c6f978  bl 0x029f5d04
