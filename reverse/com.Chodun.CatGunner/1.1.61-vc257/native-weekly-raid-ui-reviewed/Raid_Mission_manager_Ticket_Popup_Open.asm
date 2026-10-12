02c53f28  str x30,[sp, #-0x20]!
02c53f2c  stp x20,x19,[sp, #0x10]
02c53f30  adrp x20,0x625c000
02c53f34  mov x19,x0
02c53f38  ldrb w8,[x20, #0x173]
02c53f3c  tbnz w8,#0x0,0x02c53f54
02c53f40  adrp x0,0x5e59000
02c53f44  ldr x0,[x0, #0x1c0]
02c53f48  bl 0x029f5a50
02c53f4c  mov w8,#0x1
02c53f50  strb w8,[x20, #0x173]
02c53f54  mov x0,x19
02c53f58  bl 0x02c53fc0
02c53f5c  ldrb w8,[x19, #0x48]
02c53f60  cbnz w8,0x02c53fb0
02c53f64  adrp x8,0x5e59000
02c53f68  ldr x8,[x8, #0x1c0]
02c53f6c  ldr x20,[x19, #0x58]
02c53f70  ldr x0,[x8]
02c53f74  ldr w8,[x0, #0xe4]
02c53f78  cbnz w8,0x02c53f80
02c53f7c  bl 0x029f5bd0
02c53f80  mov x0,x20
02c53f84  mov x1,xzr
02c53f88  mov x2,xzr
02c53f8c  bl 0x057dfa70
02c53f90  tbz w0,#0x0,0x02c53fb0
02c53f94  ldr x0,[x19, #0x58]
02c53f98  cbz x0,0x02c53fbc
02c53f9c  ldp x20,x19,[sp, #0x10]
02c53fa0  mov w1,#0x1
02c53fa4  mov x2,xzr
02c53fa8  ldr x30,[sp], #0x20
02c53fac  b 0x057dff3c
02c53fb0  ldp x20,x19,[sp, #0x10]
02c53fb4  ldr x30,[sp], #0x20
02c53fb8  ret
02c53fbc  bl 0x029f5cfc
