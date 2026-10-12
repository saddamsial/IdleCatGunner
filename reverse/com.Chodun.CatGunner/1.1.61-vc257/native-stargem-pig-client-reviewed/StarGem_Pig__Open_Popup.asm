02ca0748  stp x30,x21,[sp, #-0x20]!
02ca074c  stp x20,x19,[sp, #0x10]
02ca0750  adrp x21,0x625c000
02ca0754  adrp x20,0x5e59000
02ca0758  mov x19,x0
02ca075c  ldrb w8,[x21, #0x47b]
02ca0760  ldr x20,[x20, #0x1c0]
02ca0764  tbnz w8,#0x0,0x02ca0794
02ca0768  adrp x0,0x5e58000
02ca076c  ldr x0,[x0, #0xf08]
02ca0770  bl 0x029f5a50
02ca0774  adrp x0,0x5e59000
02ca0778  ldr x0,[x0, #0x1c0]
02ca077c  bl 0x029f5a50
02ca0780  adrp x0,0x5e64000
02ca0784  ldr x0,[x0, #0x8b0]
02ca0788  bl 0x029f5a50
02ca078c  mov w8,#0x1
02ca0790  strb w8,[x21, #0x47b]
02ca0794  ldr x0,[x20]
02ca0798  ldr x20,[x19, #0x30]
02ca079c  ldr w8,[x0, #0xe4]
02ca07a0  cbnz w8,0x02ca07a8
02ca07a4  bl 0x029f5bd0
02ca07a8  mov x0,x20
02ca07ac  mov x1,xzr
02ca07b0  mov x2,xzr
02ca07b4  bl 0x057e14b4
02ca07b8  tbz w0,#0x0,0x02ca07f0
02ca07bc  adrp x8,0x5e58000
02ca07c0  adrp x19,0x5e64000
02ca07c4  ldr x8,[x8, #0xf08]
02ca07c8  ldr x0,[x8]
02ca07cc  ldr w8,[x0, #0xe4]
02ca07d0  ldr x19,[x19, #0x8b0]
02ca07d4  cbnz w8,0x02ca07dc
02ca07d8  bl 0x029f5bd0
02ca07dc  ldr x0,[x19]
02ca07e0  ldp x20,x19,[sp, #0x10]
02ca07e4  mov x1,xzr
02ca07e8  ldp x30,x21,[sp], #0x20
02ca07ec  b 0x0579a8d0
02ca07f0  mov x0,x19
02ca07f4  bl 0x02ca0830
02ca07f8  ldr x0,[x19, #0x30]
02ca07fc  cbz x0,0x02ca082c
02ca0800  mov x1,xzr
02ca0804  bl 0x057dc1c8
02ca0808  cbz x0,0x02ca082c
02ca080c  mov w1,#0x1
02ca0810  mov x2,xzr
02ca0814  bl 0x057dff3c
02ca0818  ldr x0,[x19, #0x30]
02ca081c  cbz x0,0x02ca082c
02ca0820  ldp x20,x19,[sp, #0x10]
02ca0824  ldp x30,x21,[sp], #0x20
02ca0828  b 0x02ca08f4
02ca082c  bl 0x029f5cfc
