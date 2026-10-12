02c7d860  stp x30,x21,[sp, #-0x20]!
02c7d864  stp x20,x19,[sp, #0x10]
02c7d868  adrp x21,0x625c000
02c7d86c  mov x19,x0
02c7d870  and w20,w1,#0x1
02c7d874  ldrb w8,[x21, #0x32c]
02c7d878  tbnz w8,#0x0,0x02c7d890
02c7d87c  adrp x0,0x5e59000
02c7d880  ldr x0,[x0, #0x1c0]
02c7d884  bl 0x029f5a50
02c7d888  mov w8,#0x1
02c7d88c  strb w8,[x21, #0x32c]
02c7d890  mov x0,x19
02c7d894  strb w20,[x19, #0x60]
02c7d898  bl 0x02c7c6e4
02c7d89c  bl 0x02c7d764
02c7d8a0  tbz w0,#0x0,0x02c7d8bc
02c7d8a4  ldrb w8,[x19, #0x60]
02c7d8a8  cbz w8,0x02c7d8bc
02c7d8ac  mov x0,x19
02c7d8b0  ldp x20,x19,[sp, #0x10]
02c7d8b4  ldp x30,x21,[sp], #0x20
02c7d8b8  b 0x02c7c878
02c7d8bc  adrp x8,0x5e59000
02c7d8c0  ldr x8,[x8, #0x1c0]
02c7d8c4  ldr x20,[x19, #0x88]
02c7d8c8  ldr x0,[x8]
02c7d8cc  ldr w8,[x0, #0xe4]
02c7d8d0  cbnz w8,0x02c7d8d8
02c7d8d4  bl 0x029f5bd0
02c7d8d8  mov x0,x20
02c7d8dc  mov x1,xzr
02c7d8e0  mov x2,xzr
02c7d8e4  bl 0x057dfa70
02c7d8e8  tbz w0,#0x0,0x02c7d904
02c7d8ec  ldr x0,[x19, #0x88]
02c7d8f0  cbz x0,0x02c7d910
02c7d8f4  ldp x20,x19,[sp, #0x10]
02c7d8f8  mov x1,xzr
02c7d8fc  ldp x30,x21,[sp], #0x20
02c7d900  b 0x02c839c8
02c7d904  ldp x20,x19,[sp, #0x10]
02c7d908  ldp x30,x21,[sp], #0x20
02c7d90c  ret
02c7d910  bl 0x029f5cfc
