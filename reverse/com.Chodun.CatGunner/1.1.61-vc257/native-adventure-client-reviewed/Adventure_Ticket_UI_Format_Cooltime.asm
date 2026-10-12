02c2f8e4  sub sp,sp,#0x40
02c2f8e8  stp x30,x23,[sp, #0x10]
02c2f8ec  stp x22,x21,[sp, #0x20]
02c2f8f0  stp x20,x19,[sp, #0x30]
02c2f8f4  adrp x21,0x625c000
02c2f8f8  adrp x20,0x5e5a000
02c2f8fc  mov x19,x0
02c2f900  ldrb w8,[x21, #0x21]
02c2f904  ldr x20,[x20, #0x180]
02c2f908  str x0,[sp, #0x8]
02c2f90c  tbnz w8,#0x0,0x02c2f948
02c2f910  adrp x0,0x5e5a000
02c2f914  ldr x0,[x0, #0x180]
02c2f918  bl 0x029f5a50
02c2f91c  adrp x0,0x5e5e000
02c2f920  ldr x0,[x0, #0x540]
02c2f924  bl 0x029f5a50
02c2f928  adrp x0,0x5e5e000
02c2f92c  ldr x0,[x0, #0x6d0]
02c2f930  bl 0x029f5a50
02c2f934  adrp x0,0x5e62000
02c2f938  ldr x0,[x0, #0x128]
02c2f93c  bl 0x029f5a50
02c2f940  mov w8,#0x1
02c2f944  strb w8,[x21, #0x21]
02c2f948  ldr x0,[x20]
02c2f94c  ldr w8,[x0, #0xe4]
02c2f950  cbnz w8,0x02c2f95c
02c2f954  bl 0x029f5bd0
02c2f958  ldr x0,[x20]
02c2f95c  ldr x8,[x0, #0xb8]
02c2f960  mov x0,x19
02c2f964  mov x2,xzr
02c2f968  ldr x1,[x8]
02c2f96c  bl 0x04868dcc
02c2f970  mov w8,w0
02c2f974  ldr x0,[x20]
02c2f978  tbz w8,#0x0,0x02c2f998
02c2f97c  ldr w8,[x0, #0xe4]
02c2f980  cbnz w8,0x02c2f98c
02c2f984  bl 0x029f5bd0
02c2f988  ldr x0,[x20]
02c2f98c  ldr x8,[x0, #0xb8]
02c2f990  ldr x8,[x8]
02c2f994  str x8,[sp, #0x8]
02c2f998  ldr w8,[x0, #0xe4]
02c2f99c  cbnz w8,0x02c2f9a4
02c2f9a0  bl 0x029f5bd0
02c2f9a4  add x0,sp,#0x8
02c2f9a8  mov x1,xzr
02c2f9ac  bl 0x048681f8
02c2f9b0  mov x8,#0x7ff0000000000000
02c2f9b4  fcvtzs w9,d0
02c2f9b8  add x0,sp,#0x8
02c2f9bc  fmov d1,x8
02c2f9c0  mov w8,#0x80000000
02c2f9c4  mov x1,xzr
02c2f9c8  fcmp d0,d1
02c2f9cc  csel w21,w8,w9,eq
02c2f9d0  bl 0x0486814c
02c2f9d4  mov w19,w0
02c2f9d8  add x0,sp,#0x8
02c2f9dc  mov x1,xzr
02c2f9e0  bl 0x04868194
02c2f9e4  cmp w21,#0x1
02c2f9e8  b.lt 0x02c2fa30
02c2f9ec  adrp x22,0x5e58000
02c2f9f0  adrp x23,0x5e5e000
02c2f9f4  add x1,sp,#0x4
02c2f9f8  ldr x22,[x22, #0xa10]
02c2f9fc  ldr x23,[x23, #0x540]
02c2fa00  str w21,[sp, #0x4]
02c2fa04  ldr x0,[x22, #0x48]
02c2fa08  bl 0x029f5bd8
02c2fa0c  mov x20,x0
02c2fa10  ldr x0,[x22, #0x48]
02c2fa14  mov x1,sp
02c2fa18  str w19,[sp]
02c2fa1c  bl 0x029f5bd8
02c2fa20  ldr x8,[x23]
02c2fa24  mov x2,x0
02c2fa28  mov x1,x20
02c2fa2c  b 0x02c2fa7c
02c2fa30  mov w20,w0
02c2fa34  cmp w19,#0x1
02c2fa38  b.lt 0x02c2fa9c
02c2fa3c  adrp x21,0x5e58000
02c2fa40  add x1,sp,#0x4
02c2fa44  ldr x21,[x21, #0xa10]
02c2fa48  str w19,[sp, #0x4]
02c2fa4c  ldr x0,[x21, #0x48]
02c2fa50  bl 0x029f5bd8
02c2fa54  mov x19,x0
02c2fa58  ldr x0,[x21, #0x48]
02c2fa5c  mov x1,sp
02c2fa60  str w20,[sp]
02c2fa64  bl 0x029f5bd8
02c2fa68  adrp x8,0x5e62000
02c2fa6c  mov x2,x0
02c2fa70  mov x1,x19
02c2fa74  ldr x8,[x8, #0x128]
02c2fa78  ldr x8,[x8]
02c2fa7c  mov x0,x8
02c2fa80  mov x3,xzr
02c2fa84  bl 0x046c1d14
02c2fa88  ldp x20,x19,[sp, #0x30]
02c2fa8c  ldp x22,x21,[sp, #0x20]
02c2fa90  ldp x30,x23,[sp, #0x10]
02c2fa94  add sp,sp,#0x40
02c2fa98  ret
02c2fa9c  adrp x8,0x5e58000
02c2faa0  add x1,sp,#0x4
02c2faa4  ldr x8,[x8, #0xa10]
02c2faa8  str w20,[sp, #0x4]
02c2faac  ldr x0,[x8, #0x48]
02c2fab0  bl 0x029f5bd8
02c2fab4  adrp x8,0x5e5e000
02c2fab8  mov x1,x0
02c2fabc  mov x2,xzr
02c2fac0  ldr x8,[x8, #0x6d0]
02c2fac4  ldr x8,[x8]
02c2fac8  mov x0,x8
02c2facc  bl 0x046b6c0c
02c2fad0  b 0x02c2fa88
