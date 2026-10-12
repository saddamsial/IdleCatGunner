02c61a8c  sub sp,sp,#0x80
02c61a90  str d8,[sp, #0x50]
02c61a94  stp x30,x21,[sp, #0x60]
02c61a98  stp x20,x19,[sp, #0x70]
02c61a9c  stp q1,q0,[sp, #0x30]
02c61aa0  adrp x21,0x625c000
02c61aa4  adrp x20,0x5e59000
02c61aa8  ldrb w8,[x21, #0x22f]
02c61aac  ldr x20,[x20, #0x1c0]
02c61ab0  mov x19,x0
02c61ab4  tbnz w8,#0x0,0x02c61acc
02c61ab8  adrp x0,0x5e59000
02c61abc  ldr x0,[x0, #0x1c0]
02c61ac0  bl 0x029f5a50
02c61ac4  mov w8,#0x1
02c61ac8  strb w8,[x21, #0x22f]
02c61acc  ldr x0,[x20]
02c61ad0  ldr x20,[x19, #0x70]
02c61ad4  ldr w8,[x0, #0xe4]
02c61ad8  cbnz w8,0x02c61ae0
02c61adc  bl 0x029f5bd0
02c61ae0  mov x0,x20
02c61ae4  mov x1,xzr
02c61ae8  mov x2,xzr
02c61aec  bl 0x057e14b4
02c61af0  ldp q1,q0,[sp, #0x30]
02c61af4  mov v0.S[0x1],v1.S[0x0]
02c61af8  tbnz w0,#0x0,0x02c61b8c
02c61afc  ldr x0,[x19, #0x70]
02c61b00  str q0,[sp, #0x40]
02c61b04  cbz x0,0x02c61ba4
02c61b08  bl 0x02c628ec
02c61b0c  cbz x0,0x02c61ba4
02c61b10  mov x1,xzr
02c61b14  bl 0x057ed9fc
02c61b18  ldr x0,[x19, #0x50]
02c61b1c  stp q3,q2,[sp, #0x20]
02c61b20  cbz x0,0x02c61ba4
02c61b24  mov x1,xzr
02c61b28  bl 0x057ed9fc
02c61b2c  ldr x0,[x19, #0x50]
02c61b30  stp q3,q2,[sp]
02c61b34  cbz x0,0x02c61ba4
02c61b38  ldp q0,q1,[sp, #0x20]
02c61b3c  mov x1,xzr
02c61b40  mov v1.S[0x1],v0.S[0x0]
02c61b44  movi v0.2S,#0x3f, LSL #24
02c61b48  fmul v8.2S,v1.2S,v0.2S
02c61b4c  bl 0x057ef578
02c61b50  ldp q2,q1,[sp]
02c61b54  ldr q4,[sp, #0x40]
02c61b58  mov v1.S[0x1],v2.S[0x0]
02c61b5c  fmul v0.2S,v1.2S,v0.S[0x0]
02c61b60  movi v1.2S,#0x3f, LSL #24
02c61b64  fmul v0.2S,v0.2S,v1.2S
02c61b68  fsub v1.2S,v0.2S,v8.2S
02c61b6c  fsub v0.2S,v8.2S,v0.2S
02c61b70  fcmgt v2.2S,v1.2S,v0.2S
02c61b74  bic v0.8B,v0.8B,v2.8B
02c61b78  bic v1.8B,v1.8B,v2.8B
02c61b7c  fcmgt v3.2S,v4.2S,v0.2S
02c61b80  fcmgt v2.2S,v1.2S,v4.2S
02c61b84  bif v0.8B,v4.8B,v3.8B
02c61b88  bit v0.8B,v1.8B,v2.8B
02c61b8c  ldp x20,x19,[sp, #0x70]
02c61b90  dup s1,v0.S[0x1]
02c61b94  ldp x30,x21,[sp, #0x60]
02c61b98  ldr d8,[sp, #0x50]
02c61b9c  add sp,sp,#0x80
02c61ba0  ret
02c61ba4  bl 0x029f5cfc
