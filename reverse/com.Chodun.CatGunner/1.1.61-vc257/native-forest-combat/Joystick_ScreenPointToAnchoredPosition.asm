02b87c28  sub sp,sp,#0x80
02b87c2c  stp d15,d14,[sp, #0x10]
02b87c30  stp d13,d12,[sp, #0x20]
02b87c34  stp d11,d10,[sp, #0x30]
02b87c38  stp d9,d8,[sp, #0x40]
02b87c3c  stp x30,x23,[sp, #0x50]
02b87c40  stp x22,x21,[sp, #0x60]
02b87c44  stp x20,x19,[sp, #0x70]
02b87c48  fmov s8,s1
02b87c4c  fmov s9,s0
02b87c50  adrp x20,0x625b000
02b87c54  ldrb w8,[x20, #0x907]
02b87c58  mov x19,x0
02b87c5c  tbnz w8,#0x0,0x02b87c74
02b87c60  adrp x0,0x5e5c000
02b87c64  ldr x0,[x0, #0xf00]
02b87c68  bl 0x029f5a50
02b87c6c  mov w8,#0x1
02b87c70  strb w8,[x20, #0x907]
02b87c74  adrp x22,0x625b000
02b87c78  adrp x20,0x5e5c000
02b87c7c  ldrb w8,[x22, #0x271]
02b87c80  ldr x20,[x20, #0xf00]
02b87c84  str xzr,[sp, #0x8]
02b87c88  cbnz w8,0x02b87ca0
02b87c8c  adrp x0,0x5e59000
02b87c90  ldr x0,[x0, #0x608]
02b87c94  bl 0x029f5a50
02b87c98  mov w8,#0x1
02b87c9c  strb w8,[x22, #0x271]
02b87ca0  adrp x23,0x5e59000
02b87ca4  ldr x23,[x23, #0x608]
02b87ca8  ldr x0,[x20]
02b87cac  ldr x21,[x19, #0x40]
02b87cb0  ldr x20,[x19, #0x50]
02b87cb4  ldr x8,[x23]
02b87cb8  ldr x8,[x8, #0xb8]
02b87cbc  ldr d0,[x8]
02b87cc0  ldr w8,[x0, #0xe4]
02b87cc4  str d0,[sp, #0x8]
02b87cc8  cbnz w8,0x02b87cd0
02b87ccc  bl 0x029f5bd0
02b87cd0  fmov s0,s9
02b87cd4  fmov s1,s8
02b87cd8  add x2,sp,#0x8
02b87cdc  mov x0,x21
02b87ce0  mov x1,x20
02b87ce4  mov x3,xzr
02b87ce8  bl 0x05aa15c0
02b87cec  tbz w0,#0x0,0x02b87d70
02b87cf0  ldr x0,[x19, #0x40]
02b87cf4  cbz x0,0x02b87dbc
02b87cf8  mov x1,xzr
02b87cfc  bl 0x057ee124
02b87d00  ldr x0,[x19, #0x40]
02b87d04  cbz x0,0x02b87dbc
02b87d08  mov x1,xzr
02b87d0c  fmov s8,s0
02b87d10  fmov s9,s1
02b87d14  bl 0x057edf90
02b87d18  ldr x0,[x19, #0x30]
02b87d1c  cbz x0,0x02b87dbc
02b87d20  ldp s14,s15,[sp, #0x8]
02b87d24  mov x1,xzr
02b87d28  fmov s10,s0
02b87d2c  fmov s11,s1
02b87d30  bl 0x057edc68
02b87d34  ldr x0,[x19, #0x40]
02b87d38  cbz x0,0x02b87dbc
02b87d3c  mov x1,xzr
02b87d40  fmov s12,s0
02b87d44  fmov s13,s1
02b87d48  fmul s8,s8,s10
02b87d4c  fmul s9,s9,s11
02b87d50  bl 0x057edf90
02b87d54  fmul s0,s12,s0
02b87d58  fmul s1,s13,s1
02b87d5c  fsub s0,s14,s0
02b87d60  fsub s1,s15,s1
02b87d64  fadd s0,s8,s0
02b87d68  fadd s1,s9,s1
02b87d6c  b 0x02b87d98
02b87d70  ldrb w8,[x22, #0x271]
02b87d74  cbnz w8,0x02b87d8c
02b87d78  adrp x0,0x5e59000
02b87d7c  ldr x0,[x0, #0x608]
02b87d80  bl 0x029f5a50
02b87d84  mov w8,#0x1
02b87d88  strb w8,[x22, #0x271]
02b87d8c  ldr x8,[x23]
02b87d90  ldr x8,[x8, #0xb8]
02b87d94  ldp s0,s1,[x8]
02b87d98  ldp x20,x19,[sp, #0x70]
02b87d9c  ldp x22,x21,[sp, #0x60]
02b87da0  ldp x30,x23,[sp, #0x50]
02b87da4  ldp d9,d8,[sp, #0x40]
02b87da8  ldp d11,d10,[sp, #0x30]
02b87dac  ldp d13,d12,[sp, #0x20]
02b87db0  ldp d15,d14,[sp, #0x10]
02b87db4  add sp,sp,#0x80
02b87db8  ret
02b87dbc  bl 0x029f5cfc
