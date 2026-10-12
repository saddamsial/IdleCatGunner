02c38de0  stp d11,d10,[sp, #-0x40]!
02c38de4  stp d9,d8,[sp, #0x10]
02c38de8  stp x30,x21,[sp, #0x20]
02c38dec  stp x20,x19,[sp, #0x30]
02c38df0  fmov s8,s3
02c38df4  fmov s9,s2
02c38df8  adrp x20,0x625c000
02c38dfc  fmov s10,s1
02c38e00  fmov s11,s0
02c38e04  adrp x21,0x5e59000
02c38e08  ldrb w8,[x20, #0x89]
02c38e0c  ldr x21,[x21, #0x1c0]
02c38e10  mov x19,x0
02c38e14  tbnz w8,#0x0,0x02c38e2c
02c38e18  adrp x0,0x5e59000
02c38e1c  ldr x0,[x0, #0x1c0]
02c38e20  bl 0x029f5a50
02c38e24  mov w8,#0x1
02c38e28  strb w8,[x20, #0x89]
02c38e2c  ldr x0,[x21]
02c38e30  ldr x20,[x19, #0x200]
02c38e34  ldr w8,[x0, #0xe4]
02c38e38  cbnz w8,0x02c38e40
02c38e3c  bl 0x029f5bd0
02c38e40  mov x0,x20
02c38e44  mov x1,xzr
02c38e48  mov x2,xzr
02c38e4c  add x19,x19,#0x200
02c38e50  bl 0x057e14b4
02c38e54  tbz w0,#0x0,0x02c38e70
02c38e58  mov x0,xzr
02c38e5c  bl 0x05797adc
02c38e60  mov x1,x0
02c38e64  str x0,[x19]
02c38e68  mov x0,x19
02c38e6c  bl 0x029f59f4
02c38e70  ldr x0,[x21]
02c38e74  ldr x20,[x19]
02c38e78  ldr w8,[x0, #0xe4]
02c38e7c  cbnz w8,0x02c38e84
02c38e80  bl 0x029f5bd0
02c38e84  mov x0,x20
02c38e88  mov x1,xzr
02c38e8c  mov x2,xzr
02c38e90  bl 0x057e14b4
02c38e94  tbz w0,#0x0,0x02c38ea0
02c38e98  mov w8,#0x1
02c38e9c  b 0x02c38ee4
02c38ea0  ldr x0,[x19]
02c38ea4  cbz x0,0x02c38f0c
02c38ea8  fmov s0,s11
02c38eac  fmov s1,s10
02c38eb0  mov x1,xzr
02c38eb4  fmov s2,s9
02c38eb8  bl 0x05797854
02c38ebc  fcmp s2,#0.0
02c38ec0  b.le 0x02c38ee0
02c38ec4  fneg s2,s8
02c38ec8  fcmp s0,s2
02c38ecc  b.lt 0x02c38ee0
02c38ed0  fmov s3,0x3f800000
02c38ed4  fadd s3,s8,s3
02c38ed8  fcmp s0,s3
02c38edc  b.ls 0x02c38efc
02c38ee0  mov w8,wzr
02c38ee4  ldp x20,x19,[sp, #0x30]
02c38ee8  and w0,w8,#0x1
02c38eec  ldp x30,x21,[sp, #0x20]
02c38ef0  ldp d9,d8,[sp, #0x10]
02c38ef4  ldp d11,d10,[sp], #0x40
02c38ef8  ret
02c38efc  fcmp s1,s3
02c38f00  fccmp s1,s2,#0x8,ls
02c38f04  cset w8,ge
02c38f08  b 0x02c38ee4
02c38f0c  bl 0x029f5cfc
