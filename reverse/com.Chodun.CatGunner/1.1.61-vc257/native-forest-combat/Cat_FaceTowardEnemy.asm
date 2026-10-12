02c419d0  str d14,[sp, #-0x60]!
02c419d4  stp d13,d12,[sp, #0x8]
02c419d8  stp d11,d10,[sp, #0x18]
02c419dc  stp d9,d8,[sp, #0x28]
02c419e0  str x30,[sp, #0x38]
02c419e4  stp x22,x21,[sp, #0x40]
02c419e8  stp x20,x19,[sp, #0x50]
02c419ec  adrp x21,0x625c000
02c419f0  adrp x22,0x5e59000
02c419f4  mov x20,x1
02c419f8  ldrb w8,[x21, #0xb2]
02c419fc  ldr x22,[x22, #0x1c0]
02c41a00  mov x19,x0
02c41a04  tbnz w8,#0x0,0x02c41a28
02c41a08  adrp x0,0x5e63000
02c41a0c  ldr x0,[x0, #0x1d8]
02c41a10  bl 0x029f5a50
02c41a14  adrp x0,0x5e59000
02c41a18  ldr x0,[x0, #0x1c0]
02c41a1c  bl 0x029f5a50
02c41a20  mov w8,#0x1
02c41a24  strb w8,[x21, #0xb2]
02c41a28  ldr x0,[x22]
02c41a2c  ldr w8,[x0, #0xe4]
02c41a30  cbnz w8,0x02c41a38
02c41a34  bl 0x029f5bd0
02c41a38  mov x0,x20
02c41a3c  mov x1,xzr
02c41a40  mov x2,xzr
02c41a44  bl 0x057e14b4
02c41a48  tbz w0,#0x0,0x02c41a6c
02c41a4c  ldp x20,x19,[sp, #0x50]
02c41a50  ldr x30,[sp, #0x38]
02c41a54  ldp x22,x21,[sp, #0x40]
02c41a58  ldp d9,d8,[sp, #0x28]
02c41a5c  ldp d11,d10,[sp, #0x18]
02c41a60  ldp d13,d12,[sp, #0x8]
02c41a64  ldr d14,[sp], #0x60
02c41a68  ret
02c41a6c  adrp x21,0x5e63000
02c41a70  ldr x21,[x21, #0x1d8]
02c41a74  ldr x0,[x21]
02c41a78  ldr w8,[x0, #0xe4]
02c41a7c  cbnz w8,0x02c41a88
02c41a80  bl 0x029f5bd0
02c41a84  ldr x0,[x21]
02c41a88  cbz x20,0x02c41b88
02c41a8c  ldr x8,[x0, #0xb8]
02c41a90  mov x0,x20
02c41a94  mov x1,xzr
02c41a98  ldp s8,s9,[x8, #0x44]
02c41a9c  ldp s10,s11,[x8, #0x4c]
02c41aa0  bl 0x057dc0f8
02c41aa4  cbz x0,0x02c41b88
02c41aa8  mov x1,xzr
02c41aac  bl 0x057eed98
02c41ab0  mov x0,x19
02c41ab4  mov x1,xzr
02c41ab8  fmov s12,s0
02c41abc  fmov s13,s1
02c41ac0  fmov s14,s2
02c41ac4  bl 0x057dc0f8
02c41ac8  cbz x0,0x02c41b88
02c41acc  mov x1,xzr
02c41ad0  bl 0x057eed98
02c41ad4  fsub s4,s12,s0
02c41ad8  fsub s5,s13,s1
02c41adc  mov x0,xzr
02c41ae0  fsub s6,s14,s2
02c41ae4  fmov s0,s8
02c41ae8  fmov s1,s9
02c41aec  fmov s2,s10
02c41af0  fmov s3,s11
02c41af4  bl 0x057cdb04
02c41af8  fcmp s0,#0.0
02c41afc  ldr x0,[x21]
02c41b00  ldr x20,[x19, #0xb8]
02c41b04  ldr w8,[x0, #0xe4]
02c41b08  cset w9,ls
02c41b0c  strb w9,[x19, #0x1f8]
02c41b10  b.hi 0x02c41b34
02c41b14  cbnz w8,0x02c41b20
02c41b18  bl 0x029f5bd0
02c41b1c  ldr x0,[x21]
02c41b20  ldr x10,[x0, #0xb8]
02c41b24  add x8,x10,#0x20
02c41b28  add x9,x10,#0x24
02c41b2c  add x10,x10,#0x28
02c41b30  b 0x02c41b50
02c41b34  cbnz w8,0x02c41b40
02c41b38  bl 0x029f5bd0
02c41b3c  ldr x0,[x21]
02c41b40  ldr x10,[x0, #0xb8]
02c41b44  add x8,x10,#0x2c
02c41b48  add x9,x10,#0x30
02c41b4c  add x10,x10,#0x34
02c41b50  cbz x20,0x02c41b88
02c41b54  mov x0,x20
02c41b58  ldp x20,x19,[sp, #0x50]
02c41b5c  ldp x22,x21,[sp, #0x40]
02c41b60  mov x1,xzr
02c41b64  ldp d9,d8,[sp, #0x28]
02c41b68  ldr s0,[x8]
02c41b6c  ldp d11,d10,[sp, #0x18]
02c41b70  ldr s2,[x10]
02c41b74  ldr s1,[x9]
02c41b78  ldr x30,[sp, #0x38]
02c41b7c  ldp d13,d12,[sp, #0x8]
02c41b80  ldr d14,[sp], #0x60
02c41b84  b 0x057ef218
02c41b88  bl 0x029f5cfc
