02c35360  stp x30,x21,[sp, #-0x20]!
02c35364  stp x20,x19,[sp, #0x10]
02c35368  adrp x20,0x625c000
02c3536c  mov x19,x0
02c35370  ldrb w8,[x20, #0x61]
02c35374  tbnz w8,#0x0,0x02c3538c
02c35378  adrp x0,0x5e5d000
02c3537c  ldr x0,[x0, #0x5b0]
02c35380  bl 0x029f5a50
02c35384  mov w8,#0x1
02c35388  strb w8,[x20, #0x61]
02c3538c  ldr x0,[x19, #0x38]
02c35390  cbz x0,0x02c353e4
02c35394  adrp x20,0x5e5d000
02c35398  mov w1,#0x1
02c3539c  mov x2,xzr
02c353a0  ldr x20,[x20, #0x5b0]
02c353a4  mov w21,#0x1
02c353a8  bl 0x057dff3c
02c353ac  mov x0,x19
02c353b0  bl 0x02c353e8
02c353b4  mov x0,x19
02c353b8  bl 0x02c356d8
02c353bc  mov x0,x19
02c353c0  bl 0x02c35734
02c353c4  mov x0,x19
02c353c8  bl 0x02c35930
02c353cc  ldr x8,[x20]
02c353d0  ldp x20,x19,[sp, #0x10]
02c353d4  ldr x8,[x8, #0xb8]
02c353d8  strb w21,[x8]
02c353dc  ldp x30,x21,[sp], #0x20
02c353e0  ret
02c353e4  bl 0x029f5cfc
