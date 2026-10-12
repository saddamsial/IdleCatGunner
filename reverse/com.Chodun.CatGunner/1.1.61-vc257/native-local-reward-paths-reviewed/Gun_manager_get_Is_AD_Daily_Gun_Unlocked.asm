02c69fc0  str x30,[sp, #-0x20]!
02c69fc4  stp x20,x19,[sp, #0x10]
02c69fc8  adrp x19,0x625c000
02c69fcc  adrp x20,0x5e5d000
02c69fd0  ldrb w8,[x19, #0x273]
02c69fd4  ldr x20,[x20, #0xc20]
02c69fd8  tbnz w8,#0x0,0x02c69ffc
02c69fdc  adrp x0,0x5e59000
02c69fe0  ldr x0,[x0, #0x1c0]
02c69fe4  bl 0x029f5a50
02c69fe8  adrp x0,0x5e5d000
02c69fec  ldr x0,[x0, #0xc20]
02c69ff0  bl 0x029f5a50
02c69ff4  mov w8,#0x1
02c69ff8  strb w8,[x19, #0x273]
02c69ffc  ldr x0,[x20]
02c6a000  adrp x19,0x5e59000
02c6a004  ldr w8,[x0, #0xe4]
02c6a008  ldr x19,[x19, #0x1c0]
02c6a00c  cbnz w8,0x02c6a018
02c6a010  bl 0x029f5bd0
02c6a014  ldr x0,[x20]
02c6a018  ldr x8,[x19]
02c6a01c  ldr x9,[x0, #0xb8]
02c6a020  ldr w10,[x8, #0xe4]
02c6a024  ldr x19,[x9, #0x10]
02c6a028  cbnz w10,0x02c6a034
02c6a02c  mov x0,x8
02c6a030  bl 0x029f5bd0
02c6a034  mov x0,x19
02c6a038  mov x1,xzr
02c6a03c  mov x2,xzr
02c6a040  bl 0x057dfa70
02c6a044  tbz w0,#0x0,0x02c6a078
02c6a048  ldr x0,[x20]
02c6a04c  ldr w8,[x0, #0xe4]
02c6a050  cbnz w8,0x02c6a05c
02c6a054  bl 0x029f5bd0
02c6a058  ldr x0,[x20]
02c6a05c  ldr x8,[x0, #0xb8]
02c6a060  ldr x8,[x8, #0x10]
02c6a064  cbz x8,0x02c6a088
02c6a068  ldr w8,[x8, #0x30]
02c6a06c  cmp w8,#0x1d
02c6a070  cset w0,gt
02c6a074  b 0x02c6a07c
02c6a078  mov w0,wzr
02c6a07c  ldp x20,x19,[sp, #0x10]
02c6a080  ldr x30,[sp], #0x20
02c6a084  ret
02c6a088  bl 0x029f5cfc
