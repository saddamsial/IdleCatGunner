02cae91c  sub sp,sp,#0x50
02cae920  str d10,[sp, #0x10]
02cae924  stp d9,d8,[sp, #0x18]
02cae928  str x30,[sp, #0x28]
02cae92c  stp x22,x21,[sp, #0x30]
02cae930  stp x20,x19,[sp, #0x40]
02cae934  adrp x21,0x625c000
02cae938  mov x20,x1
02cae93c  mov x19,x0
02cae940  ldrb w8,[x21, #0x531]
02cae944  tbnz w8,#0x0,0x02cae974
02cae948  adrp x0,0x5e59000
02cae94c  ldr x0,[x0, #0x1c0]
02cae950  bl 0x029f5a50
02cae954  adrp x0,0x5e5c000
02cae958  ldr x0,[x0, #0xf00]
02cae95c  bl 0x029f5a50
02cae960  adrp x0,0x5e5b000
02cae964  ldr x0,[x0, #0xfa8]
02cae968  bl 0x029f5a50
02cae96c  mov w8,#0x1
02cae970  strb w8,[x21, #0x531]
02cae974  str xzr,[sp, #0x8]
02cae978  cbz x20,0x02caea74
02cae97c  mov x0,x20
02cae980  mov x1,xzr
02cae984  bl 0x057eed98
02cae988  ldr x0,[x19, #0x48]
02cae98c  cbz x0,0x02caea74
02cae990  adrp x22,0x5e59000
02cae994  mov x1,xzr
02cae998  fmov s8,s0
02cae99c  ldr x22,[x22, #0x1c0]
02cae9a0  fmov s9,s1
02cae9a4  fmov s10,s2
02cae9a8  bl 0x057eecc8
02cae9ac  cbz x0,0x02cae9cc
02cae9b0  adrp x8,0x5e5b000
02cae9b4  ldr x8,[x8, #0xfa8]
02cae9b8  ldr x9,[x0]
02cae9bc  ldr x8,[x8]
02cae9c0  cmp x9,x8
02cae9c4  csel x21,x0,xzr,eq
02cae9c8  b 0x02cae9d0
02cae9cc  mov x21,xzr
02cae9d0  ldr x0,[x22]
02cae9d4  ldr w8,[x0, #0xe4]
02cae9d8  cbnz w8,0x02cae9e0
02cae9dc  bl 0x029f5bd0
02cae9e0  mov x0,x21
02cae9e4  mov x1,xzr
02cae9e8  mov x2,xzr
02cae9ec  bl 0x057dfa70
02cae9f0  tbz w0,#0x0,0x02caea40
02cae9f4  adrp x8,0x5e5c000
02cae9f8  ldr x8,[x8, #0xf00]
02cae9fc  ldr x0,[x8]
02caea00  ldr w8,[x0, #0xe4]
02caea04  cbnz w8,0x02caea0c
02caea08  bl 0x029f5bd0
02caea0c  fmov s0,s8
02caea10  fmov s1,s9
02caea14  mov x0,xzr
02caea18  fmov s2,s10
02caea1c  mov x1,xzr
02caea20  bl 0x05aa16bc
02caea24  add x2,sp,#0x8
02caea28  mov x0,x21
02caea2c  mov x1,xzr
02caea30  mov x3,xzr
02caea34  bl 0x05aa15c0
02caea38  ldp s0,s1,[sp, #0x8]
02caea3c  b 0x02caea4c
02caea40  mov x0,x20
02caea44  mov x1,xzr
02caea48  bl 0x057eddfc
02caea4c  ldp s2,s3,[x19, #0x38]
02caea50  ldr x30,[sp, #0x28]
02caea54  ldp x20,x19,[sp, #0x40]
02caea58  ldr d10,[sp, #0x10]
02caea5c  ldp x22,x21,[sp, #0x30]
02caea60  fadd s0,s0,s2
02caea64  fadd s1,s1,s3
02caea68  ldp d9,d8,[sp, #0x18]
02caea6c  add sp,sp,#0x50
02caea70  ret
02caea74  bl 0x029f5cfc
