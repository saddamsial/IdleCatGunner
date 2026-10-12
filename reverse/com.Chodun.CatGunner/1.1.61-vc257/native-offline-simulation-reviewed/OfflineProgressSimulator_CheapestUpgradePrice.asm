02c09ac0  sub sp,sp,#0xa0
02c09ac4  str x30,[sp, #0x60]
02c09ac8  stp x24,x23,[sp, #0x70]
02c09acc  stp x22,x21,[sp, #0x80]
02c09ad0  stp x20,x19,[sp, #0x90]
02c09ad4  adrp x24,0x625b000
02c09ad8  adrp x23,0x5e62000
02c09adc  mov w20,w2
02c09ae0  ldrb w9,[x24, #0xe8d]
02c09ae4  ldr x23,[x23, #0x40]
02c09ae8  mov w21,w1
02c09aec  mov w22,w0
02c09af0  mov x19,x8
02c09af4  tbnz w9,#0x0,0x02c09b0c
02c09af8  adrp x0,0x5e62000
02c09afc  ldr x0,[x0, #0x40]
02c09b00  bl 0x029f5a50
02c09b04  mov w8,#0x1
02c09b08  strb w8,[x24, #0xe8d]
02c09b0c  movi v0.2D,#0x0
02c09b10  mov x8,sp
02c09b14  mov w0,wzr
02c09b18  mov x1,xzr
02c09b1c  str xzr,[sp, #0x50]
02c09b20  stp q0,q0,[sp, #0x30]
02c09b24  bl 0x046544b8
02c09b28  ldp q0,q1,[sp]
02c09b2c  add x8,sp,#0x30
02c09b30  orr x0,x8,#0x8
02c09b34  mov x1,xzr
02c09b38  stur q0,[sp, #0x38]
02c09b3c  stur q1,[sp, #0x48]
02c09b40  bl 0x029f59f4
02c09b44  ldr x0,[x23]
02c09b48  strb wzr,[sp, #0x30]
02c09b4c  ldr w8,[x0, #0xe4]
02c09b50  cbnz w8,0x02c09b58
02c09b54  bl 0x029f5bd0
02c09b58  add x1,sp,#0x30
02c09b5c  mov w0,w22
02c09b60  bl 0x02c09ea0
02c09b64  add x1,sp,#0x30
02c09b68  mov w0,w21
02c09b6c  bl 0x02c09ea0
02c09b70  add x1,sp,#0x30
02c09b74  mov w0,w20
02c09b78  bl 0x02c09ea0
02c09b7c  ldrb w8,[sp, #0x30]
02c09b80  tbnz w8,#0x0,0x02c09b9c
02c09b84  mov x8,sp
02c09b88  mov w0,wzr
02c09b8c  mov x1,xzr
02c09b90  bl 0x046544b8
02c09b94  ldp q0,q1,[sp]
02c09b98  b 0x02c09bb4
02c09b9c  ldp q0,q1,[sp, #0x30]
02c09ba0  ldr x8,[sp, #0x50]
02c09ba4  str x8,[sp, #0x20]
02c09ba8  stp q0,q1,[sp]
02c09bac  ldur q0,[sp, #0x8]
02c09bb0  ldur q1,[sp, #0x18]
02c09bb4  stp q0,q1,[x19]
02c09bb8  ldp x20,x19,[sp, #0x90]
02c09bbc  ldp x22,x21,[sp, #0x80]
02c09bc0  ldr x30,[sp, #0x60]
02c09bc4  ldp x24,x23,[sp, #0x70]
02c09bc8  add sp,sp,#0xa0
02c09bcc  ret
