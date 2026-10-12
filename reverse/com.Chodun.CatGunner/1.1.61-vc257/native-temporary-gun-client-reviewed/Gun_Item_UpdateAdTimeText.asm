02c707e4  str d8,[sp, #-0x40]!
02c707e8  stp x30,x23,[sp, #0x10]
02c707ec  stp x22,x21,[sp, #0x20]
02c707f0  stp x20,x19,[sp, #0x30]
02c707f4  adrp x21,0x625c000
02c707f8  adrp x20,0x5e59000
02c707fc  mov x19,x0
02c70800  ldrb w8,[x21, #0x2c5]
02c70804  ldr x20,[x20, #0x1c0]
02c70808  tbnz w8,#0x0,0x02c70844
02c7080c  adrp x0,0x5e5d000
02c70810  ldr x0,[x0, #0xd40]
02c70814  bl 0x029f5a50
02c70818  adrp x0,0x5e59000
02c7081c  ldr x0,[x0]
02c70820  bl 0x029f5a50
02c70824  adrp x0,0x5e59000
02c70828  ldr x0,[x0, #0x1c0]
02c7082c  bl 0x029f5a50
02c70830  adrp x0,0x5e63000
02c70834  ldr x0,[x0, #0xb78]
02c70838  bl 0x029f5a50
02c7083c  mov w8,#0x1
02c70840  strb w8,[x21, #0x2c5]
02c70844  ldr x0,[x20]
02c70848  ldr x20,[x19, #0x60]
02c7084c  ldr w8,[x0, #0xe4]
02c70850  cbnz w8,0x02c70858
02c70854  bl 0x029f5bd0
02c70858  mov x0,x20
02c7085c  mov x1,xzr
02c70860  mov x2,xzr
02c70864  bl 0x057e14b4
02c70868  tbnz w0,#0x0,0x02c7095c
02c7086c  adrp x8,0x5e5d000
02c70870  ldr x8,[x8, #0xd40]
02c70874  ldr x8,[x8]
02c70878  ldr x8,[x8, #0xb8]
02c7087c  ldr x0,[x8]
02c70880  cbz x0,0x02c70970
02c70884  mov x1,xzr
02c70888  bl 0x02c6a6d8
02c7088c  movi d1,#0x0
02c70890  fcmp d0,#0.0
02c70894  adrp x8,0x5e59000
02c70898  ldr x8,[x8]
02c7089c  ldr x0,[x8]
02c708a0  fcsel d8,d1,d0,mi
02c708a4  ldr w8,[x0, #0xe4]
02c708a8  cbnz w8,0x02c708b0
02c708ac  bl 0x029f5bd0
02c708b0  frintp d0,d8
02c708b4  mov x8,#0x7ff0000000000000
02c708b8  fcvtps w9,d8
02c708bc  fmov d1,x8
02c708c0  mov w8,#0x80000000
02c708c4  adrp x22,0x5e58000
02c708c8  ldr x22,[x22, #0xa10]
02c708cc  ldr x19,[x19, #0x60]
02c708d0  add x1,sp,#0xc
02c708d4  fcmp d0,d1
02c708d8  ldr x0,[x22, #0x48]
02c708dc  csel w21,w8,w9,eq
02c708e0  mov w8,#0x8889
02c708e4  movk w8,#0x8888, LSL #16
02c708e8  smull x8,w21,w8
02c708ec  lsr x8,x8,#0x20
02c708f0  add w8,w8,w21
02c708f4  asr w9,w8,#0x5
02c708f8  add w23,w9,w8, LSR #0x1f
02c708fc  str w23,[sp, #0xc]
02c70900  bl 0x029f5bd8
02c70904  mov w8,#0x3c
02c70908  mov x20,x0
02c7090c  ldr x0,[x22, #0x48]
02c70910  msub w8,w23,w8,w21
02c70914  add x1,sp,#0x8
02c70918  str w8,[sp, #0x8]
02c7091c  bl 0x029f5bd8
02c70920  adrp x8,0x5e63000
02c70924  mov x2,x0
02c70928  mov x1,x20
02c7092c  ldr x8,[x8, #0xb78]
02c70930  mov x3,xzr
02c70934  ldr x8,[x8]
02c70938  mov x0,x8
02c7093c  bl 0x046c1d14
02c70940  cbz x19,0x02c70970
02c70944  ldr x8,[x19]
02c70948  mov x1,x0
02c7094c  mov x0,x19
02c70950  ldr x9,[x8, #0x558]
02c70954  ldr x2,[x8, #0x560]
02c70958  blr x9
02c7095c  ldp x20,x19,[sp, #0x30]
02c70960  ldp x22,x21,[sp, #0x20]
02c70964  ldp x30,x23,[sp, #0x10]
02c70968  ldr d8,[sp], #0x40
02c7096c  ret
02c70970  bl 0x029f5cfc
