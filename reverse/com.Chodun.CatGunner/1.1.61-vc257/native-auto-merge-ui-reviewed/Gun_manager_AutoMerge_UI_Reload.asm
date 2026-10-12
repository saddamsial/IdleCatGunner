02c67abc  str x30,[sp, #-0x30]!
02c67ac0  stp x22,x21,[sp, #0x10]
02c67ac4  stp x20,x19,[sp, #0x20]
02c67ac8  adrp x20,0x625c000
02c67acc  mov x19,x0
02c67ad0  ldrb w8,[x20, #0x26d]
02c67ad4  tbnz w8,#0x0,0x02c67aec
02c67ad8  adrp x0,0x5e59000
02c67adc  ldr x0,[x0, #0x1c0]
02c67ae0  bl 0x029f5a50
02c67ae4  mov w8,#0x1
02c67ae8  strb w8,[x20, #0x26d]
02c67aec  bl 0x02c694d4
02c67af0  tbnz w0,#0x0,0x02c67b00
02c67af4  ldrb w8,[x19, #0x70]
02c67af8  cbz w8,0x02c67b00
02c67afc  strb wzr,[x19, #0x70]
02c67b00  adrp x22,0x5e59000
02c67b04  ldr x22,[x22, #0x1c0]
02c67b08  bl 0x02c694d4
02c67b0c  tbz w0,#0x0,0x02c67b20
02c67b10  ldrb w8,[x19, #0x70]
02c67b14  cmp w8,#0x0
02c67b18  cset w20,ne
02c67b1c  b 0x02c67b24
02c67b20  mov w20,wzr
02c67b24  ldr x0,[x22]
02c67b28  ldr x21,[x19, #0x78]
02c67b2c  ldr w8,[x0, #0xe4]
02c67b30  cbnz w8,0x02c67b38
02c67b34  bl 0x029f5bd0
02c67b38  mov x0,x21
02c67b3c  mov x1,xzr
02c67b40  mov x2,xzr
02c67b44  bl 0x057dfa70
02c67b48  tbz w0,#0x0,0x02c67b70
02c67b4c  ldr x0,[x19, #0x78]
02c67b50  cbz w20,0x02c67b64
02c67b54  cbz x0,0x02c67c4c
02c67b58  mov x1,xzr
02c67b5c  bl 0x02c2738c
02c67b60  b 0x02c67b70
02c67b64  cbz x0,0x02c67c4c
02c67b68  mov x1,xzr
02c67b6c  bl 0x02c273c4
02c67b70  ldr x0,[x22]
02c67b74  ldr x21,[x19, #0x80]
02c67b78  ldr w8,[x0, #0xe4]
02c67b7c  cbnz w8,0x02c67b84
02c67b80  bl 0x029f5bd0
02c67b84  mov x0,x21
02c67b88  mov x1,xzr
02c67b8c  mov x2,xzr
02c67b90  bl 0x057dfa70
02c67b94  tbz w0,#0x0,0x02c67bac
02c67b98  ldr x0,[x19, #0x80]
02c67b9c  cbz x0,0x02c67c4c
02c67ba0  mov w1,w20
02c67ba4  mov x2,xzr
02c67ba8  bl 0x057dff3c
02c67bac  ldr x0,[x22]
02c67bb0  ldr x21,[x19, #0x88]
02c67bb4  ldr w8,[x0, #0xe4]
02c67bb8  cbnz w8,0x02c67bc0
02c67bbc  bl 0x029f5bd0
02c67bc0  mov x0,x21
02c67bc4  mov x1,xzr
02c67bc8  mov x2,xzr
02c67bcc  bl 0x057dfa70
02c67bd0  tbz w0,#0x0,0x02c67be8
02c67bd4  ldr x0,[x19, #0x88]
02c67bd8  cbz x0,0x02c67c4c
02c67bdc  eor w1,w20,#0x1
02c67be0  mov x2,xzr
02c67be4  bl 0x057dff3c
02c67be8  ldr x0,[x22]
02c67bec  ldr x20,[x19, #0x90]
02c67bf0  ldr w8,[x0, #0xe4]
02c67bf4  cbnz w8,0x02c67bfc
02c67bf8  bl 0x029f5bd0
02c67bfc  mov x0,x20
02c67c00  mov x1,xzr
02c67c04  mov x2,xzr
02c67c08  bl 0x057dfa70
02c67c0c  tbz w0,#0x0,0x02c67c3c
02c67c10  ldr x19,[x19, #0x90]
02c67c14  mov x0,xzr
02c67c18  bl 0x02ca7008
02c67c1c  cbz x19,0x02c67c4c
02c67c20  and w1,w0,#0x1
02c67c24  mov x0,x19
02c67c28  mov x2,xzr
02c67c2c  ldp x20,x19,[sp, #0x20]
02c67c30  ldp x22,x21,[sp, #0x10]
02c67c34  ldr x30,[sp], #0x30
02c67c38  b 0x057dff3c
02c67c3c  ldp x20,x19,[sp, #0x20]
02c67c40  ldp x22,x21,[sp, #0x10]
02c67c44  ldr x30,[sp], #0x30
02c67c48  ret
02c67c4c  bl 0x029f5cfc
