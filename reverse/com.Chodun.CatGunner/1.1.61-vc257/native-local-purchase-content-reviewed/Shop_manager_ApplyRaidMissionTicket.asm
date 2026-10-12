02c98870  stp x30,x21,[sp, #-0x20]!
02c98874  stp x20,x19,[sp, #0x10]
02c98878  adrp x21,0x625c000
02c9887c  adrp x20,0x5e5e000
02c98880  adrp x19,0x5e59000
02c98884  ldrb w8,[x21, #0x468]
02c98888  ldr x20,[x20, #0x68]
02c9888c  ldr x19,[x19, #0x1c0]
02c98890  tbnz w8,#0x0,0x02c988cc
02c98894  adrp x0,0x5e58000
02c98898  ldr x0,[x0, #0xf08]
02c9889c  bl 0x029f5a50
02c988a0  adrp x0,0x5e59000
02c988a4  ldr x0,[x0, #0x1c0]
02c988a8  bl 0x029f5a50
02c988ac  adrp x0,0x5e5e000
02c988b0  ldr x0,[x0, #0x68]
02c988b4  bl 0x029f5a50
02c988b8  adrp x0,0x5e64000
02c988bc  ldr x0,[x0, #0x468]
02c988c0  bl 0x029f5a50
02c988c4  mov w8,#0x1
02c988c8  strb w8,[x21, #0x468]
02c988cc  ldr x8,[x20]
02c988d0  ldr x0,[x19]
02c988d4  ldr x8,[x8, #0xb8]
02c988d8  ldr w9,[x0, #0xe4]
02c988dc  ldr x19,[x8]
02c988e0  cbnz w9,0x02c988e8
02c988e4  bl 0x029f5bd0
02c988e8  mov x0,x19
02c988ec  mov x1,xzr
02c988f0  mov x2,xzr
02c988f4  bl 0x057e14b4
02c988f8  tbz w0,#0x0,0x02c98938
02c988fc  adrp x8,0x5e58000
02c98900  adrp x19,0x5e64000
02c98904  ldr x8,[x8, #0xf08]
02c98908  ldr x0,[x8]
02c9890c  ldr w8,[x0, #0xe4]
02c98910  ldr x19,[x19, #0x468]
02c98914  cbnz w8,0x02c9891c
02c98918  bl 0x029f5bd0
02c9891c  ldr x0,[x19]
02c98920  mov x1,xzr
02c98924  bl 0x0579a8d0
02c98928  ldp x20,x19,[sp, #0x10]
02c9892c  mov w0,wzr
02c98930  ldp x30,x21,[sp], #0x20
02c98934  ret
02c98938  ldr x8,[x20]
02c9893c  ldr x8,[x8, #0xb8]
02c98940  ldr x0,[x8]
02c98944  cbz x0,0x02c98958
02c98948  ldp x20,x19,[sp, #0x10]
02c9894c  mov x1,xzr
02c98950  ldp x30,x21,[sp], #0x20
02c98954  b 0x02c54d8c
02c98958  bl 0x029f5cfc
