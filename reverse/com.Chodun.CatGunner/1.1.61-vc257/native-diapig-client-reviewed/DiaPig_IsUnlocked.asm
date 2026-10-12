02c8c7d0  stp x30,x21,[sp, #-0x20]!
02c8c7d4  stp x20,x19,[sp, #0x10]
02c8c7d8  adrp x19,0x625c000
02c8c7dc  adrp x20,0x5e5d000
02c8c7e0  ldrb w8,[x19, #0x3b7]
02c8c7e4  ldr x20,[x20, #0x920]
02c8c7e8  tbnz w8,#0x0,0x02c8c80c
02c8c7ec  adrp x0,0x5e59000
02c8c7f0  ldr x0,[x0, #0x1c0]
02c8c7f4  bl 0x029f5a50
02c8c7f8  adrp x0,0x5e5d000
02c8c7fc  ldr x0,[x0, #0x920]
02c8c800  bl 0x029f5a50
02c8c804  mov w8,#0x1
02c8c808  strb w8,[x19, #0x3b7]
02c8c80c  ldr x0,[x20]
02c8c810  ldr w8,[x0, #0xe4]
02c8c814  cbnz w8,0x02c8c81c
02c8c818  bl 0x029f5bd0
02c8c81c  adrp x21,0x625b000
02c8c820  ldrb w8,[x21, #0x960]
02c8c824  cbnz w8,0x02c8c83c
02c8c828  adrp x0,0x5e5d000
02c8c82c  ldr x0,[x0, #0x920]
02c8c830  bl 0x029f5a50
02c8c834  mov w8,#0x1
02c8c838  strb w8,[x21, #0x960]
02c8c83c  ldr x0,[x20]
02c8c840  adrp x19,0x5e59000
02c8c844  ldr w8,[x0, #0xe4]
02c8c848  ldr x19,[x19, #0x1c0]
02c8c84c  cbnz w8,0x02c8c858
02c8c850  bl 0x029f5bd0
02c8c854  ldr x0,[x20]
02c8c858  ldr x8,[x19]
02c8c85c  ldr x9,[x0, #0xb8]
02c8c860  ldr w10,[x8, #0xe4]
02c8c864  ldr x19,[x9]
02c8c868  cbnz w10,0x02c8c874
02c8c86c  mov x0,x8
02c8c870  bl 0x029f5bd0
02c8c874  mov x0,x19
02c8c878  mov x1,xzr
02c8c87c  mov x2,xzr
02c8c880  bl 0x057dfa70
02c8c884  tbz w0,#0x0,0x02c8c8e0
02c8c888  ldr x0,[x20]
02c8c88c  ldr w8,[x0, #0xe4]
02c8c890  cbnz w8,0x02c8c898
02c8c894  bl 0x029f5bd0
02c8c898  ldrb w8,[x21, #0x960]
02c8c89c  cbnz w8,0x02c8c8b4
02c8c8a0  adrp x0,0x5e5d000
02c8c8a4  ldr x0,[x0, #0x920]
02c8c8a8  bl 0x029f5a50
02c8c8ac  mov w8,#0x1
02c8c8b0  strb w8,[x21, #0x960]
02c8c8b4  ldr x0,[x20]
02c8c8b8  ldr w8,[x0, #0xe4]
02c8c8bc  cbnz w8,0x02c8c8c8
02c8c8c0  bl 0x029f5bd0
02c8c8c4  ldr x0,[x20]
02c8c8c8  ldr x8,[x0, #0xb8]
02c8c8cc  ldr x8,[x8]
02c8c8d0  cbz x8,0x02c8c8f0
02c8c8d4  ldp x20,x19,[sp, #0x10]
02c8c8d8  ldp x30,x21,[sp], #0x20
02c8c8dc  b 0x02c8c8f4
02c8c8e0  ldp x20,x19,[sp, #0x10]
02c8c8e4  mov w0,wzr
02c8c8e8  ldp x30,x21,[sp], #0x20
02c8c8ec  ret
02c8c8f0  bl 0x029f5cfc
