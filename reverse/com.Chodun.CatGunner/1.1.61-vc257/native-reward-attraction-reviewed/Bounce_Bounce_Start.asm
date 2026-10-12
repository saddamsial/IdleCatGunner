02b9afe0  str x30,[sp, #-0x20]!
02b9afe4  stp x20,x19,[sp, #0x10]
02b9afe8  adrp x20,0x625b000
02b9afec  mov x19,x0
02b9aff0  ldrb w8,[x20, #0x9b1]
02b9aff4  tbnz w8,#0x0,0x02b9b00c
02b9aff8  adrp x0,0x5e5e000
02b9affc  ldr x0,[x0, #0x368]
02b9b000  bl 0x029f5a50
02b9b004  mov w8,#0x1
02b9b008  strb w8,[x20, #0x9b1]
02b9b00c  ldrb w8,[x19, #0x34]
02b9b010  str wzr,[x19, #0x20]
02b9b014  cbnz w8,0x02b9b05c
02b9b018  mov w8,#0x1
02b9b01c  mov x0,x19
02b9b020  mov x1,xzr
02b9b024  strb w8,[x19, #0x34]
02b9b028  bl 0x057dc1c8
02b9b02c  cbz x0,0x02b9b068
02b9b030  mov x1,xzr
02b9b034  bl 0x057e00b4
02b9b038  tbz w0,#0x0,0x02b9b05c
02b9b03c  adrp x8,0x5e5e000
02b9b040  mov x0,x19
02b9b044  mov x2,xzr
02b9b048  ldr x8,[x8, #0x368]
02b9b04c  ldp x20,x19,[sp, #0x10]
02b9b050  ldr x1,[x8]
02b9b054  ldr x30,[sp], #0x20
02b9b058  b 0x057e1df4
02b9b05c  ldp x20,x19,[sp, #0x10]
02b9b060  ldr x30,[sp], #0x20
02b9b064  ret
02b9b068  bl 0x029f5cfc
