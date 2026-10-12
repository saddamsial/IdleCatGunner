02ba5c4c  stp x30,x23,[sp, #-0x30]!
02ba5c50  stp x22,x21,[sp, #0x10]
02ba5c54  stp x20,x19,[sp, #0x20]
02ba5c58  adrp x20,0x625b000
02ba5c5c  mov x19,x0
02ba5c60  ldrb w8,[x20, #0xa4a]
02ba5c64  tbnz w8,#0x0,0x02ba5c7c
02ba5c68  adrp x0,0x5e5d000
02ba5c6c  ldr x0,[x0, #0xd50]
02ba5c70  bl 0x029f5a50
02ba5c74  mov w8,#0x1
02ba5c78  strb w8,[x20, #0xa4a]
02ba5c7c  ldr x8,[x19, #0x20]
02ba5c80  cbz x8,0x02ba5d64
02ba5c84  adrp x21,0x5e5d000
02ba5c88  mov w20,wzr
02ba5c8c  ldr x21,[x21, #0xd50]
02ba5c90  ldr w22,[x8, #0x18]
02ba5c94  cmp w20,w22
02ba5c98  b.ge 0x02ba5d68
02ba5c9c  b.cs 0x02ba5d8c
02ba5ca0  add x8,x8,w20, SXTW  #0x3
02ba5ca4  ldr x23,[x8, #0x20]
02ba5ca8  cbz x23,0x02ba5d64
02ba5cac  ldrb w8,[x23, #0x26]
02ba5cb0  cbz w8,0x02ba5cd4
02ba5cb4  ldr x0,[x21]
02ba5cb8  ldr w8,[x0, #0xe4]
02ba5cbc  cbnz w8,0x02ba5cc8
02ba5cc0  bl 0x029f5bd0
02ba5cc4  ldr x0,[x21]
02ba5cc8  ldr x8,[x0, #0xb8]
02ba5ccc  ldrb w8,[x8]
02ba5cd0  cbz w8,0x02ba5d58
02ba5cd4  ldr w9,[x23, #0x18]
02ba5cd8  mov w8,wzr
02ba5cdc  cmp w9,#0x1
02ba5ce0  b.gt 0x02ba5cf8
02ba5ce4  cbz w9,0x02ba5d10
02ba5ce8  cmp w9,#0x1
02ba5cec  b.ne 0x02ba5d1c
02ba5cf0  ldr w8,[x19, #0x54]
02ba5cf4  b 0x02ba5d1c
02ba5cf8  cmp w9,#0x2
02ba5cfc  b.eq 0x02ba5d18
02ba5d00  cmp w9,#0x3
02ba5d04  b.ne 0x02ba5d1c
02ba5d08  ldr w8,[x19, #0x5c]
02ba5d0c  b 0x02ba5d1c
02ba5d10  ldr w8,[x19, #0x50]
02ba5d14  b 0x02ba5d1c
02ba5d18  ldr w8,[x19, #0x58]
02ba5d1c  ldr w9,[x23, #0x1c]
02ba5d20  cmp w8,w9
02ba5d24  b.lt 0x02ba5d58
02ba5d28  ldrb w8,[x23, #0x24]
02ba5d2c  cbz w8,0x02ba5d68
02ba5d30  ldr x0,[x21]
02ba5d34  ldr w8,[x0, #0xe4]
02ba5d38  cbnz w8,0x02ba5d44
02ba5d3c  bl 0x029f5bd0
02ba5d40  ldr x0,[x21]
02ba5d44  ldr x8,[x0, #0xb8]
02ba5d48  ldrb w8,[x8, #0x1]
02ba5d4c  cbz w8,0x02ba5d58
02ba5d50  ldrb w8,[x23, #0x25]
02ba5d54  cbz w8,0x02ba5d68
02ba5d58  ldr x8,[x19, #0x20]
02ba5d5c  add w20,w20,#0x1
02ba5d60  cbnz x8,0x02ba5c90
02ba5d64  bl 0x029f5cfc
02ba5d68  ldr x0,[x19, #0xb8]
02ba5d6c  cbz x0,0x02ba5d64
02ba5d70  cmp w20,w22
02ba5d74  ldp x20,x19,[sp, #0x20]
02ba5d78  ldp x22,x21,[sp, #0x10]
02ba5d7c  cset w1,lt
02ba5d80  mov x2,xzr
02ba5d84  ldp x30,x23,[sp], #0x30
02ba5d88  b 0x057dff3c
02ba5d8c  bl 0x029f5d04
