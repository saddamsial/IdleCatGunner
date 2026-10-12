02c52928  stp x30,x21,[sp, #-0x20]!
02c5292c  stp x20,x19,[sp, #0x10]
02c52930  adrp x21,0x625c000
02c52934  adrp x20,0x5e59000
02c52938  mov x19,x0
02c5293c  ldrb w8,[x21, #0x171]
02c52940  ldr x20,[x20, #0x1c0]
02c52944  tbnz w8,#0x0,0x02c52974
02c52948  adrp x0,0x5e58000
02c5294c  ldr x0,[x0, #0xf08]
02c52950  bl 0x029f5a50
02c52954  adrp x0,0x5e59000
02c52958  ldr x0,[x0, #0x1c0]
02c5295c  bl 0x029f5a50
02c52960  adrp x0,0x5e63000
02c52964  ldr x0,[x0, #0x5b8]
02c52968  bl 0x029f5a50
02c5296c  mov w8,#0x1
02c52970  strb w8,[x21, #0x171]
02c52974  ldr x0,[x20]
02c52978  ldr x20,[x19, #0x50]
02c5297c  ldr w8,[x0, #0xe4]
02c52980  cbnz w8,0x02c52988
02c52984  bl 0x029f5bd0
02c52988  mov x0,x20
02c5298c  mov x1,xzr
02c52990  mov x2,xzr
02c52994  bl 0x057e14b4
02c52998  tbz w0,#0x0,0x02c529d0
02c5299c  adrp x8,0x5e58000
02c529a0  adrp x19,0x5e63000
02c529a4  ldr x8,[x8, #0xf08]
02c529a8  ldr x0,[x8]
02c529ac  ldr w8,[x0, #0xe4]
02c529b0  ldr x19,[x19, #0x5b8]
02c529b4  cbnz w8,0x02c529bc
02c529b8  bl 0x029f5bd0
02c529bc  ldr x0,[x19]
02c529c0  ldp x20,x19,[sp, #0x10]
02c529c4  mov x1,xzr
02c529c8  ldp x30,x21,[sp], #0x20
02c529cc  b 0x0579a8d0
02c529d0  mov x0,x19
02c529d4  bl 0x02c53c8c
02c529d8  ldr x0,[x19, #0x50]
02c529dc  cbz x0,0x02c529ec
02c529e0  ldp x20,x19,[sp, #0x10]
02c529e4  ldp x30,x21,[sp], #0x20
02c529e8  b 0x02c53e54
02c529ec  bl 0x029f5cfc
