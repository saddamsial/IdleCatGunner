02c169a4  str x30,[sp, #-0x20]!
02c169a8  stp x20,x19,[sp, #0x10]
02c169ac  adrp x20,0x625b000
02c169b0  mov x19,x0
02c169b4  ldrb w8,[x20, #0xef3]
02c169b8  tbnz w8,#0x0,0x02c169d0
02c169bc  adrp x0,0x5e59000
02c169c0  ldr x0,[x0, #0x8b8]
02c169c4  bl 0x029f5a50
02c169c8  mov w8,#0x1
02c169cc  strb w8,[x20, #0xef3]
02c169d0  mov x0,x19
02c169d4  mov x1,xzr
02c169d8  bl 0x05860c00
02c169dc  mov x19,x0
02c169e0  mov x0,xzr
02c169e4  bl 0x046de110
02c169e8  cbz x0,0x02c16a34
02c169ec  ldr x8,[x0]
02c169f0  adrp x20,0x5e59000
02c169f4  mov x1,x19
02c169f8  ldr x20,[x20, #0x8b8]
02c169fc  ldr x9,[x8, #0x268]
02c16a00  ldr x2,[x8, #0x270]
02c16a04  blr x9
02c16a08  ldr x8,[x20]
02c16a0c  mov x19,x0
02c16a10  ldr w9,[x8, #0xe4]
02c16a14  cbnz w9,0x02c16a20
02c16a18  mov x0,x8
02c16a1c  bl 0x029f5bd0
02c16a20  mov x0,x19
02c16a24  ldp x20,x19,[sp, #0x10]
02c16a28  mov x1,xzr
02c16a2c  ldr x30,[sp], #0x20
02c16a30  b 0x047c1f64
02c16a34  bl 0x029f5cfc
