02ca4114  stp x30,x21,[sp, #-0x20]!
02ca4118  stp x20,x19,[sp, #0x10]
02ca411c  adrp x20,0x625c000
02ca4120  adrp x21,0x5e64000
02ca4124  mov x19,x0
02ca4128  ldrb w8,[x20, #0x4a9]
02ca412c  ldr x21,[x21, #0x930]
02ca4130  tbnz w8,#0x0,0x02ca4148
02ca4134  adrp x0,0x5e64000
02ca4138  ldr x0,[x0, #0x930]
02ca413c  bl 0x029f5a50
02ca4140  mov w8,#0x1
02ca4144  strb w8,[x20, #0x4a9]
02ca4148  ldr x0,[x21]
02ca414c  bl 0x029f5cec
02ca4150  mov x1,xzr
02ca4154  mov x20,x0
02ca4158  bl 0x04893238
02ca415c  mov x0,x20
02ca4160  mov x1,x19
02ca4164  str wzr,[x20, #0x10]
02ca4168  str x19,[x0, #0x20]!
02ca416c  bl 0x029f59f4
02ca4170  mov x0,x20
02ca4174  ldp x20,x19,[sp, #0x10]
02ca4178  ldp x30,x21,[sp], #0x20
02ca417c  ret
