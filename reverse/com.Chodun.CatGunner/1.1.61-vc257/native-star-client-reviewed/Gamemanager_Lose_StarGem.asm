02b7f8b8  stp x30,x21,[sp, #-0x20]!
02b7f8bc  stp x20,x19,[sp, #0x10]
02b7f8c0  adrp x21,0x625b000
02b7f8c4  adrp x20,0x5e5d000
02b7f8c8  mov w19,w0
02b7f8cc  ldrb w8,[x21, #0x8c2]
02b7f8d0  ldr x20,[x20, #0x338]
02b7f8d4  tbnz w8,#0x0,0x02b7f8ec
02b7f8d8  adrp x0,0x5e5d000
02b7f8dc  ldr x0,[x0, #0x338]
02b7f8e0  bl 0x029f5a50
02b7f8e4  mov w8,#0x1
02b7f8e8  strb w8,[x21, #0x8c2]
02b7f8ec  ldr x0,[x20]
02b7f8f0  ldr w8,[x0, #0xe4]
02b7f8f4  cbnz w8,0x02b7f900
02b7f8f8  bl 0x029f5bd0
02b7f8fc  ldr x0,[x20]
02b7f900  ldr x8,[x0, #0xb8]
02b7f904  ldr w9,[x8, #0xc4]
02b7f908  subs w9,w9,w19
02b7f90c  str w9,[x8, #0xc4]
02b7f910  b.pl 0x02b7f92c
02b7f914  ldr w9,[x0, #0xe4]
02b7f918  cbnz w9,0x02b7f928
02b7f91c  bl 0x029f5bd0
02b7f920  ldr x0,[x20]
02b7f924  ldr x8,[x0, #0xb8]
02b7f928  str wzr,[x8, #0xc4]
02b7f92c  ldr w8,[x0, #0xe4]
02b7f930  cbnz w8,0x02b7f93c
02b7f934  bl 0x029f5bd0
02b7f938  ldr x0,[x20]
02b7f93c  ldr x8,[x0, #0xb8]
02b7f940  ldr x8,[x8, #0x28]
02b7f944  cbz x8,0x02b7f960
02b7f948  ldp x20,x19,[sp, #0x10]
02b7f94c  ldr x0,[x8, #0x40]
02b7f950  ldr x1,[x8, #0x28]
02b7f954  ldr x2,[x8, #0x18]
02b7f958  ldp x30,x21,[sp], #0x20
02b7f95c  br x2
02b7f960  ldp x20,x19,[sp, #0x10]
02b7f964  ldp x30,x21,[sp], #0x20
02b7f968  ret
