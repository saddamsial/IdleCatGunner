02b7f834  stp x30,x21,[sp, #-0x20]!
02b7f838  stp x20,x19,[sp, #0x10]
02b7f83c  adrp x21,0x625b000
02b7f840  adrp x20,0x5e5d000
02b7f844  mov w19,w0
02b7f848  ldrb w8,[x21, #0x8c1]
02b7f84c  ldr x20,[x20, #0x338]
02b7f850  tbnz w8,#0x0,0x02b7f868
02b7f854  adrp x0,0x5e5d000
02b7f858  ldr x0,[x0, #0x338]
02b7f85c  bl 0x029f5a50
02b7f860  mov w8,#0x1
02b7f864  strb w8,[x21, #0x8c1]
02b7f868  ldr x0,[x20]
02b7f86c  ldr w8,[x0, #0xe4]
02b7f870  cbnz w8,0x02b7f87c
02b7f874  bl 0x029f5bd0
02b7f878  ldr x0,[x20]
02b7f87c  ldr x9,[x0, #0xb8]
02b7f880  ldr w10,[x9, #0xc4]
02b7f884  ldr x8,[x9, #0x28]
02b7f888  add w10,w10,w19
02b7f88c  str w10,[x9, #0xc4]
02b7f890  cbz x8,0x02b7f8ac
02b7f894  ldp x20,x19,[sp, #0x10]
02b7f898  ldr x0,[x8, #0x40]
02b7f89c  ldr x1,[x8, #0x28]
02b7f8a0  ldr x2,[x8, #0x18]
02b7f8a4  ldp x30,x21,[sp], #0x20
02b7f8a8  br x2
02b7f8ac  ldp x20,x19,[sp, #0x10]
02b7f8b0  ldp x30,x21,[sp], #0x20
02b7f8b4  ret
