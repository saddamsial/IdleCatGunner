02c54f4c  str x30,[sp, #-0x20]!
02c54f50  stp x20,x19,[sp, #0x10]
02c54f54  adrp x20,0x625c000
02c54f58  mov x19,x0
02c54f5c  ldrb w8,[x20, #0x182]
02c54f60  tbnz w8,#0x0,0x02c54f78
02c54f64  adrp x0,0x5e62000
02c54f68  ldr x0,[x0, #0x6b0]
02c54f6c  bl 0x029f5a50
02c54f70  mov w8,#0x1
02c54f74  strb w8,[x20, #0x182]
02c54f78  ldr x0,[x19, #0x40]
02c54f7c  cbz x0,0x02c54fb4
02c54f80  mov x1,xzr
02c54f84  bl 0x04874260
02c54f88  cbz x0,0x02c54fa8
02c54f8c  adrp x8,0x5e62000
02c54f90  mov x19,x0
02c54f94  ldr x8,[x8, #0x6b0]
02c54f98  ldr x20,[x8]
02c54f9c  mov x1,x20
02c54fa0  bl 0x029f5bd4
02c54fa4  cbz x0,0x02c54fb8
02c54fa8  ldp x20,x19,[sp, #0x10]
02c54fac  ldr x30,[sp], #0x20
02c54fb0  ret
02c54fb4  bl 0x029f5cfc
02c54fb8  mov x0,x19
02c54fbc  mov x1,x20
02c54fc0  bl 0x029f607c
