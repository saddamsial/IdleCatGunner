02c4957c  str x30,[sp, #-0x20]!
02c49580  stp x20,x19,[sp, #0x10]
02c49584  adrp x20,0x625c000
02c49588  mov x19,x0
02c4958c  ldrb w8,[x20, #0x109]
02c49590  tbnz w8,#0x0,0x02c495f0
02c49594  adrp x0,0x5e5d000
02c49598  ldr x0,[x0, #0x5b0]
02c4959c  bl 0x029f5a50
02c495a0  adrp x0,0x5e5d000
02c495a4  ldr x0,[x0, #0x338]
02c495a8  bl 0x029f5a50
02c495ac  adrp x0,0x5e5d000
02c495b0  ldr x0,[x0, #0xd50]
02c495b4  bl 0x029f5a50
02c495b8  adrp x0,0x5e62000
02c495bc  ldr x0,[x0, #0x670]
02c495c0  bl 0x029f5a50
02c495c4  adrp x0,0x5e5d000
02c495c8  ldr x0,[x0, #0x920]
02c495cc  bl 0x029f5a50
02c495d0  adrp x0,0x5e5d000
02c495d4  ldr x0,[x0, #0xc20]
02c495d8  bl 0x029f5a50
02c495dc  adrp x0,0x5e5d000
02c495e0  ldr x0,[x0, #0x368]
02c495e4  bl 0x029f5a50
02c495e8  mov w8,#0x1
02c495ec  strb w8,[x20, #0x109]
02c495f0  mov x0,x19
02c495f4  bl 0x02c49008
02c495f8  ldr w20,[x19, #0x50]
02c495fc  bl 0x02c4946c
02c49600  cmp w20,w0
02c49604  b.ge 0x02c497c4
02c49608  ldr x0,[x19, #0x28]
02c4960c  cbz x0,0x02c49870
02c49610  mov x1,xzr
02c49614  bl 0x057dc1c8
02c49618  cbz x0,0x02c49870
02c4961c  mov w1,wzr
02c49620  mov x2,xzr
02c49624  bl 0x057dff3c
02c49628  adrp x20,0x5e5d000
02c4962c  ldr x20,[x20, #0x338]
02c49630  ldr w8,[x19, #0x50]
02c49634  strh wzr,[x19, #0x68]
02c49638  strb wzr,[x19, #0x6a]
02c4963c  ldr x0,[x20]
02c49640  add w8,w8,#0x1
02c49644  str w8,[x19, #0x50]
02c49648  ldr w9,[x0, #0xe4]
02c4964c  cbnz w9,0x02c49658
02c49650  bl 0x029f5bd0
02c49654  ldr x0,[x20]
02c49658  adrp x20,0x5e5d000
02c4965c  ldr x20,[x20, #0xc20]
02c49660  ldr x9,[x0, #0xb8]
02c49664  ldr x8,[x20]
02c49668  strb wzr,[x9]
02c4966c  ldr w10,[x8, #0xe4]
02c49670  cbnz w10,0x02c49680
02c49674  mov x0,x8
02c49678  bl 0x029f5bd0
02c4967c  ldr x8,[x20]
02c49680  ldr x8,[x8, #0xb8]
02c49684  ldr x0,[x8, #0x10]
02c49688  cbz x0,0x02c49870
02c4968c  mov x1,xzr
02c49690  bl 0x02ca8b2c
02c49694  adrp x8,0x5e62000
02c49698  ldr x8,[x8, #0x670]
02c4969c  ldr x8,[x8]
02c496a0  ldr x8,[x8, #0xb8]
02c496a4  ldr x0,[x8, #0x8]
02c496a8  cbz x0,0x02c49870
02c496ac  mov x1,xzr
02c496b0  bl 0x02c21688
02c496b4  ldr x8,[x19, #0x20]
02c496b8  str wzr,[x19, #0x64]
02c496bc  cbz x8,0x02c49870
02c496c0  adrp x9,0x5e5d000
02c496c4  ldr x9,[x9, #0x368]
02c496c8  ldr w8,[x8, #0x18]
02c496cc  ldr x9,[x9]
02c496d0  stp w8,w8,[x19, #0x6c]
02c496d4  ldr x9,[x9, #0xb8]
02c496d8  ldr x0,[x9]
02c496dc  cbz x0,0x02c49870
02c496e0  mov w1,#0x2
02c496e4  mov x2,xzr
02c496e8  bl 0x02c2a560
02c496ec  adrp x20,0x5e5d000
02c496f0  ldr x20,[x20, #0x5b0]
02c496f4  ldr x8,[x20]
02c496f8  ldr x8,[x8, #0xb8]
02c496fc  ldr x0,[x8, #0x8]
02c49700  cbz x0,0x02c49870
02c49704  ldp s1,s2,[x19, #0x8c]
02c49708  ldr s0,[x19, #0x88]
02c4970c  bl 0x02c44748
02c49710  ldr x8,[x20]
02c49714  ldr x8,[x8, #0xb8]
02c49718  ldr x0,[x8, #0x8]
02c4971c  cbz x0,0x02c49870
02c49720  bl 0x02c43744
02c49724  adrp x20,0x625b000
02c49728  ldrb w8,[x20, #0xa57]
02c4972c  cbnz w8,0x02c49744
02c49730  adrp x0,0x5e5d000
02c49734  ldr x0,[x0, #0xd70]
02c49738  bl 0x029f5a50
02c4973c  mov w8,#0x1
02c49740  strb w8,[x20, #0xa57]
02c49744  adrp x8,0x5e5d000
02c49748  ldr x8,[x8, #0xd70]
02c4974c  ldr x8,[x8]
02c49750  ldr x8,[x8, #0xb8]
02c49754  ldr x0,[x8]
02c49758  cbz x0,0x02c49870
02c4975c  fmov s0,0x3f800000
02c49760  mov w1,#0xa
02c49764  mov x2,xzr
02c49768  mov x3,xzr
02c4976c  bl 0x02c1f10c
02c49770  mov x0,x19
02c49774  bl 0x02c49874
02c49778  mov x1,x0
02c4977c  mov x0,x19
02c49780  mov x2,xzr
02c49784  bl 0x057e2120
02c49788  adrp x19,0x5e5d000
02c4978c  ldr x19,[x19, #0xd50]
02c49790  ldr x0,[x19]
02c49794  ldr w8,[x0, #0xe4]
02c49798  cbnz w8,0x02c497a4
02c4979c  bl 0x029f5bd0
02c497a0  ldr x0,[x19]
02c497a4  ldr x8,[x0, #0xb8]
02c497a8  ldr x0,[x8, #0x8]
02c497ac  cbz x0,0x02c49870
02c497b0  ldp x20,x19,[sp, #0x10]
02c497b4  mov w1,#0x3
02c497b8  mov x2,xzr
02c497bc  ldr x30,[sp], #0x20
02c497c0  b 0x02ba6a18
02c497c4  mov x0,xzr
02c497c8  bl 0x02bdfd28
02c497cc  mov x1,xzr
02c497d0  bl 0x02c1dd54
02c497d4  adrp x20,0x625b000
02c497d8  ldrb w8,[x20, #0xa57]
02c497dc  cbnz w8,0x02c497f4
02c497e0  adrp x0,0x5e5d000
02c497e4  ldr x0,[x0, #0xd70]
02c497e8  bl 0x029f5a50
02c497ec  mov w8,#0x1
02c497f0  strb w8,[x20, #0xa57]
02c497f4  adrp x8,0x5e5d000
02c497f8  ldr x8,[x8, #0xd70]
02c497fc  ldr x8,[x8]
02c49800  ldr x8,[x8, #0xb8]
02c49804  ldr x0,[x8]
02c49808  cbz x0,0x02c49870
02c4980c  fmov s0,0x3f800000
02c49810  mov w1,#0x5
02c49814  mov x2,xzr
02c49818  mov x3,xzr
02c4981c  bl 0x02c1f10c
02c49820  adrp x20,0x5e5d000
02c49824  ldr x20,[x20, #0x920]
02c49828  ldr x0,[x20]
02c4982c  ldr w8,[x0, #0xe4]
02c49830  cbnz w8,0x02c4983c
02c49834  bl 0x029f5bd0
02c49838  ldr x0,[x20]
02c4983c  ldr x8,[x0, #0xb8]
02c49840  ldrb w8,[x8, #0xd]
02c49844  cbz w8,0x02c49854
02c49848  ldp x20,x19,[sp, #0x10]
02c4984c  ldr x30,[sp], #0x20
02c49850  ret
02c49854  ldr x0,[x19, #0x48]
02c49858  cbz x0,0x02c49870
02c4985c  ldp x20,x19,[sp, #0x10]
02c49860  mov w1,#0x1
02c49864  mov x2,xzr
02c49868  ldr x30,[sp], #0x20
02c4986c  b 0x057dff3c
02c49870  bl 0x029f5cfc
