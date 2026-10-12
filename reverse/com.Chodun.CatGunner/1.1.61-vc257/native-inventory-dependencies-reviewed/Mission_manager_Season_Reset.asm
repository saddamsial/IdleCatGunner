02ba49bc  str x30,[sp, #-0x30]!
02ba49c0  stp x22,x21,[sp, #0x10]
02ba49c4  stp x20,x19,[sp, #0x20]
02ba49c8  adrp x22,0x625b000
02ba49cc  mov w20,w2
02ba49d0  mov w21,w1
02ba49d4  ldrb w8,[x22, #0xa3e]
02ba49d8  mov x19,x0
02ba49dc  tbnz w8,#0x0,0x02ba4a18
02ba49e0  adrp x0,0x5e59000
02ba49e4  ldr x0,[x0, #0x7d0]
02ba49e8  bl 0x029f5a50
02ba49ec  adrp x0,0x5e5d000
02ba49f0  ldr x0,[x0, #0xd50]
02ba49f4  bl 0x029f5a50
02ba49f8  adrp x0,0x5e5d000
02ba49fc  ldr x0,[x0, #0x3c0]
02ba4a00  bl 0x029f5a50
02ba4a04  adrp x0,0x5e5e000
02ba4a08  ldr x0,[x0, #0x728]
02ba4a0c  bl 0x029f5a50
02ba4a10  mov w8,#0x1
02ba4a14  strb w8,[x22, #0xa3e]
02ba4a18  str xzr,[sp, #0x8]
02ba4a1c  tbz w21,#0x0,0x02ba4a2c
02ba4a20  ldr w8,[x19, #0x60]
02ba4a24  add w8,w8,#0x1
02ba4a28  str w8,[x19, #0x60]
02ba4a2c  adrp x21,0x5e5d000
02ba4a30  ldr x21,[x21, #0x3c0]
02ba4a34  tbz w20,#0x0,0x02ba4a5c
02ba4a38  ldr x0,[x21]
02ba4a3c  adrp x20,0x5e5e000
02ba4a40  ldr w8,[x0, #0xe4]
02ba4a44  ldr x20,[x20, #0x728]
02ba4a48  cbnz w8,0x02ba4a50
02ba4a4c  bl 0x029f5bd0
02ba4a50  ldr x0,[x20]
02ba4a54  mov x1,xzr
02ba4a58  bl 0x02c25580
02ba4a5c  adrp x22,0x5e59000
02ba4a60  mov w8,#0xffffffff
02ba4a64  mov w9,#0x101
02ba4a68  ldr x22,[x22, #0x7d0]
02ba4a6c  mov x0,x19
02ba4a70  str w8,[x19, #0xf0]
02ba4a74  strh w9,[x19, #0x64]
02ba4a78  bl 0x02ba4ba8
02ba4a7c  ldr x0,[x21]
02ba4a80  str xzr,[x19, #0x48]
02ba4a84  ldr w8,[x0, #0xe4]
02ba4a88  cbnz w8,0x02ba4a90
02ba4a8c  bl 0x029f5bd0
02ba4a90  adrp x20,0x5e5d000
02ba4a94  mov x0,xzr
02ba4a98  ldr x20,[x20, #0xd50]
02ba4a9c  bl 0x02c25b48
02ba4aa0  ldr x8,[x22]
02ba4aa4  str x0,[sp, #0x8]
02ba4aa8  ldr w9,[x8, #0xe4]
02ba4aac  cbnz w9,0x02ba4ab8
02ba4ab0  mov x0,x8
02ba4ab4  bl 0x029f5bd0
02ba4ab8  add x0,sp,#0x8
02ba4abc  mov w1,#0x1
02ba4ac0  mov x2,xzr
02ba4ac4  bl 0x0482facc
02ba4ac8  mov x8,x0
02ba4acc  ldr x0,[x20]
02ba4ad0  str x8,[x19, #0x68]
02ba4ad4  ldr w8,[x0, #0xe4]
02ba4ad8  cbnz w8,0x02ba4ae4
02ba4adc  bl 0x029f5bd0
02ba4ae0  ldr x0,[x20]
02ba4ae4  ldr x8,[x0, #0xb8]
02ba4ae8  strh wzr,[x8]
02ba4aec  ldr x10,[x19, #0x38]
02ba4af0  cbz x10,0x02ba4ba4
02ba4af4  ldr x9,[x10, #0x18]
02ba4af8  cmp w9,#0x1
02ba4afc  b.lt 0x02ba4b20
02ba4b00  bic w8,w9,w9, ASR #0x1f
02ba4b04  and x9,x9,#0xffffffff
02ba4b08  add x10,x10,#0x20
02ba4b0c  cbz x9,0x02ba4ba0
02ba4b10  sub x8,x8,#0x1
02ba4b14  sub x9,x9,#0x1
02ba4b18  strb wzr,[x10], #0x1
02ba4b1c  cbnz x8,0x02ba4b0c
02ba4b20  ldr x10,[x19, #0x40]
02ba4b24  cbz x10,0x02ba4ba4
02ba4b28  ldr x9,[x10, #0x18]
02ba4b2c  cmp w9,#0x1
02ba4b30  b.lt 0x02ba4b54
02ba4b34  bic w8,w9,w9, ASR #0x1f
02ba4b38  and x9,x9,#0xffffffff
02ba4b3c  add x10,x10,#0x20
02ba4b40  cbz x9,0x02ba4ba0
02ba4b44  sub x8,x8,#0x1
02ba4b48  sub x9,x9,#0x1
02ba4b4c  strb wzr,[x10], #0x1
02ba4b50  cbnz x8,0x02ba4b40
02ba4b54  mov x0,x19
02ba4b58  bl 0x02ba40e4
02ba4b5c  mov x0,x19
02ba4b60  bl 0x02ba4354
02ba4b64  ldr x0,[x19, #0xc0]
02ba4b68  cbz x0,0x02ba4ba4
02ba4b6c  movi d0,#0x0
02ba4b70  mov x1,xzr
02ba4b74  bl 0x05abe0a4
02ba4b78  mov x0,x19
02ba4b7c  bl 0x02ba3bb0
02ba4b80  ldr x0,[x19, #0x88]
02ba4b84  cbz x0,0x02ba4ba4
02ba4b88  mov x1,xzr
02ba4b8c  bl 0x02c04a90
02ba4b90  ldp x20,x19,[sp, #0x20]
02ba4b94  ldp x22,x21,[sp, #0x10]
02ba4b98  ldr x30,[sp], #0x30
02ba4b9c  ret
02ba4ba0  bl 0x029f5d04
02ba4ba4  bl 0x029f5cfc
