02b9f24c  stp x30,x19,[sp, #-0x10]!
02b9f250  ldrb w8,[x0, #0x38]
02b9f254  cbnz w8,0x02b9f278
02b9f258  mov x19,x0
02b9f25c  bl 0x02b9f50c
02b9f260  tbz w0,#0x0,0x02b9f278
02b9f264  mov w8,#0x1
02b9f268  mov x0,x19
02b9f26c  strb w8,[x19, #0x38]
02b9f270  ldp x30,x19,[sp], #0x10
02b9f274  b 0x02b9f18c
02b9f278  ldp x30,x19,[sp], #0x10
02b9f27c  ret
