02ca08f4  sub sp,sp,#0x50
02ca08f8  stp x30,x25,[sp, #0x10]
02ca08fc  stp x24,x23,[sp, #0x20]
02ca0900  stp x22,x21,[sp, #0x30]
02ca0904  stp x20,x19,[sp, #0x40]
02ca0908  adrp x21,0x625c000
02ca090c  adrp x20,0x5e5e000
02ca0910  mov x19,x0
02ca0914  ldrb w8,[x21, #0x48f]
02ca0918  ldr x20,[x20, #0x3e0]
02ca091c  tbnz w8,#0x0,0x02ca0964
02ca0920  adrp x0,0x5e59000
02ca0924  ldr x0,[x0, #0x1c0]
02ca0928  bl 0x029f5a50
02ca092c  adrp x0,0x5e64000
02ca0930  ldr x0,[x0, #0x8b8]
02ca0934  bl 0x029f5a50
02ca0938  adrp x0,0x5e5e000
02ca093c  ldr x0,[x0, #0x3e0]
02ca0940  bl 0x029f5a50
02ca0944  adrp x0,0x5e61000
02ca0948  ldr x0,[x0, #0xf18]
02ca094c  bl 0x029f5a50
02ca0950  adrp x0,0x5e61000
02ca0954  ldr x0,[x0, #0xf28]
02ca0958  bl 0x029f5a50
02ca095c  mov w8,#0x1
02ca0960  strb w8,[x21, #0x48f]
02ca0964  ldr x0,[x20]
02ca0968  adrp x24,0x5e59000
02ca096c  ldr w8,[x0, #0xe4]
02ca0970  ldr x24,[x24, #0x1c0]
02ca0974  cbnz w8,0x02ca0980
02ca0978  bl 0x029f5bd0
02ca097c  ldr x0,[x20]
02ca0980  ldr x8,[x24]
02ca0984  ldr x9,[x0, #0xb8]
02ca0988  ldr w10,[x8, #0xe4]
02ca098c  ldr x20,[x9]
02ca0990  cbnz w10,0x02ca099c
02ca0994  mov x0,x8
02ca0998  bl 0x029f5bd0
02ca099c  mov x0,x20
02ca09a0  mov x1,xzr
02ca09a4  mov x2,xzr
02ca09a8  bl 0x057e14b4
02ca09ac  tbnz w0,#0x0,0x02ca0d44
02ca09b0  cbz x20,0x02ca0d5c
02ca09b4  mov x0,x20
02ca09b8  bl 0x02ca0fa8
02ca09bc  ldr w22,[x20, #0x24]
02ca09c0  mov w21,w0
02ca09c4  mov x0,x20
02ca09c8  bl 0x02ca0fa8
02ca09cc  mov w8,w0
02ca09d0  ldr x0,[x24]
02ca09d4  cmp w22,w8
02ca09d8  ldr w9,[x0, #0xe4]
02ca09dc  csel w8,w22,w8,lt
02ca09e0  cmp w22,#0x0
02ca09e4  ldr x22,[x19, #0x20]
02ca09e8  csel w23,wzr,w8,lt
02ca09ec  cbnz w9,0x02ca09f4
02ca09f0  bl 0x029f5bd0
02ca09f4  mov x0,x22
02ca09f8  mov x1,xzr
02ca09fc  mov x2,xzr
02ca0a00  bl 0x057dfa70
02ca0a04  tbz w0,#0x0,0x02ca0a60
02ca0a08  adrp x8,0x5e58000
02ca0a0c  add x1,sp,#0xc
02ca0a10  ldr x8,[x8, #0xa10]
02ca0a14  ldr w9,[x20, #0x20]
02ca0a18  ldr x22,[x19, #0x20]
02ca0a1c  ldr x0,[x8, #0x48]
02ca0a20  str w9,[sp, #0xc]
02ca0a24  bl 0x029f5bd8
02ca0a28  adrp x8,0x5e61000
02ca0a2c  mov x1,x0
02ca0a30  mov x2,xzr
02ca0a34  ldr x8,[x8, #0xf18]
02ca0a38  ldr x8,[x8]
02ca0a3c  mov x0,x8
02ca0a40  bl 0x046b6c0c
02ca0a44  cbz x22,0x02ca0d5c
02ca0a48  ldr x8,[x22]
02ca0a4c  mov x1,x0
02ca0a50  mov x0,x22
02ca0a54  ldr x9,[x8, #0x558]
02ca0a58  ldr x2,[x8, #0x560]
02ca0a5c  blr x9
02ca0a60  ldr x0,[x24]
02ca0a64  ldr x22,[x19, #0x28]
02ca0a68  ldr w8,[x0, #0xe4]
02ca0a6c  cbnz w8,0x02ca0a74
02ca0a70  bl 0x029f5bd0
02ca0a74  mov x0,x22
02ca0a78  mov x1,xzr
02ca0a7c  mov x2,xzr
02ca0a80  bl 0x057dfa70
02ca0a84  tbz w0,#0x0,0x02ca0af4
02ca0a88  adrp x25,0x5e58000
02ca0a8c  add x1,sp,#0x8
02ca0a90  ldr x25,[x25, #0xa10]
02ca0a94  ldr x22,[x19, #0x28]
02ca0a98  str w23,[sp, #0x8]
02ca0a9c  ldr x0,[x25, #0x48]
02ca0aa0  bl 0x029f5bd8
02ca0aa4  mov x23,x0
02ca0aa8  ldr x0,[x25, #0x48]
02ca0aac  add x1,sp,#0x4
02ca0ab0  str w21,[sp, #0x4]
02ca0ab4  bl 0x029f5bd8
02ca0ab8  adrp x8,0x5e61000
02ca0abc  mov x2,x0
02ca0ac0  mov x1,x23
02ca0ac4  ldr x8,[x8, #0xf28]
02ca0ac8  mov x3,xzr
02ca0acc  ldr x8,[x8]
02ca0ad0  mov x0,x8
02ca0ad4  bl 0x046c1d14
02ca0ad8  cbz x22,0x02ca0d5c
02ca0adc  ldr x8,[x22]
02ca0ae0  mov x1,x0
02ca0ae4  mov x0,x22
02ca0ae8  ldr x9,[x8, #0x558]
02ca0aec  ldr x2,[x8, #0x560]
02ca0af0  blr x9
02ca0af4  ldr x0,[x24]
02ca0af8  ldr x21,[x19, #0x38]
02ca0afc  ldr w8,[x0, #0xe4]
02ca0b00  cbnz w8,0x02ca0b08
02ca0b04  bl 0x029f5bd0
02ca0b08  mov x0,x21
02ca0b0c  mov x1,xzr
02ca0b10  mov x2,xzr
02ca0b14  bl 0x057dfa70
02ca0b18  tbz w0,#0x0,0x02ca0b38
02ca0b1c  ldr x21,[x19, #0x38]
02ca0b20  mov x0,x20
02ca0b24  bl 0x02ca10fc
02ca0b28  cbz x21,0x02ca0d5c
02ca0b2c  mov x0,x21
02ca0b30  mov x1,xzr
02ca0b34  bl 0x02c28290
02ca0b38  ldr x0,[x24]
02ca0b3c  ldr x21,[x19, #0x30]
02ca0b40  ldr w8,[x0, #0xe4]
02ca0b44  cbnz w8,0x02ca0b4c
02ca0b48  bl 0x029f5bd0
02ca0b4c  mov x0,x21
02ca0b50  mov x1,xzr
02ca0b54  mov x2,xzr
02ca0b58  bl 0x057dfa70
02ca0b5c  tbz w0,#0x0,0x02ca0ba4
02ca0b60  adrp x8,0x5e64000
02ca0b64  ldr x8,[x8, #0x8b8]
02ca0b68  ldr x21,[x19, #0x30]
02ca0b6c  ldr w22,[x20, #0x20]
02ca0b70  ldr x0,[x8]
02ca0b74  ldr w8,[x0, #0xe4]
02ca0b78  cbnz w8,0x02ca0b80
02ca0b7c  bl 0x029f5bd0
02ca0b80  mov w0,w22
02ca0b84  bl 0x02ca226c
02ca0b88  cbz x21,0x02ca0d5c
02ca0b8c  ldr x8,[x21]
02ca0b90  mov x1,x0
02ca0b94  mov x0,x21
02ca0b98  ldr x9,[x8, #0x558]
02ca0b9c  ldr x2,[x8, #0x560]
02ca0ba0  blr x9
02ca0ba4  ldr w8,[x20, #0x20]
02ca0ba8  cmp w8,#0x3
02ca0bac  b.ge 0x02ca0bb8
02ca0bb0  mov w21,wzr
02ca0bb4  b 0x02ca0bcc
02ca0bb8  ldr w21,[x20, #0x28]
02ca0bbc  mov x0,x20
02ca0bc0  bl 0x02ca1040
02ca0bc4  cmp w21,w0
02ca0bc8  cset w21,ge
02ca0bcc  ldr x0,[x24]
02ca0bd0  ldr x22,[x19, #0x50]
02ca0bd4  ldr w8,[x0, #0xe4]
02ca0bd8  cbnz w8,0x02ca0be0
02ca0bdc  bl 0x029f5bd0
02ca0be0  mov x0,x22
02ca0be4  mov x1,xzr
02ca0be8  mov x2,xzr
02ca0bec  bl 0x057dfa70
02ca0bf0  tbz w0,#0x0,0x02ca0c08
02ca0bf4  ldr x0,[x19, #0x50]
02ca0bf8  cbz x0,0x02ca0d5c
02ca0bfc  eor w1,w21,#0x1
02ca0c00  mov x2,xzr
02ca0c04  bl 0x057dff3c
02ca0c08  ldr x0,[x24]
02ca0c0c  ldr x22,[x19, #0x58]
02ca0c10  ldr w8,[x0, #0xe4]
02ca0c14  cbnz w8,0x02ca0c1c
02ca0c18  bl 0x029f5bd0
02ca0c1c  mov x0,x22
02ca0c20  mov x1,xzr
02ca0c24  mov x2,xzr
02ca0c28  bl 0x057dfa70
02ca0c2c  tbz w0,#0x0,0x02ca0c44
02ca0c30  ldr x0,[x19, #0x58]
02ca0c34  cbz x0,0x02ca0d5c
02ca0c38  mov w1,w21
02ca0c3c  mov x2,xzr
02ca0c40  bl 0x057dff3c
02ca0c44  tbnz w21,#0x0,0x02ca0d44
02ca0c48  mov x0,x20
02ca0c4c  bl 0x02ca11a4
02ca0c50  ldr x8,[x24]
02ca0c54  ldr x22,[x19, #0x40]
02ca0c58  mov w21,w0
02ca0c5c  ldr w9,[x8, #0xe4]
02ca0c60  cbnz w9,0x02ca0c6c
02ca0c64  mov x0,x8
02ca0c68  bl 0x029f5bd0
02ca0c6c  mov x0,x22
02ca0c70  mov x1,xzr
02ca0c74  mov x2,xzr
02ca0c78  bl 0x057dfa70
02ca0c7c  tbz w0,#0x0,0x02ca0c94
02ca0c80  ldr x0,[x19, #0x40]
02ca0c84  cbz x0,0x02ca0d5c
02ca0c88  and w1,w21,#0x1
02ca0c8c  mov x2,xzr
02ca0c90  bl 0x057dff3c
02ca0c94  ldr x0,[x24]
02ca0c98  ldr x22,[x19, #0x48]
02ca0c9c  ldr w8,[x0, #0xe4]
02ca0ca0  cbnz w8,0x02ca0ca8
02ca0ca4  bl 0x029f5bd0
02ca0ca8  mov x0,x22
02ca0cac  mov x1,xzr
02ca0cb0  mov x2,xzr
02ca0cb4  bl 0x057dfa70
02ca0cb8  tbz w0,#0x0,0x02ca0cd4
02ca0cbc  ldr x0,[x19, #0x48]
02ca0cc0  cbz x0,0x02ca0d5c
02ca0cc4  mov w8,#0x1
02ca0cc8  mov x2,xzr
02ca0ccc  bic w1,w8,w21
02ca0cd0  bl 0x057dff3c
02ca0cd4  tbz w21,#0x0,0x02ca0d44
02ca0cd8  ldr x0,[x24]
02ca0cdc  ldr x21,[x19, #0x60]
02ca0ce0  ldr w8,[x0, #0xe4]
02ca0ce4  cbnz w8,0x02ca0cec
02ca0ce8  bl 0x029f5bd0
02ca0cec  mov x0,x21
02ca0cf0  mov x1,xzr
02ca0cf4  mov x2,xzr
02ca0cf8  bl 0x057dfa70
02ca0cfc  tbz w0,#0x0,0x02ca0d44
02ca0d00  adrp x8,0x5e64000
02ca0d04  ldr x8,[x8, #0x8b8]
02ca0d08  ldr x19,[x19, #0x60]
02ca0d0c  ldr w20,[x20, #0x20]
02ca0d10  ldr x0,[x8]
02ca0d14  ldr w8,[x0, #0xe4]
02ca0d18  cbnz w8,0x02ca0d20
02ca0d1c  bl 0x029f5bd0
02ca0d20  mov w0,w20
02ca0d24  bl 0x02ca244c
02ca0d28  cbz x19,0x02ca0d5c
02ca0d2c  ldr x8,[x19]
02ca0d30  mov x1,x0
02ca0d34  mov x0,x19
02ca0d38  ldr x9,[x8, #0x558]
02ca0d3c  ldr x2,[x8, #0x560]
02ca0d40  blr x9
02ca0d44  ldp x20,x19,[sp, #0x40]
02ca0d48  ldp x22,x21,[sp, #0x30]
02ca0d4c  ldp x24,x23,[sp, #0x20]
02ca0d50  ldp x30,x25,[sp, #0x10]
02ca0d54  add sp,sp,#0x50
02ca0d58  ret
02ca0d5c  bl 0x029f5cfc
