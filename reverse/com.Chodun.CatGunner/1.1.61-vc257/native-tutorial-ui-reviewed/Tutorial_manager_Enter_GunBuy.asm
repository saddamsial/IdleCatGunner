02caf8f4  stp x30,x21,[sp, #-0x20]!
02caf8f8  stp x20,x19,[sp, #0x10]
02caf8fc  adrp x21,0x625c000
02caf900  adrp x20,0x5e5d000
02caf904  mov x19,x0
02caf908  ldrb w8,[x21, #0x53c]
02caf90c  ldr x20,[x20, #0x338]
02caf910  tbnz w8,#0x0,0x02caf928
02caf914  adrp x0,0x5e5d000
02caf918  ldr x0,[x0, #0x338]
02caf91c  bl 0x029f5a50
02caf920  mov w8,#0x1
02caf924  strb w8,[x21, #0x53c]
02caf928  ldr x0,[x20]
02caf92c  ldr w8,[x0, #0xe4]
02caf930  cbnz w8,0x02caf93c
02caf934  bl 0x029f5bd0
02caf938  ldr x0,[x20]
02caf93c  ldr x8,[x0, #0xb8]
02caf940  mov x2,xzr
02caf944  ldp x0,x1,[x8, #0x90]
02caf948  bl 0x02b1e644
02caf94c  cmp w0,#0x63
02caf950  b.gt 0x02caf988
02caf954  ldr x0,[x20]
02caf958  ldr w8,[x0, #0xe4]
02caf95c  cbnz w8,0x02caf968
02caf960  bl 0x029f5bd0
02caf964  ldr x0,[x20]
02caf968  ldr x8,[x0, #0xb8]
02caf96c  mov x2,xzr
02caf970  ldp x0,x1,[x8, #0x90]
02caf974  bl 0x02b1e644
02caf978  mov w8,#0x64
02caf97c  mov x1,xzr
02caf980  sub w0,w8,w0
02caf984  bl 0x02b7ed10
02caf988  mov x0,x19
02caf98c  bl 0x02cafbe0
02caf990  mov x1,x0
02caf994  mov x0,x19
02caf998  mov x2,xzr
02caf99c  ldp x20,x19,[sp, #0x10]
02caf9a0  ldp x30,x21,[sp], #0x20
02caf9a4  b 0x057e2120
