02cac688  stp d9,d8,[sp, #-0x40]!
02cac68c  str x30,[sp, #0x10]
02cac690  stp x22,x21,[sp, #0x20]
02cac694  stp x20,x19,[sp, #0x30]
02cac698  adrp x20,0x625c000
02cac69c  adrp x21,0x5e64000
02cac6a0  mov w19,w1
02cac6a4  ldrb w8,[x20, #0x515]
02cac6a8  ldr x21,[x21, #0xa88]
02cac6ac  tbnz w8,#0x0,0x02cac6c4
02cac6b0  adrp x0,0x5e64000
02cac6b4  ldr x0,[x0, #0xa88]
02cac6b8  bl 0x029f5a50
02cac6bc  mov w8,#0x1
02cac6c0  strb w8,[x20, #0x515]
02cac6c4  movi d0,#0x0
02cac6c8  mov w8,#0x42c80000
02cac6cc  mov x0,xzr
02cac6d0  fmov s1,w8
02cac6d4  movi d9,#0x0
02cac6d8  bl 0x057d55d4
02cac6dc  ldr x0,[x21]
02cac6e0  fmov s8,s0
02cac6e4  sxtw x22,w19
02cac6e8  mov x20,xzr
02cac6ec  ldr w8,[x0, #0xe4]
02cac6f0  cbnz w8,0x02cac6fc
02cac6f4  bl 0x029f5bd0
02cac6f8  ldr x0,[x21]
02cac6fc  ldr x8,[x0, #0xb8]
02cac700  ldr x0,[x8]
02cac704  cbz x0,0x02cac794
02cac708  mov w1,#0x1
02cac70c  mov x2,xzr
02cac710  bl 0x04874f30
02cac714  cmp x20,w0, SXTW 
02cac718  b.ge 0x02cac778
02cac71c  ldr x0,[x21]
02cac720  ldr w8,[x0, #0xe4]
02cac724  cbnz w8,0x02cac730
02cac728  bl 0x029f5bd0
02cac72c  ldr x0,[x21]
02cac730  ldr x8,[x0, #0xb8]
02cac734  ldr x8,[x8]
02cac738  cbz x8,0x02cac794
02cac73c  ldr x9,[x8, #0x10]
02cac740  ldr w10,[x9]
02cac744  cmp w10,w19
02cac748  b.ls 0x02cac798
02cac74c  ldr x9,[x9, #0x10]
02cac750  cmp x20,w9, UXTW 
02cac754  b.cs 0x02cac798
02cac758  madd x9,x9,x22,x20
02cac75c  add x8,x8,x9, LSL #0x2
02cac760  ldr s0,[x8, #0x20]
02cac764  fadd s9,s9,s0
02cac768  fcmp s8,s9
02cac76c  b.mi 0x02cac77c
02cac770  add x20,x20,#0x1
02cac774  b 0x02cac6ec
02cac778  mov w20,wzr
02cac77c  mov w0,w20
02cac780  ldp x20,x19,[sp, #0x30]
02cac784  ldp x22,x21,[sp, #0x20]
02cac788  ldr x30,[sp, #0x10]
02cac78c  ldp d9,d8,[sp], #0x40
02cac790  ret
02cac794  bl 0x029f5cfc
02cac798  bl 0x029f5d04
