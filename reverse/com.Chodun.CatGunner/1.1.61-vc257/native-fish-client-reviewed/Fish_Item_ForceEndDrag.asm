02c60f18  str x30,[sp, #-0x20]!
02c60f1c  stp x20,x19,[sp, #0x10]
02c60f20  adrp x20,0x625c000
02c60f24  mov x19,x0
02c60f28  ldrb w8,[x20, #0x222]
02c60f2c  tbnz w8,#0x0,0x02c60f50
02c60f30  adrp x0,0x5e63000
02c60f34  ldr x0,[x0, #0x850]
02c60f38  bl 0x029f5a50
02c60f3c  adrp x0,0x5e59000
02c60f40  ldr x0,[x0, #0x1c0]
02c60f44  bl 0x029f5a50
02c60f48  mov w8,#0x1
02c60f4c  strb w8,[x20, #0x222]
02c60f50  ldrb w8,[x19, #0x84]
02c60f54  cbz w8,0x02c60fd0
02c60f58  adrp x8,0x5e59000
02c60f5c  ldr x8,[x8, #0x1c0]
02c60f60  strh wzr,[x19, #0x84]
02c60f64  ldr x20,[x19, #0x60]
02c60f68  ldr x0,[x8]
02c60f6c  ldr w8,[x0, #0xe4]
02c60f70  cbnz w8,0x02c60f78
02c60f74  bl 0x029f5bd0
02c60f78  mov x0,x20
02c60f7c  mov x1,xzr
02c60f80  mov x2,xzr
02c60f84  bl 0x057dfa70
02c60f88  tbz w0,#0x0,0x02c60fa0
02c60f8c  ldr x0,[x19, #0x60]
02c60f90  cbz x0,0x02c60fdc
02c60f94  ldr w1,[x19, #0x80]
02c60f98  mov x2,xzr
02c60f9c  bl 0x05aa29d0
02c60fa0  ldr x0,[x19, #0x70]
02c60fa4  adrp x19,0x5e63000
02c60fa8  ldr x19,[x19, #0x850]
02c60fac  cbz x0,0x02c60fb4
02c60fb0  bl 0x02c61910
02c60fb4  ldr x8,[x19]
02c60fb8  ldr x8,[x8, #0xb8]
02c60fbc  ldr x0,[x8]
02c60fc0  cbz x0,0x02c60fd0
02c60fc4  ldp x20,x19,[sp, #0x10]
02c60fc8  ldr x30,[sp], #0x20
02c60fcc  b 0x02c5ffcc
02c60fd0  ldp x20,x19,[sp, #0x10]
02c60fd4  ldr x30,[sp], #0x20
02c60fd8  ret
02c60fdc  bl 0x029f5cfc
