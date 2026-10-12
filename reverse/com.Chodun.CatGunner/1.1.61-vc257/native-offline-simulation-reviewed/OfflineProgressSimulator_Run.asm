02c06a14  stp d9,d8,[sp, #-0x50]!
02c06a18  str x30,[sp, #0x10]
02c06a1c  stp x24,x23,[sp, #0x20]
02c06a20  stp x22,x21,[sp, #0x30]
02c06a24  stp x20,x19,[sp, #0x40]
02c06a28  fmov s8,s1
02c06a2c  fmov s9,s0
02c06a30  adrp x19,0x625b000
02c06a34  adrp x21,0x5e62000
02c06a38  ldrb w8,[x19, #0xe7d]
02c06a3c  mov x20,x0
02c06a40  ldr x21,[x21, #0x48]
02c06a44  tbnz w8,#0x0,0x02c06a8c
02c06a48  adrp x0,0x5e62000
02c06a4c  ldr x0,[x0, #0x50]
02c06a50  bl 0x029f5a50
02c06a54  adrp x0,0x5e59000
02c06a58  ldr x0,[x0, #0x1f0]
02c06a5c  bl 0x029f5a50
02c06a60  adrp x0,0x5e62000
02c06a64  ldr x0,[x0, #0x40]
02c06a68  bl 0x029f5a50
02c06a6c  adrp x0,0x5e62000
02c06a70  ldr x0,[x0, #0x58]
02c06a74  bl 0x029f5a50
02c06a78  adrp x0,0x5e62000
02c06a7c  ldr x0,[x0, #0x48]
02c06a80  bl 0x029f5a50
02c06a84  mov w8,#0x1
02c06a88  strb w8,[x19, #0xe7d]
02c06a8c  ldr x0,[x21]
02c06a90  bl 0x029f5cec
02c06a94  mov x1,xzr
02c06a98  mov x21,x0
02c06a9c  bl 0x04893238
02c06aa0  cbz x21,0x02c06ba0
02c06aa4  adrp x22,0x5e62000
02c06aa8  adrp x23,0x5e62000
02c06aac  adrp x24,0x5e62000
02c06ab0  mov x19,x21
02c06ab4  ldr x22,[x22, #0x50]
02c06ab8  ldr x23,[x23, #0x58]
02c06abc  ldr x24,[x24, #0x40]
02c06ac0  str xzr,[x19, #0x10]!
02c06ac4  mov x0,x19
02c06ac8  mov x1,xzr
02c06acc  bl 0x029f59f4
02c06ad0  ldr x0,[x22]
02c06ad4  bl 0x029f5cec
02c06ad8  ldr x2,[x23]
02c06adc  mov x1,x21
02c06ae0  mov x3,xzr
02c06ae4  mov x22,x0
02c06ae8  bl 0x03d323cc
02c06aec  ldr x0,[x24]
02c06af0  ldr w8,[x0, #0xe4]
02c06af4  cbnz w8,0x02c06afc
02c06af8  bl 0x029f5bd0
02c06afc  mov x8,#0x404e000000000000
02c06b00  fmov s0,s9
02c06b04  fmov s1,s8
02c06b08  fmov d2,x8
02c06b0c  mov x0,x20
02c06b10  mov x1,x22
02c06b14  bl 0x02c06fd4
02c06b18  cbz x0,0x02c06ba0
02c06b1c  adrp x21,0x5e59000
02c06b20  mov x20,x0
02c06b24  ldr x21,[x21, #0x1f0]
02c06b28  ldr x8,[x20]
02c06b2c  ldr x1,[x21]
02c06b30  ldrh w9,[x8, #0x12e]
02c06b34  cbz x9,0x02c06b58
02c06b38  ldr x10,[x8, #0xb0]
02c06b3c  add x10,x10,#0x8
02c06b40  ldur x11,[x10, #-0x8]
02c06b44  cmp x11,x1
02c06b48  b.eq 0x02c06b68
02c06b4c  subs x9,x9,#0x1
02c06b50  add x10,x10,#0x10
02c06b54  b.ne 0x02c06b40
02c06b58  mov x0,x20
02c06b5c  mov w2,wzr
02c06b60  bl 0x02a2ed2c
02c06b64  b 0x02c06b74
02c06b68  ldrsw x9,[x10]
02c06b6c  add x8,x8,x9, LSL #0x4
02c06b70  add x0,x8,#0x138
02c06b74  ldp x8,x1,[x0]
02c06b78  mov x0,x20
02c06b7c  blr x8
02c06b80  tbnz w0,#0x0,0x02c06b28
02c06b84  ldr x0,[x19]
02c06b88  ldp x20,x19,[sp, #0x40]
02c06b8c  ldp x22,x21,[sp, #0x30]
02c06b90  ldr x30,[sp, #0x10]
02c06b94  ldp x24,x23,[sp, #0x20]
02c06b98  ldp d9,d8,[sp], #0x50
02c06b9c  ret
02c06ba0  bl 0x029f5cfc
