02c21688  stp x30,x21,[sp, #-0x20]!
02c2168c  stp x20,x19,[sp, #0x10]
02c21690  adrp x20,0x625b000
02c21694  adrp x21,0x5e62000
02c21698  mov x19,x0
02c2169c  ldrb w8,[x20, #0xf63]
02c216a0  ldr x21,[x21, #0x670]
02c216a4  tbnz w8,#0x0,0x02c216bc
02c216a8  adrp x0,0x5e62000
02c216ac  ldr x0,[x0, #0x670]
02c216b0  bl 0x029f5a50
02c216b4  mov w8,#0x1
02c216b8  strb w8,[x20, #0xf63]
02c216bc  ldr x8,[x21]
02c216c0  ldr x8,[x8, #0xb8]
02c216c4  ldrb w8,[x8, #0x10]
02c216c8  cbz w8,0x02c216dc
02c216cc  mov x0,x19
02c216d0  ldp x20,x19,[sp, #0x10]
02c216d4  ldp x30,x21,[sp], #0x20
02c216d8  b 0x02c21548
02c216dc  ldp x20,x19,[sp, #0x10]
02c216e0  ldp x30,x21,[sp], #0x20
02c216e4  ret
