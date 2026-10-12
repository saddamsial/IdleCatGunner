02c696b8  str x30,[sp, #-0x20]!
02c696bc  stp x20,x19,[sp, #0x10]
02c696c0  adrp x20,0x625c000
02c696c4  mov x19,x0
02c696c8  ldrb w8,[x20, #0x26b]
02c696cc  tbnz w8,#0x0,0x02c696f0
02c696d0  adrp x0,0x5e63000
02c696d4  ldr x0,[x0, #0x828]
02c696d8  bl 0x029f5a50
02c696dc  adrp x0,0x5e63000
02c696e0  ldr x0,[x0, #0xa88]
02c696e4  bl 0x029f5a50
02c696e8  mov w8,#0x1
02c696ec  strb w8,[x20, #0x26b]
02c696f0  bl 0x02c694d4
02c696f4  tbz w0,#0x0,0x02c69714
02c696f8  ldrb w8,[x19, #0x70]
02c696fc  mov x0,x19
02c69700  ldp x20,x19,[sp, #0x10]
02c69704  cmp w8,#0x0
02c69708  cset w1,eq
02c6970c  ldr x30,[sp], #0x20
02c69710  b 0x02c695e0
02c69714  adrp x20,0x5e63000
02c69718  mov x0,x19
02c6971c  ldr x20,[x20, #0x828]
02c69720  strb wzr,[x19, #0x70]
02c69724  bl 0x02c67abc
02c69728  ldr x8,[x20]
02c6972c  ldr x8,[x8, #0xb8]
02c69730  ldr x0,[x8]
02c69734  cbz x0,0x02c69754
02c69738  adrp x8,0x5e63000
02c6973c  mov x2,xzr
02c69740  ldr x8,[x8, #0xa88]
02c69744  ldp x20,x19,[sp, #0x10]
02c69748  ldr x1,[x8]
02c6974c  ldr x30,[sp], #0x20
02c69750  b 0x02ca7100
02c69754  bl 0x029f5cfc
