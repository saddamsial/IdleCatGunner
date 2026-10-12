02c38b0c  str x30,[sp, #-0x30]!
02c38b10  stp x22,x21,[sp, #0x10]
02c38b14  stp x20,x19,[sp, #0x20]
02c38b18  adrp x20,0x625c000
02c38b1c  adrp x22,0x5e5d000
02c38b20  adrp x21,0x5e59000
02c38b24  ldrb w8,[x20, #0x85]
02c38b28  ldr x22,[x22, #0x5b0]
02c38b2c  ldr x21,[x21, #0x1c0]
02c38b30  mov x19,x0
02c38b34  tbnz w8,#0x0,0x02c38b58
02c38b38  adrp x0,0x5e5d000
02c38b3c  ldr x0,[x0, #0x5b0]
02c38b40  bl 0x029f5a50
02c38b44  adrp x0,0x5e59000
02c38b48  ldr x0,[x0, #0x1c0]
02c38b4c  bl 0x029f5a50
02c38b50  mov w8,#0x1
02c38b54  strb w8,[x20, #0x85]
02c38b58  ldr x8,[x22]
02c38b5c  ldr x0,[x21]
02c38b60  ldr x8,[x8, #0xb8]
02c38b64  ldr w9,[x0, #0xe4]
02c38b68  ldr x20,[x8, #0x8]
02c38b6c  cbnz w9,0x02c38b74
02c38b70  bl 0x029f5bd0
02c38b74  mov x0,x20
02c38b78  mov x1,xzr
02c38b7c  mov x2,xzr
02c38b80  bl 0x057dfa70
02c38b84  tbz w0,#0x0,0x02c38bc8
02c38b88  ldr x8,[x22]
02c38b8c  ldr x8,[x8, #0xb8]
02c38b90  ldr x8,[x8, #0x8]
02c38b94  cbz x8,0x02c38bdc
02c38b98  ldr x0,[x21]
02c38b9c  ldr x20,[x8, #0x28]
02c38ba0  ldr w9,[x0, #0xe4]
02c38ba4  cbnz w9,0x02c38bac
02c38ba8  bl 0x029f5bd0
02c38bac  mov x0,x20
02c38bb0  mov x1,x19
02c38bb4  mov x2,xzr
02c38bb8  ldp x20,x19,[sp, #0x20]
02c38bbc  ldp x22,x21,[sp, #0x10]
02c38bc0  ldr x30,[sp], #0x30
02c38bc4  b 0x057e14b4
02c38bc8  ldp x20,x19,[sp, #0x20]
02c38bcc  mov w0,wzr
02c38bd0  ldp x22,x21,[sp, #0x10]
02c38bd4  ldr x30,[sp], #0x30
02c38bd8  ret
02c38bdc  bl 0x029f5cfc
