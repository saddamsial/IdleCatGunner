02c32aec  str x30,[sp, #-0x30]!
02c32af0  stp x22,x21,[sp, #0x10]
02c32af4  stp x20,x19,[sp, #0x20]
02c32af8  adrp x21,0x625c000
02c32afc  adrp x22,0x5e5d000
02c32b00  mov w19,w1
02c32b04  ldrb w8,[x21, #0x43]
02c32b08  ldr x22,[x22, #0xd28]
02c32b0c  mov x20,x0
02c32b10  tbnz w8,#0x0,0x02c32b28
02c32b14  adrp x0,0x5e5d000
02c32b18  ldr x0,[x0, #0xd28]
02c32b1c  bl 0x029f5a50
02c32b20  mov w8,#0x1
02c32b24  strb w8,[x21, #0x43]
02c32b28  ldr x0,[x22]
02c32b2c  ldr w8,[x0, #0xe4]
02c32b30  cbnz w8,0x02c32b38
02c32b34  bl 0x029f5bd0
02c32b38  mov w0,w19
02c32b3c  mov x1,xzr
02c32b40  bl 0x02c2cc20
02c32b44  cmp w0,#0x13
02c32b48  b.le 0x02c32b74
02c32b4c  mov w8,#0xcccd
02c32b50  mov w1,w19
02c32b54  movk w8,#0xcccc, LSL #16
02c32b58  ldp x22,x21,[sp, #0x10]
02c32b5c  umull x8,w0,w8
02c32b60  mov x0,x20
02c32b64  ldp x20,x19,[sp, #0x20]
02c32b68  lsr x2,x8,#0x24
02c32b6c  ldr x30,[sp], #0x30
02c32b70  b 0x02c32858
02c32b74  adrp x19,0x625b000
02c32b78  ldrb w8,[x19, #0xa57]
02c32b7c  cbnz w8,0x02c32b94
02c32b80  adrp x0,0x5e5d000
02c32b84  ldr x0,[x0, #0xd70]
02c32b88  bl 0x029f5a50
02c32b8c  mov w8,#0x1
02c32b90  strb w8,[x19, #0xa57]
02c32b94  adrp x8,0x5e5d000
02c32b98  ldr x8,[x8, #0xd70]
02c32b9c  ldr x8,[x8]
02c32ba0  ldr x8,[x8, #0xb8]
02c32ba4  ldr x0,[x8]
02c32ba8  cbz x0,0x02c32bcc
02c32bac  ldp x20,x19,[sp, #0x20]
02c32bb0  fmov s0,0x3f800000
02c32bb4  ldp x22,x21,[sp, #0x10]
02c32bb8  mov w1,#0x5
02c32bbc  mov x2,xzr
02c32bc0  mov x3,xzr
02c32bc4  ldr x30,[sp], #0x30
02c32bc8  b 0x02c1f10c
02c32bcc  bl 0x029f5cfc
