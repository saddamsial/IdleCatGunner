02c22750  stp x30,x21,[sp, #-0x20]!
02c22754  stp x20,x19,[sp, #0x10]
02c22758  adrp x20,0x625b000
02c2275c  mov x19,x0
02c22760  ldrb w8,[x20, #0xf72]
02c22764  tbnz w8,#0x0,0x02c2277c
02c22768  adrp x0,0x5e59000
02c2276c  ldr x0,[x0, #0x1c0]
02c22770  bl 0x029f5a50
02c22774  mov w8,#0x1
02c22778  strb w8,[x20, #0xf72]
02c2277c  ldr x0,[x19, #0x28]
02c22780  cbz x0,0x02c227fc
02c22784  adrp x20,0x5e59000
02c22788  mov x1,xzr
02c2278c  ldr x20,[x20, #0x1c0]
02c22790  bl 0x057888e8
02c22794  ldr x8,[x20]
02c22798  ldr x20,[x19, #0x58]
02c2279c  mov x21,x0
02c227a0  ldr w9,[x8, #0xe4]
02c227a4  cbnz w9,0x02c227b0
02c227a8  mov x0,x8
02c227ac  bl 0x029f5bd0
02c227b0  mov x0,x21
02c227b4  mov x1,x20
02c227b8  mov x2,xzr
02c227bc  bl 0x057dfa70
02c227c0  tbz w0,#0x0,0x02c227f0
02c227c4  ldr x0,[x19, #0x28]
02c227c8  cbz x0,0x02c227fc
02c227cc  ldr x1,[x19, #0x58]
02c227d0  mov x2,xzr
02c227d4  bl 0x057889d8
02c227d8  ldr x0,[x19, #0x28]
02c227dc  cbz x0,0x02c227fc
02c227e0  ldp x20,x19,[sp, #0x10]
02c227e4  mov x1,xzr
02c227e8  ldp x30,x21,[sp], #0x20
02c227ec  b 0x05788b10
02c227f0  ldp x20,x19,[sp, #0x10]
02c227f4  ldp x30,x21,[sp], #0x20
02c227f8  ret
02c227fc  bl 0x029f5cfc
