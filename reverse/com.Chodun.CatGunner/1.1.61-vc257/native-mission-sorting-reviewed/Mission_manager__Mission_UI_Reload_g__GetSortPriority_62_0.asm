02ba6c64  stp x30,x21,[sp, #-0x20]!
02ba6c68  stp x20,x19,[sp, #0x10]
02ba6c6c  adrp x21,0x625b000
02ba6c70  mov x19,x1
02ba6c74  mov w20,w0
02ba6c78  ldrb w8,[x21, #0xa56]
02ba6c7c  tbnz w8,#0x0,0x02ba6c94
02ba6c80  adrp x0,0x5e5d000
02ba6c84  ldr x0,[x0, #0xd50]
02ba6c88  bl 0x029f5a50
02ba6c8c  mov w8,#0x1
02ba6c90  strb w8,[x21, #0xa56]
02ba6c94  cmp w20,#0x1
02ba6c98  mov w0,#0x63
02ba6c9c  b.gt 0x02ba6ce8
02ba6ca0  cbz w20,0x02ba6d24
02ba6ca4  cmp w20,#0x1
02ba6ca8  b.ne 0x02ba6d84
02ba6cac  cbz x19,0x02ba6d98
02ba6cb0  ldrb w8,[x19, #0x26]
02ba6cb4  cbz w8,0x02ba6ce0
02ba6cb8  adrp x19,0x5e5d000
02ba6cbc  ldr x19,[x19, #0xd50]
02ba6cc0  ldr x0,[x19]
02ba6cc4  ldr w8,[x0, #0xe4]
02ba6cc8  cbnz w8,0x02ba6cd4
02ba6ccc  bl 0x029f5bd0
02ba6cd0  ldr x0,[x19]
02ba6cd4  ldr x8,[x0, #0xb8]
02ba6cd8  ldrb w8,[x8]
02ba6cdc  cbz w8,0x02ba6d90
02ba6ce0  mov w0,wzr
02ba6ce4  b 0x02ba6d84
02ba6ce8  cmp w20,#0x2
02ba6cec  b.eq 0x02ba6d54
02ba6cf0  cmp w20,#0x3
02ba6cf4  b.ne 0x02ba6d84
02ba6cf8  adrp x19,0x5e5d000
02ba6cfc  ldr x19,[x19, #0xd50]
02ba6d00  ldr x0,[x19]
02ba6d04  ldr w8,[x0, #0xe4]
02ba6d08  cbnz w8,0x02ba6d14
02ba6d0c  bl 0x029f5bd0
02ba6d10  ldr x0,[x19]
02ba6d14  ldr x8,[x0, #0xb8]
02ba6d18  ldrb w8,[x8, #0x1]
02ba6d1c  eor w0,w8,#0x1
02ba6d20  b 0x02ba6d84
02ba6d24  adrp x19,0x5e5d000
02ba6d28  ldr x19,[x19, #0xd50]
02ba6d2c  ldr x0,[x19]
02ba6d30  ldr w8,[x0, #0xe4]
02ba6d34  cbnz w8,0x02ba6d40
02ba6d38  bl 0x029f5bd0
02ba6d3c  ldr x0,[x19]
02ba6d40  ldr x8,[x0, #0xb8]
02ba6d44  ldrb w8,[x8, #0x1]
02ba6d48  cmp w8,#0x0
02ba6d4c  mov w8,#0x1
02ba6d50  b 0x02ba6d80
02ba6d54  adrp x19,0x5e5d000
02ba6d58  ldr x19,[x19, #0xd50]
02ba6d5c  ldr x0,[x19]
02ba6d60  ldr w8,[x0, #0xe4]
02ba6d64  cbnz w8,0x02ba6d70
02ba6d68  bl 0x029f5bd0
02ba6d6c  ldr x0,[x19]
02ba6d70  ldr x8,[x0, #0xb8]
02ba6d74  ldrb w8,[x8, #0x1]
02ba6d78  cmp w8,#0x0
02ba6d7c  mov w8,#0x2
02ba6d80  cinc w0,w8,eq
02ba6d84  ldp x20,x19,[sp, #0x10]
02ba6d88  ldp x30,x21,[sp], #0x20
02ba6d8c  ret
02ba6d90  mov w0,#0x1
02ba6d94  b 0x02ba6d84
02ba6d98  bl 0x029f5cfc
