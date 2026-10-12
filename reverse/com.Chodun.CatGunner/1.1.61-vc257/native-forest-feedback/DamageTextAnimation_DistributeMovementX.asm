02b82ba4  str d14,[sp, #-0x60]!
02b82ba8  stp d13,d12,[sp, #0x8]
02b82bac  stp d11,d10,[sp, #0x18]
02b82bb0  stp d9,d8,[sp, #0x28]
02b82bb4  str x30,[sp, #0x38]
02b82bb8  stp x22,x21,[sp, #0x40]
02b82bbc  stp x20,x19,[sp, #0x50]
02b82bc0  ldr x8,[x0, #0x40]
02b82bc4  cbz x8,0x02b82cbc
02b82bc8  ldr x21,[x8, #0x18]
02b82bcc  cbz x21,0x02b82cbc
02b82bd0  subs w8,w21,#0x1
02b82bd4  b.lt 0x02b82cbc
02b82bd8  fmov s8,s3
02b82bdc  fmov s9,s2
02b82be0  mov x19,x0
02b82be4  fmov s10,s0
02b82be8  scvtf s11,w8
02b82bec  mov x22,xzr
02b82bf0  fsub s12,s1,s0
02b82bf4  movi d13,#0x0
02b82bf8  fmov s14,0x3f800000
02b82bfc  fmov s3,s10
02b82c00  cmp w21,#0x1
02b82c04  b.eq 0x02b82c28
02b82c08  scvtf s0,w22
02b82c0c  fdiv s0,s0,s11
02b82c10  fcmp s0,s14
02b82c14  fcsel s1,s14,s0,gt
02b82c18  fcmp s0,#0.0
02b82c1c  fcsel s0,s13,s1,mi
02b82c20  fmul s0,s12,s0
02b82c24  fadd s3,s0,s10
02b82c28  movi d1,#0x0
02b82c2c  fmov s0,s9
02b82c30  mov x0,xzr
02b82c34  fmov s2,s8
02b82c38  bl 0x05791574
02b82c3c  cbz x0,0x02b82cdc
02b82c40  mov w1,#0x8
02b82c44  mov x2,xzr
02b82c48  mov x20,x0
02b82c4c  bl 0x05791760
02b82c50  mov x0,x20
02b82c54  mov w1,#0x8
02b82c58  mov x2,xzr
02b82c5c  bl 0x05791888
02b82c60  ldr x8,[x19, #0x40]
02b82c64  cbz x8,0x02b82cdc
02b82c68  ldr w9,[x8, #0x18]
02b82c6c  cmp w22,w9
02b82c70  b.cs 0x02b82ce0
02b82c74  add x8,x8,x22, LSL #0x3
02b82c78  ldr x0,[x8, #0x20]
02b82c7c  cbz x0,0x02b82cdc
02b82c80  mov x1,x20
02b82c84  str x20,[x0, #0x10]!
02b82c88  bl 0x029f59f4
02b82c8c  ldr x8,[x19, #0x40]
02b82c90  cbz x8,0x02b82cdc
02b82c94  ldr w9,[x8, #0x18]
02b82c98  cmp w22,w9
02b82c9c  b.cs 0x02b82ce0
02b82ca0  add x8,x8,x22, LSL #0x3
02b82ca4  ldr x8,[x8, #0x20]
02b82ca8  cbz x8,0x02b82cdc
02b82cac  add x22,x22,#0x1
02b82cb0  strb wzr,[x8, #0x30]
02b82cb4  cmp w21,w22
02b82cb8  b.ne 0x02b82bfc
02b82cbc  ldp x20,x19,[sp, #0x50]
02b82cc0  ldr x30,[sp, #0x38]
02b82cc4  ldp x22,x21,[sp, #0x40]
02b82cc8  ldp d9,d8,[sp, #0x28]
02b82ccc  ldp d11,d10,[sp, #0x18]
02b82cd0  ldp d13,d12,[sp, #0x8]
02b82cd4  ldr d14,[sp], #0x60
02b82cd8  ret
02b82cdc  bl 0x029f5cfc
02b82ce0  bl 0x029f5d04
