02b85738  stp x30,x21,[sp, #-0x20]!
02b8573c  stp x20,x19,[sp, #0x10]
02b85740  adrp x21,0x625b000
02b85744  adrp x20,0x5e59000
02b85748  mov x19,x0
02b8574c  ldrb w8,[x21, #0x8f0]
02b85750  ldr x20,[x20, #0x1c0]
02b85754  tbnz w8,#0x0,0x02b8576c
02b85758  adrp x0,0x5e59000
02b8575c  ldr x0,[x0, #0x1c0]
02b85760  bl 0x029f5a50
02b85764  mov w8,#0x1
02b85768  strb w8,[x21, #0x8f0]
02b8576c  ldr x0,[x20]
02b85770  ldr x20,[x19, #0x18]!
02b85774  ldr w8,[x0, #0xe4]
02b85778  cbnz w8,0x02b85780
02b8577c  bl 0x029f5bd0
02b85780  mov x0,x20
02b85784  mov x1,xzr
02b85788  mov x2,xzr
02b8578c  bl 0x057e14b4
02b85790  tbz w0,#0x0,0x02b857ac
02b85794  mov x0,xzr
02b85798  bl 0x05797adc
02b8579c  mov x1,x0
02b857a0  str x0,[x19]
02b857a4  mov x0,x19
02b857a8  bl 0x029f59f4
02b857ac  ldr x0,[x19]
02b857b0  ldp x20,x19,[sp, #0x10]
02b857b4  ldp x30,x21,[sp], #0x20
02b857b8  ret
