02c586b4  str x30,[sp, #-0x30]!
02c586b8  stp x22,x21,[sp, #0x10]
02c586bc  stp x20,x19,[sp, #0x20]
02c586c0  adrp x21,0x625c000
02c586c4  adrp x22,0x5e5e000
02c586c8  mov w20,w1
02c586cc  ldrb w8,[x21, #0x1ac]
02c586d0  ldr x22,[x22, #0x70]
02c586d4  mov x19,x0
02c586d8  tbnz w8,#0x0,0x02c586f0
02c586dc  adrp x0,0x5e5e000
02c586e0  ldr x0,[x0, #0x70]
02c586e4  bl 0x029f5a50
02c586e8  mov w8,#0x1
02c586ec  strb w8,[x21, #0x1ac]
02c586f0  ldr x0,[x22]
02c586f4  ldr w8,[x0, #0xe4]
02c586f8  cbnz w8,0x02c58700
02c586fc  bl 0x029f5bd0
02c58700  mov w0,w20
02c58704  bl 0x02c5808c
02c58708  cmn w0,#0x1
02c5870c  b.eq 0x02c58724
02c58710  mov w21,w0
02c58714  mov x0,x19
02c58718  mov w1,w20
02c5871c  bl 0x02c58628
02c58720  tbz w0,#0x0,0x02c58734
02c58724  ldp x20,x19,[sp, #0x20]
02c58728  ldp x22,x21,[sp, #0x10]
02c5872c  ldr x30,[sp], #0x30
02c58730  ret
02c58734  ldr x8,[x19, #0x88]
02c58738  cbz x8,0x02c587b0
02c5873c  ldrsw x9,[x19, #0x98]
02c58740  ldr w10,[x8, #0x18]
02c58744  cmp w9,w10
02c58748  b.cs 0x02c587b4
02c5874c  add x9,x8,x9, LSL #0x2
02c58750  ldr x8,[x19, #0x90]
02c58754  str w21,[x9, #0x20]
02c58758  cbz x8,0x02c587b0
02c5875c  ldrsw x9,[x19, #0x98]
02c58760  ldr w10,[x8, #0x18]
02c58764  cmp w9,w10
02c58768  b.cs 0x02c587b4
02c5876c  add x8,x8,x9, LSL #0x2
02c58770  ldr x0,[x19, #0x38]
02c58774  str w20,[x8, #0x20]
02c58778  cbz x0,0x02c587b0
02c5877c  mov x1,xzr
02c58780  bl 0x057dc1c8
02c58784  cbz x0,0x02c587b0
02c58788  mov w1,wzr
02c5878c  mov x2,xzr
02c58790  bl 0x057dff3c
02c58794  ldr x0,[x19, #0x30]
02c58798  cbz x0,0x02c587b0
02c5879c  ldp x20,x19,[sp, #0x20]
02c587a0  mov x1,xzr
02c587a4  ldp x22,x21,[sp, #0x10]
02c587a8  ldr x30,[sp], #0x30
02c587ac  b 0x02c5b7a4
02c587b0  bl 0x029f5cfc
02c587b4  bl 0x029f5d04
