02c42da4  str d10,[sp, #-0x50]!
02c42da8  stp d9,d8,[sp, #0x10]
02c42dac  stp x30,x23,[sp, #0x20]
02c42db0  stp x22,x21,[sp, #0x30]
02c42db4  stp x20,x19,[sp, #0x40]
02c42db8  fmov s8,s2
02c42dbc  fmov s9,s1
02c42dc0  adrp x20,0x625c000
02c42dc4  fmov s10,s0
02c42dc8  ldrb w8,[x20, #0xba]
02c42dcc  mov x19,x0
02c42dd0  tbnz w8,#0x0,0x02c42de8
02c42dd4  adrp x0,0x5e63000
02c42dd8  ldr x0,[x0, #0x1d8]
02c42ddc  bl 0x029f5a50
02c42de0  mov w8,#0x1
02c42de4  strb w8,[x20, #0xba]
02c42de8  ldr x0,[x19, #0x30]
02c42dec  cbz x0,0x02c42f20
02c42df0  fmov s0,s10
02c42df4  fmov s1,s9
02c42df8  mov x1,xzr
02c42dfc  fmov s2,s8
02c42e00  bl 0x0586ba64
02c42e04  adrp x21,0x625b000
02c42e08  ldr x20,[x19, #0x30]
02c42e0c  ldrb w8,[x21, #0x26f]
02c42e10  cbnz w8,0x02c42e28
02c42e14  adrp x0,0x5e58000
02c42e18  ldr x0,[x0, #0xbf8]
02c42e1c  bl 0x029f5a50
02c42e20  mov w8,#0x1
02c42e24  strb w8,[x21, #0x26f]
02c42e28  cbz x20,0x02c42f20
02c42e2c  adrp x22,0x5e58000
02c42e30  mov x0,x20
02c42e34  mov x1,xzr
02c42e38  ldr x22,[x22, #0xbf8]
02c42e3c  ldr x8,[x22]
02c42e40  ldr x8,[x8, #0xb8]
02c42e44  ldp s1,s2,[x8, #0x4]
02c42e48  ldr s0,[x8]
02c42e4c  bl 0x0586b344
02c42e50  mov x0,x19
02c42e54  mov x1,xzr
02c42e58  bl 0x057dc0f8
02c42e5c  cbz x0,0x02c42f20
02c42e60  fmov s0,s10
02c42e64  fmov s1,s9
02c42e68  adrp x23,0x5e63000
02c42e6c  fmov s2,s8
02c42e70  ldr x23,[x23, #0x1d8]
02c42e74  mov x1,xzr
02c42e78  bl 0x057eee74
02c42e7c  ldr x0,[x23]
02c42e80  ldr x20,[x19, #0xb8]
02c42e84  strb wzr,[x19, #0x1f8]
02c42e88  ldr w8,[x0, #0xe4]
02c42e8c  cbnz w8,0x02c42e94
02c42e90  bl 0x029f5bd0
02c42e94  cbz x20,0x02c42f20
02c42e98  ldr x8,[x23]
02c42e9c  mov x0,x20
02c42ea0  mov x1,xzr
02c42ea4  ldr x8,[x8, #0xb8]
02c42ea8  ldp s1,s2,[x8, #0x30]
02c42eac  ldr s0,[x8, #0x2c]
02c42eb0  bl 0x057ef218
02c42eb4  ldrb w8,[x21, #0x26f]
02c42eb8  cbnz w8,0x02c42ed0
02c42ebc  adrp x0,0x5e58000
02c42ec0  ldr x0,[x0, #0xbf8]
02c42ec4  bl 0x029f5a50
02c42ec8  mov w8,#0x1
02c42ecc  strb w8,[x21, #0x26f]
02c42ed0  ldr x8,[x22]
02c42ed4  add x0,x19,#0x178
02c42ed8  mov x1,xzr
02c42edc  ldp x22,x21,[sp, #0x30]
02c42ee0  ldr x9,[x8, #0xb8]
02c42ee4  ldp x30,x23,[sp, #0x20]
02c42ee8  ldp d9,d8,[sp, #0x10]
02c42eec  ldr d0,[x9]
02c42ef0  ldr s1,[x9, #0x8]
02c42ef4  str d0,[x19, #0x230]
02c42ef8  str s1,[x19, #0x238]
02c42efc  ldr x8,[x8, #0xb8]
02c42f00  ldr d0,[x8]
02c42f04  ldr s1,[x8, #0x8]
02c42f08  str xzr,[x19, #0x178]
02c42f0c  str d0,[x19, #0x188]
02c42f10  str s1,[x19, #0x190]
02c42f14  ldp x20,x19,[sp, #0x40]
02c42f18  ldr d10,[sp], #0x50
02c42f1c  b 0x029f59f4
02c42f20  bl 0x029f5cfc
