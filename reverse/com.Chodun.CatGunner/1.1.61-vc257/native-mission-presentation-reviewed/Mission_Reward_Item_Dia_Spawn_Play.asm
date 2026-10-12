02c044f8  str x30,[sp, #-0x30]!
02c044fc  stp x22,x21,[sp, #0x10]
02c04500  stp x20,x19,[sp, #0x20]
02c04504  adrp x20,0x625b000
02c04508  adrp x21,0x5e5e000
02c0450c  adrp x22,0x5e59000
02c04510  ldrb w8,[x20, #0xe5f]
02c04514  ldr x21,[x21, #0x520]
02c04518  ldr x22,[x22, #0x1c0]
02c0451c  mov x19,x0
02c04520  tbnz w8,#0x0,0x02c04550
02c04524  adrp x0,0x5e5e000
02c04528  ldr x0,[x0, #0x520]
02c0452c  bl 0x029f5a50
02c04530  adrp x0,0x5e59000
02c04534  ldr x0,[x0, #0x1c0]
02c04538  bl 0x029f5a50
02c0453c  adrp x0,0x5e5b000
02c04540  ldr x0,[x0, #0xfa8]
02c04544  bl 0x029f5a50
02c04548  mov w8,#0x1
02c0454c  strb w8,[x20, #0xe5f]
02c04550  ldr x8,[x21]
02c04554  ldr x0,[x22]
02c04558  ldr x8,[x8, #0xb8]
02c0455c  ldr w9,[x0, #0xe4]
02c04560  ldr x20,[x8]
02c04564  cbnz w9,0x02c0456c
02c04568  bl 0x029f5bd0
02c0456c  mov x0,x20
02c04570  mov x1,xzr
02c04574  mov x2,xzr
02c04578  bl 0x057e14b4
02c0457c  tbnz w0,#0x0,0x02c04610
02c04580  ldr x0,[x22]
02c04584  ldr x20,[x19, #0x28]
02c04588  ldr w8,[x0, #0xe4]
02c0458c  cbnz w8,0x02c04594
02c04590  bl 0x029f5bd0
02c04594  mov x0,x20
02c04598  mov x1,xzr
02c0459c  mov x2,xzr
02c045a0  bl 0x057dfa70
02c045a4  tbz w0,#0x0,0x02c045c4
02c045a8  ldr x0,[x19, #0x28]
02c045ac  cbz x0,0x02c0464c
02c045b0  mov x1,xzr
02c045b4  bl 0x057dfcf4
02c045b8  cbnz x0,0x02c045d4
02c045bc  mov x19,xzr
02c045c0  b 0x02c045ec
02c045c4  mov x0,x19
02c045c8  mov x1,xzr
02c045cc  bl 0x057dc0f8
02c045d0  cbz x0,0x02c045bc
02c045d4  adrp x8,0x5e5b000
02c045d8  ldr x8,[x8, #0xfa8]
02c045dc  ldr x9,[x0]
02c045e0  ldr x8,[x8]
02c045e4  cmp x9,x8
02c045e8  csel x19,x0,xzr,eq
02c045ec  ldr x0,[x22]
02c045f0  ldr w8,[x0, #0xe4]
02c045f4  cbnz w8,0x02c045fc
02c045f8  bl 0x029f5bd0
02c045fc  mov x0,x19
02c04600  mov x1,xzr
02c04604  mov x2,xzr
02c04608  bl 0x057e14b4
02c0460c  tbz w0,#0x0,0x02c04620
02c04610  ldp x20,x19,[sp, #0x20]
02c04614  ldp x22,x21,[sp, #0x10]
02c04618  ldr x30,[sp], #0x30
02c0461c  ret
02c04620  ldr x8,[x21]
02c04624  ldr x8,[x8, #0xb8]
02c04628  ldr x0,[x8]
02c0462c  cbz x0,0x02c0464c
02c04630  mov x1,x19
02c04634  ldp x20,x19,[sp, #0x20]
02c04638  ldp x22,x21,[sp, #0x10]
02c0463c  mov w2,#0x8
02c04640  mov x3,xzr
02c04644  ldr x30,[sp], #0x30
02c04648  b 0x02c26b18
02c0464c  bl 0x029f5cfc
