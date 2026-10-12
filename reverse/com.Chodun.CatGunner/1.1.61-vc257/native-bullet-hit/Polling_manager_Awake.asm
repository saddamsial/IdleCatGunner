02c17b28  stp x30,x21,[sp, #-0x20]!
02c17b2c  stp x20,x19,[sp, #0x10]
02c17b30  adrp x21,0x625b000
02c17b34  adrp x20,0x5e62000
02c17b38  mov x19,x0
02c17b3c  ldrb w8,[x21, #0xeff]
02c17b40  ldr x20,[x20, #0x768]
02c17b44  tbnz w8,#0x0,0x02c17b5c
02c17b48  adrp x0,0x5e62000
02c17b4c  ldr x0,[x0, #0x768]
02c17b50  bl 0x029f5a50
02c17b54  mov w8,#0x1
02c17b58  strb w8,[x21, #0xeff]
02c17b5c  ldr x8,[x20]
02c17b60  mov x1,x19
02c17b64  ldr x8,[x8, #0xb8]
02c17b68  str x19,[x8]
02c17b6c  ldr x8,[x20]
02c17b70  ldp x20,x19,[sp, #0x10]
02c17b74  ldr x0,[x8, #0xb8]
02c17b78  ldp x30,x21,[sp], #0x20
02c17b7c  b 0x029f59f4
