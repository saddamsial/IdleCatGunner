02cb0e4c  stp x30,x21,[sp, #-0x20]!
02cb0e50  stp x20,x19,[sp, #0x10]
02cb0e54  adrp x21,0x625c000
02cb0e58  adrp x20,0x5e5d000
02cb0e5c  mov x19,x0
02cb0e60  ldrb w8,[x21, #0x547]
02cb0e64  ldr x20,[x20, #0x4e8]
02cb0e68  tbnz w8,#0x0,0x02cb0e80
02cb0e6c  adrp x0,0x5e5d000
02cb0e70  ldr x0,[x0, #0x4e8]
02cb0e74  bl 0x029f5a50
02cb0e78  mov w8,#0x1
02cb0e7c  strb w8,[x21, #0x547]
02cb0e80  ldr x0,[x20]
02cb0e84  ldr w20,[x19, #0x20]
02cb0e88  ldr w8,[x0, #0xe4]
02cb0e8c  cbnz w8,0x02cb0e94
02cb0e90  bl 0x029f5bd0
02cb0e94  mov w0,w20
02cb0e98  bl 0x02caf208
02cb0e9c  ldr w8,[x19, #0xbc]
02cb0ea0  cmp w0,w8
02cb0ea4  b.eq 0x02cb0eb4
02cb0ea8  mov w1,w0
02cb0eac  mov x0,x19
02cb0eb0  bl 0x02cb0ecc
02cb0eb4  mov x0,x19
02cb0eb8  bl 0x02cb10b0
02cb0ebc  mov x0,x19
02cb0ec0  ldp x20,x19,[sp, #0x10]
02cb0ec4  ldp x30,x21,[sp], #0x20
02cb0ec8  b 0x02cb1234
