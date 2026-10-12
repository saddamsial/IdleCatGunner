02c60a20  stp x30,x23,[sp, #-0x30]!
02c60a24  stp x22,x21,[sp, #0x10]
02c60a28  stp x20,x19,[sp, #0x20]
02c60a2c  adrp x20,0x625c000
02c60a30  adrp x22,0x5e59000
02c60a34  mov x19,x0
02c60a38  ldrb w8,[x20, #0x21d]
02c60a3c  ldr x22,[x22, #0x1c0]
02c60a40  tbnz w8,#0x0,0x02c60aac
02c60a44  adrp x0,0x5e63000
02c60a48  ldr x0,[x0, #0x858]
02c60a4c  bl 0x029f5a50
02c60a50  adrp x0,0x5e63000
02c60a54  ldr x0,[x0, #0x870]
02c60a58  bl 0x029f5a50
02c60a5c  adrp x0,0x5e63000
02c60a60  ldr x0,[x0, #0x878]
02c60a64  bl 0x029f5a50
02c60a68  adrp x0,0x5e5b000
02c60a6c  ldr x0,[x0, #0xe98]
02c60a70  bl 0x029f5a50
02c60a74  adrp x0,0x5e63000
02c60a78  ldr x0,[x0, #0x860]
02c60a7c  bl 0x029f5a50
02c60a80  adrp x0,0x5e5b000
02c60a84  ldr x0,[x0, #0xd68]
02c60a88  bl 0x029f5a50
02c60a8c  adrp x0,0x5e5b000
02c60a90  ldr x0,[x0, #0xd70]
02c60a94  bl 0x029f5a50
02c60a98  adrp x0,0x5e59000
02c60a9c  ldr x0,[x0, #0x1c0]
02c60aa0  bl 0x029f5a50
02c60aa4  mov w8,#0x1
02c60aa8  strb w8,[x20, #0x21d]
02c60aac  ldr x0,[x22]
02c60ab0  mov x20,x19
02c60ab4  ldr x21,[x20, #0x50]!
02c60ab8  ldr w8,[x0, #0xe4]
02c60abc  cbnz w8,0x02c60ac4
02c60ac0  bl 0x029f5bd0
02c60ac4  adrp x23,0x5e5b000
02c60ac8  mov x0,x21
02c60acc  mov x1,xzr
02c60ad0  ldr x23,[x23, #0xe98]
02c60ad4  mov x2,xzr
02c60ad8  bl 0x057e14b4
02c60adc  tbz w0,#0x0,0x02c60afc
02c60ae0  ldr x1,[x23]
02c60ae4  mov x0,x19
02c60ae8  bl 0x02fe5f2c
02c60aec  mov x1,x0
02c60af0  str x0,[x19, #0x50]
02c60af4  mov x0,x20
02c60af8  bl 0x029f59f4
02c60afc  ldr x0,[x22]
02c60b00  ldr x20,[x19, #0x20]
02c60b04  ldr w8,[x0, #0xe4]
02c60b08  cbnz w8,0x02c60b10
02c60b0c  bl 0x029f5bd0
02c60b10  mov x0,x20
02c60b14  mov x1,xzr
02c60b18  mov x2,xzr
02c60b1c  bl 0x057dfa70
02c60b20  tbz w0,#0x0,0x02c60b70
02c60b24  ldr x0,[x22]
02c60b28  mov x20,x19
02c60b2c  ldr x21,[x20, #0x58]!
02c60b30  ldr w8,[x0, #0xe4]
02c60b34  cbnz w8,0x02c60b3c
02c60b38  bl 0x029f5bd0
02c60b3c  mov x0,x21
02c60b40  mov x1,xzr
02c60b44  mov x2,xzr
02c60b48  bl 0x057e14b4
02c60b4c  tbz w0,#0x0,0x02c60b70
02c60b50  ldr x0,[x19, #0x20]
02c60b54  cbz x0,0x02c60d50
02c60b58  ldr x1,[x23]
02c60b5c  bl 0x02fe5f2c
02c60b60  mov x1,x0
02c60b64  str x0,[x20]
02c60b68  mov x0,x20
02c60b6c  bl 0x029f59f4
02c60b70  ldr x0,[x22]
02c60b74  mov x20,x19
02c60b78  ldr x21,[x20, #0x60]!
02c60b7c  ldr w8,[x0, #0xe4]
02c60b80  cbnz w8,0x02c60b88
02c60b84  bl 0x029f5bd0
02c60b88  mov x0,x21
02c60b8c  mov x1,xzr
02c60b90  mov x2,xzr
02c60b94  bl 0x057e14b4
02c60b98  tbz w0,#0x0,0x02c60c2c
02c60b9c  adrp x8,0x5e63000
02c60ba0  mov x0,x19
02c60ba4  ldr x8,[x8, #0x870]
02c60ba8  ldr x1,[x8]
02c60bac  bl 0x02fe5f2c
02c60bb0  mov x1,x0
02c60bb4  str x0,[x19, #0x60]
02c60bb8  mov x0,x20
02c60bbc  bl 0x029f59f4
02c60bc0  ldr x0,[x22]
02c60bc4  ldr x21,[x19, #0x60]
02c60bc8  ldr w8,[x0, #0xe4]
02c60bcc  cbnz w8,0x02c60bd4
02c60bd0  bl 0x029f5bd0
02c60bd4  mov x0,x21
02c60bd8  mov x1,xzr
02c60bdc  mov x2,xzr
02c60be0  bl 0x057e14b4
02c60be4  tbz w0,#0x0,0x02c60c18
02c60be8  mov x0,x19
02c60bec  mov x1,xzr
02c60bf0  bl 0x057dc1c8
02c60bf4  cbz x0,0x02c60d50
02c60bf8  adrp x8,0x5e5b000
02c60bfc  ldr x8,[x8, #0xd68]
02c60c00  ldr x1,[x8]
02c60c04  bl 0x030a0224
02c60c08  mov x1,x0
02c60c0c  str x0,[x20]
02c60c10  mov x0,x20
02c60c14  bl 0x029f59f4
02c60c18  ldr x0,[x20]
02c60c1c  cbz x0,0x02c60d50
02c60c20  mov w1,#0x1
02c60c24  mov x2,xzr
02c60c28  bl 0x05aa2858
02c60c2c  adrp x8,0x5e63000
02c60c30  mov x0,x19
02c60c34  ldr x8,[x8, #0x878]
02c60c38  ldr x1,[x8]
02c60c3c  bl 0x02fe5f2c
02c60c40  ldr x8,[x22]
02c60c44  mov x20,x0
02c60c48  ldr w9,[x8, #0xe4]
02c60c4c  cbnz w9,0x02c60c58
02c60c50  mov x0,x8
02c60c54  bl 0x029f5bd0
02c60c58  mov x0,x20
02c60c5c  mov x1,xzr
02c60c60  mov x2,xzr
02c60c64  bl 0x057e14b4
02c60c68  tbz w0,#0x0,0x02c60c8c
02c60c6c  mov x0,x19
02c60c70  mov x1,xzr
02c60c74  bl 0x057dc1c8
02c60c78  cbz x0,0x02c60d50
02c60c7c  adrp x8,0x5e5b000
02c60c80  ldr x8,[x8, #0xd70]
02c60c84  ldr x1,[x8]
02c60c88  bl 0x030a0224
02c60c8c  ldr x0,[x22]
02c60c90  mov x20,x19
02c60c94  ldr x21,[x20, #0x68]!
02c60c98  ldr w8,[x0, #0xe4]
02c60c9c  cbnz w8,0x02c60ca4
02c60ca0  bl 0x029f5bd0
02c60ca4  mov x0,x21
02c60ca8  mov x1,xzr
02c60cac  mov x2,xzr
02c60cb0  bl 0x057e14b4
02c60cb4  tbz w0,#0x0,0x02c60d40
02c60cb8  adrp x8,0x5e63000
02c60cbc  mov x0,x19
02c60cc0  ldr x8,[x8, #0x858]
02c60cc4  ldr x1,[x8]
02c60cc8  bl 0x02fe5f2c
02c60ccc  mov x1,x0
02c60cd0  str x0,[x19, #0x68]
02c60cd4  mov x0,x20
02c60cd8  bl 0x029f59f4
02c60cdc  ldr x0,[x22]
02c60ce0  ldr x21,[x19, #0x68]
02c60ce4  ldr w8,[x0, #0xe4]
02c60ce8  cbnz w8,0x02c60cf0
02c60cec  bl 0x029f5bd0
02c60cf0  mov x0,x21
02c60cf4  mov x1,xzr
02c60cf8  mov x2,xzr
02c60cfc  bl 0x057e14b4
02c60d00  tbz w0,#0x0,0x02c60d40
02c60d04  mov x0,x19
02c60d08  mov x1,xzr
02c60d0c  bl 0x057dc1c8
02c60d10  cbz x0,0x02c60d50
02c60d14  adrp x8,0x5e63000
02c60d18  ldr x8,[x8, #0x860]
02c60d1c  ldr x1,[x8]
02c60d20  bl 0x030a0224
02c60d24  mov x1,x0
02c60d28  mov x0,x20
02c60d2c  str x1,[x20]
02c60d30  ldp x20,x19,[sp, #0x20]
02c60d34  ldp x22,x21,[sp, #0x10]
02c60d38  ldp x30,x23,[sp], #0x30
02c60d3c  b 0x029f59f4
02c60d40  ldp x20,x19,[sp, #0x20]
02c60d44  ldp x22,x21,[sp, #0x10]
02c60d48  ldp x30,x23,[sp], #0x30
02c60d4c  ret
02c60d50  bl 0x029f5cfc
