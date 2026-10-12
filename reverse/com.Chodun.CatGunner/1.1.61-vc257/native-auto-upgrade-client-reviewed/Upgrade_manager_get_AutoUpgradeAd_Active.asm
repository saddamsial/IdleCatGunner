02cb345c  str x30,[sp, #-0x20]!
02cb3460  stp x20,x19,[sp, #0x10]
02cb3464  adrp x20,0x625c000
02cb3468  adrp x19,0x5e5d000
02cb346c  ldrb w8,[x20, #0x567]
02cb3470  ldr x19,[x19, #0x4e8]
02cb3474  tbnz w8,#0x0,0x02cb348c
02cb3478  adrp x0,0x5e5d000
02cb347c  ldr x0,[x0, #0x4e8]
02cb3480  bl 0x029f5a50
02cb3484  mov w8,#0x1
02cb3488  strb w8,[x20, #0x567]
02cb348c  ldr x0,[x19]
02cb3490  ldr w8,[x0, #0xe4]
02cb3494  cbnz w8,0x02cb34a0
02cb3498  bl 0x029f5bd0
02cb349c  ldr x0,[x19]
02cb34a0  ldr x8,[x0, #0xb8]
02cb34a4  ldp x20,x19,[sp, #0x10]
02cb34a8  ldr s0,[x8, #0x10]
02cb34ac  fcmp s0,#0.0
02cb34b0  cset w0,gt
02cb34b4  ldr x30,[sp], #0x20
02cb34b8  ret
