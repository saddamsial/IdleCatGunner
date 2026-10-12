02c50c48  str x30,[sp, #-0x20]!
02c50c4c  stp x20,x19,[sp, #0x10]
02c50c50  adrp x20,0x625c000
02c50c54  adrp x19,0x5e5d000
02c50c58  ldrb w8,[x20, #0x159]
02c50c5c  ldr x19,[x19, #0xd58]
02c50c60  tbnz w8,#0x0,0x02c50c78
02c50c64  adrp x0,0x5e5d000
02c50c68  ldr x0,[x0, #0xd58]
02c50c6c  bl 0x029f5a50
02c50c70  mov w8,#0x1
02c50c74  strb w8,[x20, #0x159]
02c50c78  ldr x0,[x19]
02c50c7c  ldr w8,[x0, #0xe4]
02c50c80  cbnz w8,0x02c50c8c
02c50c84  bl 0x029f5bd0
02c50c88  ldr x0,[x19]
02c50c8c  ldr x8,[x0, #0xb8]
02c50c90  ldr x0,[x8, #0x8]
02c50c94  cbz x0,0x02c50cd8
02c50c98  bl 0x02c4eef8
02c50c9c  tbz w0,#0x0,0x02c50ccc
02c50ca0  ldr x0,[x19]
02c50ca4  ldr w8,[x0, #0xe4]
02c50ca8  cbnz w8,0x02c50cb4
02c50cac  bl 0x029f5bd0
02c50cb0  ldr x0,[x19]
02c50cb4  ldr x8,[x0, #0xb8]
02c50cb8  ldr x0,[x8, #0x8]
02c50cbc  cbz x0,0x02c50cd8
02c50cc0  ldp x20,x19,[sp, #0x10]
02c50cc4  ldr x30,[sp], #0x20
02c50cc8  b 0x02c4f1bc
02c50ccc  ldp x20,x19,[sp, #0x10]
02c50cd0  ldr x30,[sp], #0x20
02c50cd4  ret
02c50cd8  bl 0x029f5cfc
