02ca3e10  stp x30,x21,[sp, #-0x20]!
02ca3e14  stp x20,x19,[sp, #0x10]
02ca3e18  adrp x20,0x625c000
02ca3e1c  adrp x21,0x5e64000
02ca3e20  mov x19,x0
02ca3e24  ldrb w8,[x20, #0x4a5]
02ca3e28  ldr x21,[x21, #0x920]
02ca3e2c  tbnz w8,#0x0,0x02ca3e44
02ca3e30  adrp x0,0x5e64000
02ca3e34  ldr x0,[x0, #0x920]
02ca3e38  bl 0x029f5a50
02ca3e3c  mov w8,#0x1
02ca3e40  strb w8,[x20, #0x4a5]
02ca3e44  ldr x0,[x21]
02ca3e48  bl 0x029f5cec
02ca3e4c  mov x1,xzr
02ca3e50  mov x20,x0
02ca3e54  bl 0x04893238
02ca3e58  mov x0,x20
02ca3e5c  mov x1,x19
02ca3e60  str wzr,[x20, #0x10]
02ca3e64  str x19,[x0, #0x20]!
02ca3e68  bl 0x029f59f4
02ca3e6c  mov x0,x20
02ca3e70  ldp x20,x19,[sp, #0x10]
02ca3e74  ldp x30,x21,[sp], #0x20
02ca3e78  ret
