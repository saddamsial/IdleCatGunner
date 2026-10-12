02c6b010  stp x30,x21,[sp, #-0x20]!
02c6b014  stp x20,x19,[sp, #0x10]
02c6b018  adrp x20,0x625c000
02c6b01c  adrp x21,0x5e63000
02c6b020  mov x19,x0
02c6b024  ldrb w8,[x20, #0x286]
02c6b028  ldr x21,[x21, #0xad0]
02c6b02c  tbnz w8,#0x0,0x02c6b044
02c6b030  adrp x0,0x5e63000
02c6b034  ldr x0,[x0, #0xad0]
02c6b038  bl 0x029f5a50
02c6b03c  mov w8,#0x1
02c6b040  strb w8,[x20, #0x286]
02c6b044  ldr x0,[x21]
02c6b048  bl 0x029f5cec
02c6b04c  mov x1,xzr
02c6b050  mov x20,x0
02c6b054  bl 0x04893238
02c6b058  mov x0,x20
02c6b05c  mov x1,x19
02c6b060  str wzr,[x20, #0x10]
02c6b064  str x19,[x0, #0x20]!
02c6b068  bl 0x029f59f4
02c6b06c  mov x0,x20
02c6b070  ldp x20,x19,[sp, #0x10]
02c6b074  ldp x30,x21,[sp], #0x20
02c6b078  ret
