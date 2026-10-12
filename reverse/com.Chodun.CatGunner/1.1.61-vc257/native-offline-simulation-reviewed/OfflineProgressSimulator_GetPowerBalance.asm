02c08ab4  sub sp,sp,#0x90
02c08ab8  str x30,[sp, #0x60]
02c08abc  stp x22,x21,[sp, #0x70]
02c08ac0  stp x20,x19,[sp, #0x80]
02c08ac4  adrp x22,0x625b000
02c08ac8  adrp x21,0x5e5d000
02c08acc  mov w20,w0
02c08ad0  ldrb w9,[x22, #0xe87]
02c08ad4  ldr x21,[x21, #0x4e8]
02c08ad8  mov x19,x8
02c08adc  tbnz w9,#0x0,0x02c08b00
02c08ae0  adrp x0,0x5e59000
02c08ae4  ldr x0,[x0]
02c08ae8  bl 0x029f5a50
02c08aec  adrp x0,0x5e5d000
02c08af0  ldr x0,[x0, #0x4e8]
02c08af4  bl 0x029f5a50
02c08af8  mov w8,#0x1
02c08afc  strb w8,[x22, #0xe87]
02c08b00  movi v0.2D,#0x0
02c08b04  ldr x0,[x21]
02c08b08  mov w8,#0x2710
02c08b0c  cmp w20,w8
02c08b10  ldr w9,[x0, #0xe4]
02c08b14  csel w20,w20,w8,lt
02c08b18  stp q0,q0,[sp, #0x40]
02c08b1c  cbnz w9,0x02c08b28
02c08b20  bl 0x029f5bd0
02c08b24  ldr x0,[x21]
02c08b28  ldr x8,[x0, #0xb8]
02c08b2c  bic w20,w20,w20, ASR #0x1f
02c08b30  ldr x8,[x8]
02c08b34  cbz x8,0x02c08b58
02c08b38  ldr x8,[x8, #0x38]
02c08b3c  cbz x8,0x02c08b58
02c08b40  ldr w9,[x8, #0x18]
02c08b44  cmp w20,w9
02c08b48  b.ge 0x02c08b58
02c08b4c  add x8,x8,x20, LSL #0x5
02c08b50  ldp q0,q1,[x8, #0x20]
02c08b54  b 0x02c08bbc
02c08b58  adrp x8,0x5e59000
02c08b5c  ldr x8,[x8]
02c08b60  ldr x0,[x8]
02c08b64  ldr w8,[x0, #0xe4]
02c08b68  cbnz w8,0x02c08b70
02c08b6c  bl 0x029f5bd0
02c08b70  scvtf d1,w20
02c08b74  adrp x8,0x116f000
02c08b78  mov x0,xzr
02c08b7c  ldr d0,[x8, #0xff8]
02c08b80  bl 0x04852840
02c08b84  mov x8,#0x4059000000000000
02c08b88  mov x0,xzr
02c08b8c  fmov d1,x8
02c08b90  add x8,sp,#0x20
02c08b94  fmul d0,d0,d1
02c08b98  bl 0x04656c9c
02c08b9c  ldp q0,q1,[sp, #0x20]
02c08ba0  mov x8,sp
02c08ba4  add x0,sp,#0x40
02c08ba8  mov w1,#0x3
02c08bac  mov x2,xzr
02c08bb0  stp q0,q1,[sp, #0x40]
02c08bb4  bl 0x04658464
02c08bb8  ldp q0,q1,[sp]
02c08bbc  stp q0,q1,[x19]
02c08bc0  ldp x20,x19,[sp, #0x80]
02c08bc4  ldp x22,x21,[sp, #0x70]
02c08bc8  ldr x30,[sp, #0x60]
02c08bcc  add sp,sp,#0x90
02c08bd0  ret
