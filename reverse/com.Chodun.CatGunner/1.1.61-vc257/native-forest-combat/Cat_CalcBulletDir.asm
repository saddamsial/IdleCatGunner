02c41c7c  sub sp,sp,#0x30
02c41c80  stp d9,d8,[sp, #0x10]
02c41c84  stp x30,x19,[sp, #0x20]
02c41c88  fsub s8,s5,s2
02c41c8c  fsub s3,s3,s0
02c41c90  adrp x8,0x116c000
02c41c94  fmul s0,s8,s8
02c41c98  fmul s1,s3,s3
02c41c9c  fadd s9,s1,s0
02c41ca0  ldr s0,[x8, #0x200]
02c41ca4  fcmp s9,s0
02c41ca8  b.le 0x02c41d20
02c41cac  adrp x19,0x625b000
02c41cb0  ldrb w8,[x19, #0x52e]
02c41cb4  cbnz w8,0x02c41cd4
02c41cb8  adrp x0,0x5e59000
02c41cbc  ldr x0,[x0]
02c41cc0  str q3,[sp]
02c41cc4  bl 0x029f5a50
02c41cc8  ldr q3,[sp]
02c41ccc  mov w8,#0x1
02c41cd0  strb w8,[x19, #0x52e]
02c41cd4  adrp x8,0x5e59000
02c41cd8  ldr x8,[x8]
02c41cdc  ldr x0,[x8]
02c41ce0  ldr w8,[x0, #0xe4]
02c41ce4  cbnz w8,0x02c41cf4
02c41ce8  str q3,[sp]
02c41cec  bl 0x029f5bd0
02c41cf0  ldr q3,[sp]
02c41cf4  fsqrt s1,s9
02c41cf8  adrp x8,0x116c000
02c41cfc  ldr s0,[x8, #0x240]
02c41d00  fcmp s1,s0
02c41d04  b.le 0x02c41d5c
02c41d08  movi d0,#0x0
02c41d0c  dup v2.2S,v1.S[0x0]
02c41d10  mov v0.S[0x0],v3.S[0x0]
02c41d14  fdiv v0.2S,v0.2S,v2.2S
02c41d18  fdiv s2,s8,s1
02c41d1c  b 0x02c41d94
02c41d20  adrp x19,0x625b000
02c41d24  ldrb w8,[x19, #0x5d7]
02c41d28  cbnz w8,0x02c41d40
02c41d2c  adrp x0,0x5e58000
02c41d30  ldr x0,[x0, #0xbf8]
02c41d34  bl 0x029f5a50
02c41d38  mov w8,#0x1
02c41d3c  strb w8,[x19, #0x5d7]
02c41d40  adrp x8,0x5e58000
02c41d44  ldr x8,[x8, #0xbf8]
02c41d48  ldr x8,[x8]
02c41d4c  ldr x8,[x8, #0xb8]
02c41d50  ldr d0,[x8, #0x48]
02c41d54  ldr s2,[x8, #0x50]
02c41d58  b 0x02c41d94
02c41d5c  adrp x19,0x625b000
02c41d60  ldrb w8,[x19, #0x26f]
02c41d64  cbnz w8,0x02c41d7c
02c41d68  adrp x0,0x5e58000
02c41d6c  ldr x0,[x0, #0xbf8]
02c41d70  bl 0x029f5a50
02c41d74  mov w8,#0x1
02c41d78  strb w8,[x19, #0x26f]
02c41d7c  adrp x8,0x5e58000
02c41d80  ldr x8,[x8, #0xbf8]
02c41d84  ldr x8,[x8]
02c41d88  ldr x8,[x8, #0xb8]
02c41d8c  ldr d0,[x8]
02c41d90  ldr s2,[x8, #0x8]
02c41d94  ldp x30,x19,[sp, #0x20]
02c41d98  dup s1,v0.S[0x1]
02c41d9c  ldp d9,d8,[sp, #0x10]
02c41da0  add sp,sp,#0x30
02c41da4  ret
