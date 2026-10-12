02c3f874  sub sp,sp,#0x90
02c3f878  str d14,[sp, #0x30]
02c3f87c  stp d13,d12,[sp, #0x38]
02c3f880  stp d11,d10,[sp, #0x48]
02c3f884  stp d9,d8,[sp, #0x58]
02c3f888  str x30,[sp, #0x68]
02c3f88c  stp x22,x21,[sp, #0x70]
02c3f890  stp x20,x19,[sp, #0x80]
02c3f894  adrp x20,0x625c000
02c3f898  adrp x21,0x5e63000
02c3f89c  mov x19,x0
02c3f8a0  ldrb w8,[x20, #0x9b]
02c3f8a4  ldr x21,[x21, #0x1d8]
02c3f8a8  tbnz w8,#0x0,0x02c3f8fc
02c3f8ac  adrp x0,0x5e63000
02c3f8b0  ldr x0,[x0, #0x1d8]
02c3f8b4  bl 0x029f5a50
02c3f8b8  adrp x0,0x5e63000
02c3f8bc  ldr x0,[x0, #0x240]
02c3f8c0  bl 0x029f5a50
02c3f8c4  adrp x0,0x5e63000
02c3f8c8  ldr x0,[x0, #0x248]
02c3f8cc  bl 0x029f5a50
02c3f8d0  adrp x0,0x5e63000
02c3f8d4  ldr x0,[x0, #0x250]
02c3f8d8  bl 0x029f5a50
02c3f8dc  adrp x0,0x5e59000
02c3f8e0  ldr x0,[x0, #0x1c0]
02c3f8e4  bl 0x029f5a50
02c3f8e8  adrp x0,0x5e63000
02c3f8ec  ldr x0,[x0, #0x258]
02c3f8f0  bl 0x029f5a50
02c3f8f4  mov w8,#0x1
02c3f8f8  strb w8,[x20, #0x9b]
02c3f8fc  movi v0.2D,#0x0
02c3f900  adrp x20,0x5e59000
02c3f904  mov x0,xzr
02c3f908  ldr x20,[x20, #0x1c0]
02c3f90c  stp q0,q0,[sp, #0x10]
02c3f910  bl 0x057eb9ec
02c3f914  ldr x0,[x21]
02c3f918  fmov s8,s0
02c3f91c  ldr s9,[x19, #0x248]
02c3f920  ldr w8,[x0, #0xe4]
02c3f924  cbnz w8,0x02c3f930
02c3f928  bl 0x029f5bd0
02c3f92c  ldr x0,[x21]
02c3f930  ldr x8,[x20]
02c3f934  ldr x9,[x0, #0xb8]
02c3f938  ldr w10,[x8, #0xe4]
02c3f93c  ldr x20,[x9, #0x68]
02c3f940  cbnz w10,0x02c3f94c
02c3f944  mov x0,x8
02c3f948  bl 0x029f5bd0
02c3f94c  mov x0,x20
02c3f950  mov x1,xzr
02c3f954  mov x2,xzr
02c3f958  bl 0x057dfa70
02c3f95c  tbz w0,#0x0,0x02c3f984
02c3f960  ldr x0,[x21]
02c3f964  ldr w8,[x0, #0xe4]
02c3f968  cbnz w8,0x02c3f974
02c3f96c  bl 0x029f5bd0
02c3f970  ldr x0,[x21]
02c3f974  ldr x8,[x0, #0xb8]
02c3f978  ldr x0,[x8, #0x68]
02c3f97c  cbnz x0,0x02c3f988
02c3f980  b 0x02c3fa78
02c3f984  mov x0,x19
02c3f988  mov x1,xzr
02c3f98c  bl 0x057dc0f8
02c3f990  cbz x0,0x02c3fa78
02c3f994  mov x1,xzr
02c3f998  bl 0x057eed98
02c3f99c  fmov s11,s0
02c3f9a0  fmov s12,s1
02c3f9a4  ldr x0,[x21]
02c3f9a8  fmov s13,s2
02c3f9ac  ldr w8,[x0, #0xe4]
02c3f9b0  cbnz w8,0x02c3f9bc
02c3f9b4  bl 0x029f5bd0
02c3f9b8  ldr x0,[x21]
02c3f9bc  ldr x8,[x0, #0xb8]
02c3f9c0  ldr x0,[x8, #0x70]
02c3f9c4  cbz x0,0x02c3fa78
02c3f9c8  adrp x8,0x5e63000
02c3f9cc  adrp x19,0x5e63000
02c3f9d0  adrp x21,0x5e63000
02c3f9d4  ldr x8,[x8, #0x258]
02c3f9d8  adrp x20,0x5e63000
02c3f9dc  ldr x19,[x19, #0x248]
02c3f9e0  ldr x21,[x21, #0x250]
02c3f9e4  ldr x20,[x20, #0x240]
02c3f9e8  fsub s14,s8,s9
02c3f9ec  ldr x1,[x8]
02c3f9f0  add x8,sp,#0x10
02c3f9f4  add x22,sp,#0x10
02c3f9f8  bl 0x03716d60
02c3f9fc  stp xzr,x22,[sp]
02c3fa00  fmov s8,s13
02c3fa04  fmov s9,s12
02c3fa08  ldr x1,[x19]
02c3fa0c  fmov s10,s11
02c3fa10  add x0,sp,#0x10
02c3fa14  bl 0x03fd5310
02c3fa18  tbz w0,#0x0,0x02c3fa3c
02c3fa1c  ldr x1,[x21]
02c3fa20  add x0,sp,#0x10
02c3fa24  bl 0x03fd53fc
02c3fa28  fmov s11,s0
02c3fa2c  fmov s12,s1
02c3fa30  fmov s13,s2
02c3fa34  fcmp s3,s14
02c3fa38  b.ls 0x02c3fa00
02c3fa3c  ldr x1,[x20]
02c3fa40  add x0,sp,#0x10
02c3fa44  bl 0x03fd5300
02c3fa48  fmov s0,s10
02c3fa4c  fmov s1,s9
02c3fa50  ldr x30,[sp, #0x68]
02c3fa54  fmov s2,s8
02c3fa58  ldp x20,x19,[sp, #0x80]
02c3fa5c  ldp x22,x21,[sp, #0x70]
02c3fa60  ldr d14,[sp, #0x30]
02c3fa64  ldp d9,d8,[sp, #0x58]
02c3fa68  ldp d11,d10,[sp, #0x48]
02c3fa6c  ldp d13,d12,[sp, #0x38]
02c3fa70  add sp,sp,#0x90
02c3fa74  ret
02c3fa78  bl 0x029f5cfc
