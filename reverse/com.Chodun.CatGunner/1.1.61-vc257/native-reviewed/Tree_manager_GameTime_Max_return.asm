02cad0dc  stp x30,x21,[sp, #-0x20]!
02cad0e0  stp x20,x19,[sp, #0x10]
02cad0e4  adrp x20,0x625c000
02cad0e8  adrp x21,0x5e5e000
02cad0ec  mov x19,x0
02cad0f0  ldrb w8,[x20, #0x51e]
02cad0f4  ldr x21,[x21, #0xb8]
02cad0f8  tbnz w8,#0x0,0x02cad110
02cad0fc  adrp x0,0x5e5e000
02cad100  ldr x0,[x0, #0xb8]
02cad104  bl 0x029f5a50
02cad108  mov w8,#0x1
02cad10c  strb w8,[x20, #0x51e]
02cad110  ldr x0,[x21]
02cad114  ldr w8,[x0, #0xe4]
02cad118  cbnz w8,0x02cad120
02cad11c  bl 0x029f5bd0
02cad120  mov w0,wzr
02cad124  mov x1,xzr
02cad128  bl 0x02c9077c
02cad12c  ldr s0,[x19, #0x9c]
02cad130  ldp x20,x19,[sp, #0x10]
02cad134  tst w0,#0x1
02cad138  fadd s1,s0,s0
02cad13c  fcsel s0,s1,s0,ne
02cad140  ldp x30,x21,[sp], #0x20
02cad144  ret
