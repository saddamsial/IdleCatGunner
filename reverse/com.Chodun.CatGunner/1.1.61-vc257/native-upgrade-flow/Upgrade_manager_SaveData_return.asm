02cb2b50  str x30,[sp, #-0x30]!
02cb2b54  stp x22,x21,[sp, #0x10]
02cb2b58  stp x20,x19,[sp, #0x20]
02cb2b5c  adrp x20,0x625c000
02cb2b60  adrp x21,0x5e5d000
02cb2b64  mov x19,x0
02cb2b68  ldrb w8,[x20, #0x557]
02cb2b6c  ldr x21,[x21, #0x790]
02cb2b70  tbnz w8,#0x0,0x02cb2b88
02cb2b74  adrp x0,0x5e5d000
02cb2b78  ldr x0,[x0, #0x790]
02cb2b7c  bl 0x029f5a50
02cb2b80  mov w8,#0x1
02cb2b84  strb w8,[x20, #0x557]
02cb2b88  ldr x0,[x21]
02cb2b8c  mov w1,#0x3
02cb2b90  bl 0x029f5b40
02cb2b94  cbz x0,0x02cb2c0c
02cb2b98  ldr w8,[x0, #0x18]
02cb2b9c  mov x20,x0
02cb2ba0  cmp w8,#0x1
02cb2ba4  b.lt 0x02cb2bf8
02cb2ba8  mov x21,xzr
02cb2bac  add x22,x20,#0x20
02cb2bb0  ldr x8,[x19, #0x20]
02cb2bb4  cbz x8,0x02cb2c0c
02cb2bb8  ldr w9,[x8, #0x18]
02cb2bbc  cmp w21,w9
02cb2bc0  b.cs 0x02cb2c10
02cb2bc4  add x8,x8,x21, LSL #0x3
02cb2bc8  ldr x8,[x8, #0x20]
02cb2bcc  cbz x8,0x02cb2c0c
02cb2bd0  ldp x0,x1,[x8, #0x18]
02cb2bd4  mov x2,xzr
02cb2bd8  bl 0x02b1e644
02cb2bdc  ldr x8,[x20, #0x18]
02cb2be0  cmp w21,w8
02cb2be4  b.cs 0x02cb2c10
02cb2be8  str w0,[x22, x21, LSL #0x2]
02cb2bec  add x21,x21,#0x1
02cb2bf0  cmp w21,w8
02cb2bf4  b.lt 0x02cb2bb0
02cb2bf8  mov x0,x20
02cb2bfc  ldp x20,x19,[sp, #0x20]
02cb2c00  ldp x22,x21,[sp, #0x10]
02cb2c04  ldr x30,[sp], #0x30
02cb2c08  ret
02cb2c0c  bl 0x029f5cfc
02cb2c10  bl 0x029f5d04
