02c52238  stp x30,x21,[sp, #-0x20]!
02c5223c  stp x20,x19,[sp, #0x10]
02c52240  adrp x20,0x625c000
02c52244  adrp x21,0x5e5e000
02c52248  mov x19,x0
02c5224c  ldrb w8,[x20, #0x164]
02c52250  ldr x21,[x21, #0x70]
02c52254  tbnz w8,#0x0,0x02c52278
02c52258  adrp x0,0x5e59000
02c5225c  ldr x0,[x0, #0x1c0]
02c52260  bl 0x029f5a50
02c52264  adrp x0,0x5e5e000
02c52268  ldr x0,[x0, #0x70]
02c5226c  bl 0x029f5a50
02c52270  mov w8,#0x1
02c52274  strb w8,[x20, #0x164]
02c52278  ldr x0,[x21]
02c5227c  adrp x20,0x5e59000
02c52280  ldr w8,[x0, #0xe4]
02c52284  ldr x20,[x20, #0x1c0]
02c52288  cbnz w8,0x02c52294
02c5228c  bl 0x029f5bd0
02c52290  ldr x0,[x21]
02c52294  ldr x8,[x20]
02c52298  ldr x9,[x0, #0xb8]
02c5229c  ldr w10,[x8, #0xe4]
02c522a0  ldr x20,[x9]
02c522a4  cbnz w10,0x02c522b0
02c522a8  mov x0,x8
02c522ac  bl 0x029f5bd0
02c522b0  mov x0,x20
02c522b4  mov x1,xzr
02c522b8  mov x2,xzr
02c522bc  bl 0x057e14b4
02c522c0  tbz w0,#0x0,0x02c522d0
02c522c4  ldp x20,x19,[sp, #0x10]
02c522c8  ldp x30,x21,[sp], #0x20
02c522cc  ret
02c522d0  ldr x0,[x21]
02c522d4  ldr w8,[x0, #0xe4]
02c522d8  cbnz w8,0x02c522e4
02c522dc  bl 0x029f5bd0
02c522e0  ldr x0,[x21]
02c522e4  ldr x8,[x0, #0xb8]
02c522e8  ldr x0,[x8]
02c522ec  cbz x0,0x02c52380
02c522f0  bl 0x02c444d8
02c522f4  tbz w0,#0x0,0x02c52308
02c522f8  mov x0,x19
02c522fc  ldp x20,x19,[sp, #0x10]
02c52300  ldp x30,x21,[sp], #0x20
02c52304  b 0x02c52064
02c52308  adrp x19,0x625b000
02c5230c  ldrb w8,[x19, #0xa57]
02c52310  cbnz w8,0x02c52328
02c52314  adrp x0,0x5e5d000
02c52318  ldr x0,[x0, #0xd70]
02c5231c  bl 0x029f5a50
02c52320  mov w8,#0x1
02c52324  strb w8,[x19, #0xa57]
02c52328  adrp x8,0x5e5d000
02c5232c  ldr x8,[x8, #0xd70]
02c52330  ldr x8,[x8]
02c52334  ldr x8,[x8, #0xb8]
02c52338  ldr x0,[x8]
02c5233c  cbz x0,0x02c52380
02c52340  fmov s0,0x3f800000
02c52344  mov w1,#0x1
02c52348  mov x2,xzr
02c5234c  mov x3,xzr
02c52350  bl 0x02c1f10c
02c52354  ldr x0,[x21]
02c52358  ldr w8,[x0, #0xe4]
02c5235c  cbnz w8,0x02c52368
02c52360  bl 0x029f5bd0
02c52364  ldr x0,[x21]
02c52368  ldr x8,[x0, #0xb8]
02c5236c  ldr x0,[x8]
02c52370  cbz x0,0x02c52380
02c52374  ldp x20,x19,[sp, #0x10]
02c52378  ldp x30,x21,[sp], #0x20
02c5237c  b 0x02c52384
02c52380  bl 0x029f5cfc
