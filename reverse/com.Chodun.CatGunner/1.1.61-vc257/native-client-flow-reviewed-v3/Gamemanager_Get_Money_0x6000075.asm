02b7e82c  sub sp,sp,#0xe0
02b7e830  str d10,[sp, #0xa0]
02b7e834  stp d9,d8,[sp, #0xb0]
02b7e838  stp x30,x21,[sp, #0xc0]
02b7e83c  stp x20,x19,[sp, #0xd0]
02b7e840  fmov s8,s2
02b7e844  fmov s9,s1
02b7e848  adrp x21,0x625b000
02b7e84c  fmov s10,s0
02b7e850  adrp x20,0x5e5d000
02b7e854  ldrb w8,[x21, #0x8b6]
02b7e858  ldr x20,[x20, #0x338]
02b7e85c  mov x19,x0
02b7e860  tbnz w8,#0x0,0x02b7e878
02b7e864  adrp x0,0x5e5d000
02b7e868  ldr x0,[x0, #0x338]
02b7e86c  bl 0x029f5a50
02b7e870  mov w8,#0x1
02b7e874  strb w8,[x21, #0x8b6]
02b7e878  ldr x0,[x20]
02b7e87c  ldp q0,q1,[x19]
02b7e880  ldr w8,[x0, #0xe4]
02b7e884  stp q0,q1,[sp, #0x80]
02b7e888  cbnz w8,0x02b7e890
02b7e88c  bl 0x029f5bd0
02b7e890  ldp q0,q1,[sp, #0x80]
02b7e894  add x8,sp,#0x60
02b7e898  add x0,sp,#0x40
02b7e89c  stp q0,q1,[sp, #0x40]
02b7e8a0  bl 0x02b7e1cc
02b7e8a4  ldp q1,q0,[sp, #0x60]
02b7e8a8  mov x1,x19
02b7e8ac  mov x2,xzr
02b7e8b0  stp q1,q0,[x19]
02b7e8b4  ldr x8,[x20]
02b7e8b8  ldr x9,[x8, #0xb8]
02b7e8bc  add x8,sp,#0x20
02b7e8c0  add x0,x9,#0x30
02b7e8c4  bl 0x04658020
02b7e8c8  ldr x8,[x20]
02b7e8cc  ldp q0,q1,[sp, #0x20]
02b7e8d0  mov x1,xzr
02b7e8d4  ldr x9,[x8, #0xb8]
02b7e8d8  stp q0,q1,[x9, #0x30]
02b7e8dc  ldr x8,[x8, #0xb8]
02b7e8e0  add x0,x8,#0x30
02b7e8e4  bl 0x029f59f4
02b7e8e8  ldr x8,[x20]
02b7e8ec  mov x1,x19
02b7e8f0  mov x2,xzr
02b7e8f4  ldr x9,[x8, #0xb8]
02b7e8f8  mov x8,sp
02b7e8fc  add x0,x9,#0x50
02b7e900  bl 0x04658020
02b7e904  ldr x8,[x20]
02b7e908  ldp q0,q1,[sp]
02b7e90c  mov x1,xzr
02b7e910  ldr x9,[x8, #0xb8]
02b7e914  stp q0,q1,[x9, #0x50]
02b7e918  ldr x8,[x8, #0xb8]
02b7e91c  add x0,x8,#0x50
02b7e920  bl 0x029f59f4
02b7e924  ldr x8,[x20]
02b7e928  ldr x8,[x8, #0xb8]
02b7e92c  ldr x8,[x8, #0x8]
02b7e930  cbz x8,0x02b7e944
02b7e934  ldr x9,[x8, #0x18]
02b7e938  ldr x0,[x8, #0x40]
02b7e93c  ldr x1,[x8, #0x28]
02b7e940  blr x9
02b7e944  mov x0,x19
02b7e948  mov x1,xzr
02b7e94c  bl 0x0465bddc
02b7e950  ldr x8,[x20]
02b7e954  mov x19,x0
02b7e958  ldr w9,[x8, #0xe4]
02b7e95c  cbnz w9,0x02b7e968
02b7e960  mov x0,x8
02b7e964  bl 0x029f5bd0
02b7e968  fmov s0,s10
02b7e96c  fmov s1,s9
02b7e970  mov x0,x19
02b7e974  fmov s2,s8
02b7e978  bl 0x02b7e994
02b7e97c  ldp x20,x19,[sp, #0xd0]
02b7e980  ldr d10,[sp, #0xa0]
02b7e984  ldp x30,x21,[sp, #0xc0]
02b7e988  ldp d9,d8,[sp, #0xb0]
02b7e98c  add sp,sp,#0xe0
02b7e990  ret
