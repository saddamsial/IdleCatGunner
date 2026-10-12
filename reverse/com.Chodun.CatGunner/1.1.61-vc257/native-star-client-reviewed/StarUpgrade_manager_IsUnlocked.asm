02c6d80c  str x30,[sp, #-0x20]!
02c6d810  stp x20,x19,[sp, #0x10]
02c6d814  adrp x19,0x625c000
02c6d818  adrp x20,0x5e5d000
02c6d81c  ldrb w8,[x19, #0x2a9]
02c6d820  ldr x20,[x20, #0xc20]
02c6d824  tbnz w8,#0x0,0x02c6d848
02c6d828  adrp x0,0x5e59000
02c6d82c  ldr x0,[x0, #0x1c0]
02c6d830  bl 0x029f5a50
02c6d834  adrp x0,0x5e5d000
02c6d838  ldr x0,[x0, #0xc20]
02c6d83c  bl 0x029f5a50
02c6d840  mov w8,#0x1
02c6d844  strb w8,[x19, #0x2a9]
02c6d848  ldr x0,[x20]
02c6d84c  adrp x19,0x5e59000
02c6d850  ldr w8,[x0, #0xe4]
02c6d854  ldr x19,[x19, #0x1c0]
02c6d858  cbnz w8,0x02c6d864
02c6d85c  bl 0x029f5bd0
02c6d860  ldr x0,[x20]
02c6d864  ldr x8,[x19]
02c6d868  ldr x9,[x0, #0xb8]
02c6d86c  ldr w10,[x8, #0xe4]
02c6d870  ldr x19,[x9, #0x10]
02c6d874  cbnz w10,0x02c6d880
02c6d878  mov x0,x8
02c6d87c  bl 0x029f5bd0
02c6d880  mov x0,x19
02c6d884  mov x1,xzr
02c6d888  mov x2,xzr
02c6d88c  bl 0x057dfa70
02c6d890  tbz w0,#0x0,0x02c6d8c4
02c6d894  ldr x0,[x20]
02c6d898  ldr w8,[x0, #0xe4]
02c6d89c  cbnz w8,0x02c6d8a8
02c6d8a0  bl 0x029f5bd0
02c6d8a4  ldr x0,[x20]
02c6d8a8  ldr x8,[x0, #0xb8]
02c6d8ac  ldr x8,[x8, #0x10]
02c6d8b0  cbz x8,0x02c6d8d4
02c6d8b4  ldr w8,[x8, #0x30]
02c6d8b8  cmp w8,#0x185
02c6d8bc  cset w0,gt
02c6d8c0  b 0x02c6d8c8
02c6d8c4  mov w0,wzr
02c6d8c8  ldp x20,x19,[sp, #0x10]
02c6d8cc  ldr x30,[sp], #0x20
02c6d8d0  ret
02c6d8d4  bl 0x029f5cfc
