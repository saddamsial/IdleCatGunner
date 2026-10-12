02c3e910  stp d11,d10,[sp, #-0x60]!
02c3e914  stp d9,d8,[sp, #0x10]
02c3e918  stp x30,x25,[sp, #0x20]
02c3e91c  stp x24,x23,[sp, #0x30]
02c3e920  stp x22,x21,[sp, #0x40]
02c3e924  stp x20,x19,[sp, #0x50]
02c3e928  adrp x20,0x625c000
02c3e92c  adrp x19,0x5e5d000
02c3e930  mov x21,x0
02c3e934  ldrb w8,[x20, #0x94]
02c3e938  ldr x19,[x19, #0xd68]
02c3e93c  tbnz w8,#0x0,0x02c3e978
02c3e940  adrp x0,0x5e63000
02c3e944  ldr x0,[x0, #0x230]
02c3e948  bl 0x029f5a50
02c3e94c  adrp x0,0x5e63000
02c3e950  ldr x0,[x0, #0x238]
02c3e954  bl 0x029f5a50
02c3e958  adrp x0,0x5e59000
02c3e95c  ldr x0,[x0, #0x1c0]
02c3e960  bl 0x029f5a50
02c3e964  adrp x0,0x5e5d000
02c3e968  ldr x0,[x0, #0xd68]
02c3e96c  bl 0x029f5a50
02c3e970  mov w8,#0x1
02c3e974  strb w8,[x20, #0x94]
02c3e978  ldr x0,[x19]
02c3e97c  adrp x24,0x5e59000
02c3e980  ldr w8,[x0, #0xe4]
02c3e984  ldr x24,[x24, #0x1c0]
02c3e988  cbnz w8,0x02c3e994
02c3e98c  bl 0x029f5bd0
02c3e990  ldr x0,[x19]
02c3e994  ldr x8,[x24]
02c3e998  ldr x9,[x0, #0xb8]
02c3e99c  ldr w10,[x8, #0xe4]
02c3e9a0  ldr x19,[x9, #0x8]
02c3e9a4  cbnz w10,0x02c3e9b0
02c3e9a8  mov x0,x8
02c3e9ac  bl 0x029f5bd0
02c3e9b0  mov x0,x19
02c3e9b4  mov x1,xzr
02c3e9b8  mov x2,xzr
02c3e9bc  bl 0x057e14b4
02c3e9c0  mov x20,xzr
02c3e9c4  tbnz w0,#0x0,0x02c3eb24
02c3e9c8  cbz x19,0x02c3eb44
02c3e9cc  ldr x19,[x19, #0x28]
02c3e9d0  cbz x19,0x02c3eb20
02c3e9d4  ldr w8,[x19, #0x18]
02c3e9d8  cbz w8,0x02c3eb20
02c3e9dc  mov x0,x21
02c3e9e0  mov x1,xzr
02c3e9e4  bl 0x057dc0f8
02c3e9e8  cbz x0,0x02c3eb44
02c3e9ec  mov x1,xzr
02c3e9f0  bl 0x057eed98
02c3e9f4  ldr w8,[x19, #0x18]
02c3e9f8  cmp w8,#0x1
02c3e9fc  b.lt 0x02c3eb20
02c3ea00  fmov s8,s0
02c3ea04  fmov s9,s2
02c3ea08  mov w8,#0x7f7fffff
02c3ea0c  adrp x25,0x5e63000
02c3ea10  fmov s10,w8
02c3ea14  mov x20,xzr
02c3ea18  ldr x25,[x25, #0x238]
02c3ea1c  mov w21,wzr
02c3ea20  ldr x2,[x25]
02c3ea24  mov x0,x19
02c3ea28  mov w1,w21
02c3ea2c  bl 0x0452c8d8
02c3ea30  ldr x8,[x24]
02c3ea34  mov x22,x0
02c3ea38  ldr w9,[x8, #0xe4]
02c3ea3c  cbnz w9,0x02c3ea48
02c3ea40  mov x0,x8
02c3ea44  bl 0x029f5bd0
02c3ea48  mov x0,x22
02c3ea4c  mov x1,xzr
02c3ea50  mov x2,xzr
02c3ea54  bl 0x057e14b4
02c3ea58  tbnz w0,#0x0,0x02c3eb0c
02c3ea5c  cbz x22,0x02c3eb44
02c3ea60  mov x0,x22
02c3ea64  mov x1,xzr
02c3ea68  bl 0x057dc1c8
02c3ea6c  cbz x0,0x02c3eb44
02c3ea70  mov x1,xzr
02c3ea74  bl 0x057e00b4
02c3ea78  tbz w0,#0x0,0x02c3eb0c
02c3ea7c  ldr x0,[x24]
02c3ea80  ldr x23,[x22, #0x20]
02c3ea84  ldr w8,[x0, #0xe4]
02c3ea88  cbnz w8,0x02c3ea90
02c3ea8c  bl 0x029f5bd0
02c3ea90  mov x0,x23
02c3ea94  mov x1,xzr
02c3ea98  mov x2,xzr
02c3ea9c  bl 0x057e14b4
02c3eaa0  tbnz w0,#0x0,0x02c3eb0c
02c3eaa4  ldr x0,[x22, #0x20]
02c3eaa8  cbz x0,0x02c3eb44
02c3eaac  mov x1,xzr
02c3eab0  bl 0x057dc1c8
02c3eab4  cbz x0,0x02c3eb44
02c3eab8  mov x1,xzr
02c3eabc  bl 0x057e00b4
02c3eac0  tbz w0,#0x0,0x02c3eb0c
02c3eac4  mov x0,x22
02c3eac8  mov x1,xzr
02c3eacc  bl 0x057dc0f8
02c3ead0  cbz x0,0x02c3eb44
02c3ead4  mov x1,xzr
02c3ead8  bl 0x057eed98
02c3eadc  fsub s0,s0,s8
02c3eae0  fsub s1,s2,s9
02c3eae4  fmul s0,s0,s0
02c3eae8  fmul s1,s1,s1
02c3eaec  fadd s11,s0,s1
02c3eaf0  fcmp s11,s10
02c3eaf4  b.pl 0x02c3eb0c
02c3eaf8  mov x0,x22
02c3eafc  mov x1,xzr
02c3eb00  bl 0x057dc0f8
02c3eb04  fmov s10,s11
02c3eb08  mov x20,x0
02c3eb0c  ldr w8,[x19, #0x18]
02c3eb10  add w21,w21,#0x1
02c3eb14  cmp w21,w8
02c3eb18  b.lt 0x02c3ea20
02c3eb1c  b 0x02c3eb24
02c3eb20  mov x20,xzr
02c3eb24  mov x0,x20
02c3eb28  ldp x20,x19,[sp, #0x50]
02c3eb2c  ldp x22,x21,[sp, #0x40]
02c3eb30  ldp x24,x23,[sp, #0x30]
02c3eb34  ldp x30,x25,[sp, #0x20]
02c3eb38  ldp d9,d8,[sp, #0x10]
02c3eb3c  ldp d11,d10,[sp], #0x60
02c3eb40  ret
02c3eb44  bl 0x029f5cfc
