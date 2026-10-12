02b9e130  stp x30,x21,[sp, #-0x20]!
02b9e134  stp x20,x19,[sp, #0x10]
02b9e138  adrp x20,0x625b000
02b9e13c  adrp x21,0x5e5e000
02b9e140  mov w19,w0
02b9e144  ldrb w8,[x20, #0x9e4]
02b9e148  ldr x21,[x21, #0x4d0]
02b9e14c  tbnz w8,#0x0,0x02b9e164
02b9e150  adrp x0,0x5e5e000
02b9e154  ldr x0,[x0, #0x4d0]
02b9e158  bl 0x029f5a50
02b9e15c  mov w8,#0x1
02b9e160  strb w8,[x20, #0x9e4]
02b9e164  ldr x0,[x21]
02b9e168  ldr w8,[x0, #0xe4]
02b9e16c  cbnz w8,0x02b9e174
02b9e170  bl 0x029f5bd0
02b9e174  bl 0x02b9e050
02b9e178  mov w20,w0
02b9e17c  mov w0,w19
02b9e180  bl 0x02b9dfd4
02b9e184  cmp w20,w0
02b9e188  ldp x20,x19,[sp, #0x10]
02b9e18c  cset w0,ge
02b9e190  ldp x30,x21,[sp], #0x20
02b9e194  ret
