02caf65c  stp x30,x21,[sp, #-0x20]!
02caf660  stp x20,x19,[sp, #0x10]
02caf664  adrp x21,0x625c000
02caf668  mov w20,w1
02caf66c  mov x19,x0
02caf670  ldrb w8,[x21, #0x538]
02caf674  tbnz w8,#0x0,0x02caf68c
02caf678  adrp x0,0x5e5d000
02caf67c  ldr x0,[x0, #0x540]
02caf680  bl 0x029f5a50
02caf684  mov w8,#0x1
02caf688  strb w8,[x21, #0x538]
02caf68c  cmp w20,#0x5
02caf690  str w20,[x19, #0x60]
02caf694  b.ne 0x02caf6a8
02caf698  mov x0,x19
02caf69c  ldp x20,x19,[sp, #0x10]
02caf6a0  ldp x30,x21,[sp], #0x20
02caf6a4  b 0x02caf298
02caf6a8  adrp x8,0x5e5d000
02caf6ac  ldr x8,[x8, #0x540]
02caf6b0  ldr x0,[x8]
02caf6b4  ldr w8,[x0, #0xe4]
02caf6b8  cbnz w8,0x02caf6c0
02caf6bc  bl 0x029f5bd0
02caf6c0  mov w0,wzr
02caf6c4  mov w1,w20
02caf6c8  mov x2,xzr
02caf6cc  bl 0x02b99200
02caf6d0  cmp w20,#0x1
02caf6d4  b.le 0x02caf700
02caf6d8  cmp w20,#0x2
02caf6dc  b.eq 0x02caf71c
02caf6e0  cmp w20,#0x3
02caf6e4  b.eq 0x02caf72c
02caf6e8  cmp w20,#0x4
02caf6ec  b.ne 0x02caf74c
02caf6f0  mov x0,x19
02caf6f4  ldp x20,x19,[sp, #0x10]
02caf6f8  ldp x30,x21,[sp], #0x20
02caf6fc  b 0x02caf9a8
02caf700  cbz w20,0x02caf73c
02caf704  cmp w20,#0x1
02caf708  b.ne 0x02caf74c
02caf70c  mov x0,x19
02caf710  ldp x20,x19,[sp, #0x10]
02caf714  ldp x30,x21,[sp], #0x20
02caf718  b 0x02caf87c
02caf71c  mov x0,x19
02caf720  ldp x20,x19,[sp, #0x10]
02caf724  ldp x30,x21,[sp], #0x20
02caf728  b 0x02caf8b8
02caf72c  mov x0,x19
02caf730  ldp x20,x19,[sp, #0x10]
02caf734  ldp x30,x21,[sp], #0x20
02caf738  b 0x02caf8f4
02caf73c  mov x0,x19
02caf740  ldp x20,x19,[sp, #0x10]
02caf744  ldp x30,x21,[sp], #0x20
02caf748  b 0x02caf810
02caf74c  ldp x20,x19,[sp, #0x10]
02caf750  ldp x30,x21,[sp], #0x20
02caf754  ret
