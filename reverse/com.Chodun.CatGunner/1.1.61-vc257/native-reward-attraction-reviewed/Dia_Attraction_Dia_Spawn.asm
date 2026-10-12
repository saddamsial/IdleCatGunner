02c26b18  str x30,[sp, #-0x30]!
02c26b1c  stp x22,x21,[sp, #0x10]
02c26b20  stp x20,x19,[sp, #0x20]
02c26b24  adrp x22,0x625b000
02c26b28  mov w19,w2
02c26b2c  mov x20,x1
02c26b30  ldrb w8,[x22, #0xfb2]
02c26b34  mov x21,x0
02c26b38  tbnz w8,#0x0,0x02c26b50
02c26b3c  adrp x0,0x5e62000
02c26b40  ldr x0,[x0, #0xd28]
02c26b44  bl 0x029f5a50
02c26b48  mov w8,#0x1
02c26b4c  strb w8,[x22, #0xfb2]
02c26b50  ldr x8,[x21, #0x28]
02c26b54  cbz x8,0x02c26ba4
02c26b58  ldr w8,[x8, #0x18]
02c26b5c  cbz w8,0x02c26b94
02c26b60  cbz x20,0x02c26ba4
02c26b64  ldr x21,[x21, #0x20]
02c26b68  mov x0,x20
02c26b6c  mov x1,xzr
02c26b70  bl 0x057eed98
02c26b74  cbz x21,0x02c26ba4
02c26b78  mov x0,x21
02c26b7c  mov w1,w19
02c26b80  mov x2,xzr
02c26b84  ldp x20,x19,[sp, #0x20]
02c26b88  ldp x22,x21,[sp, #0x10]
02c26b8c  ldr x30,[sp], #0x30
02c26b90  b 0x049c3ad0
02c26b94  ldp x20,x19,[sp, #0x20]
02c26b98  ldp x22,x21,[sp, #0x10]
02c26b9c  ldr x30,[sp], #0x30
02c26ba0  ret
02c26ba4  bl 0x029f5cfc
