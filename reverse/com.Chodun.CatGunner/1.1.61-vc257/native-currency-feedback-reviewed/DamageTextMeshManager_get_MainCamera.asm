02b85690  stp x30,x21,[sp, #-0x20]!
02b85694  stp x20,x19,[sp, #0x10]
02b85698  adrp x21,0x625b000
02b8569c  adrp x20,0x5e59000
02b856a0  mov x19,x0
02b856a4  ldrb w8,[x21, #0x8ef]
02b856a8  ldr x20,[x20, #0x1c0]
02b856ac  tbnz w8,#0x0,0x02b856c4
02b856b0  adrp x0,0x5e59000
02b856b4  ldr x0,[x0, #0x1c0]
02b856b8  bl 0x029f5a50
02b856bc  mov w8,#0x1
02b856c0  strb w8,[x21, #0x8ef]
02b856c4  ldr x0,[x20]
02b856c8  ldr x20,[x19, #0x10]!
02b856cc  ldr w8,[x0, #0xe4]
02b856d0  cbnz w8,0x02b856d8
02b856d4  bl 0x029f5bd0
02b856d8  mov x0,x20
02b856dc  mov x1,xzr
02b856e0  mov x2,xzr
02b856e4  bl 0x057e14b4
02b856e8  tbnz w0,#0x0,0x02b8570c
02b856ec  ldr x0,[x19]
02b856f0  cbz x0,0x02b85734
02b856f4  mov x1,xzr
02b856f8  bl 0x057dc1c8
02b856fc  cbz x0,0x02b85734
02b85700  mov x1,xzr
02b85704  bl 0x057e00b4
02b85708  tbnz w0,#0x0,0x02b85724
02b8570c  mov x0,xzr
02b85710  bl 0x05797adc
02b85714  mov x1,x0
02b85718  str x0,[x19]
02b8571c  mov x0,x19
02b85720  bl 0x029f59f4
02b85724  ldr x0,[x19]
02b85728  ldp x20,x19,[sp, #0x10]
02b8572c  ldp x30,x21,[sp], #0x20
02b85730  ret
02b85734  bl 0x029f5cfc
