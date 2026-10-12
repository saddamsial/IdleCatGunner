02c70974  stp x30,x25,[sp, #-0x40]!
02c70978  stp x24,x23,[sp, #0x10]
02c7097c  stp x22,x21,[sp, #0x20]
02c70980  stp x20,x19,[sp, #0x30]
02c70984  adrp x22,0x625c000
02c70988  adrp x24,0x5e5d000
02c7098c  mov w20,w2
02c70990  ldrb w8,[x22, #0x2c6]
02c70994  ldr x24,[x24, #0xd40]
02c70998  mov w21,w1
02c7099c  mov x19,x0
02c709a0  tbnz w8,#0x0,0x02c709c4
02c709a4  adrp x0,0x5e5d000
02c709a8  ldr x0,[x0, #0xd40]
02c709ac  bl 0x029f5a50
02c709b0  adrp x0,0x5e59000
02c709b4  ldr x0,[x0, #0x1c0]
02c709b8  bl 0x029f5a50
02c709bc  mov w8,#0x1
02c709c0  strb w8,[x22, #0x2c6]
02c709c4  ldr x8,[x24]
02c709c8  stp w21,w20,[x19, #0x8c]
02c709cc  ldr x8,[x8, #0xb8]
02c709d0  ldr x8,[x8]
02c709d4  cbz x8,0x02c70ac4
02c709d8  ldr x8,[x8, #0x48]
02c709dc  cbz x8,0x02c70ac4
02c709e0  ldr w9,[x8, #0x18]
02c709e4  cmp w9,w21
02c709e8  b.ls 0x02c70c84
02c709ec  ldr x0,[x19, #0x20]
02c709f0  cbz x0,0x02c70ac4
02c709f4  add x8,x8,w21, SXTW  #0x3
02c709f8  ldr x23,[x19, #0x28]
02c709fc  mov x2,xzr
02c70a00  ldr x22,[x8, #0x20]
02c70a04  mov x1,x22
02c70a08  bl 0x058d34cc
02c70a0c  cbz x23,0x02c70ac4
02c70a10  mov x0,x23
02c70a14  mov x1,x22
02c70a18  mov x2,xzr
02c70a1c  bl 0x058d34cc
02c70a20  ldr x0,[x19, #0x38]
02c70a24  cbz x0,0x02c70ac4
02c70a28  mov w8,#0x6667
02c70a2c  mov w1,wzr
02c70a30  mov x2,xzr
02c70a34  movk w8,#0x6666, LSL #16
02c70a38  smull x8,w21,w8
02c70a3c  lsr x9,x8,#0x20
02c70a40  lsr x8,x8,#0x3f
02c70a44  add w22,w8,w9, ASR #0x1
02c70a48  bl 0x057dff3c
02c70a4c  ldr x23,[x19, #0x30]
02c70a50  mov w0,w22
02c70a54  mov x1,xzr
02c70a58  bl 0x02c5b234
02c70a5c  cbz x23,0x02c70ac4
02c70a60  ldr x8,[x23]
02c70a64  mov x0,x23
02c70a68  ldr x9,[x8, #0x2a8]
02c70a6c  ldr x1,[x8, #0x2b0]
02c70a70  blr x9
02c70a74  ldr x8,[x19, #0x40]
02c70a78  cbz x8,0x02c70ac4
02c70a7c  adrp x23,0x5e59000
02c70a80  mov x25,xzr
02c70a84  ldr x23,[x23, #0x1c0]
02c70a88  ldr w9,[x8, #0x18]
02c70a8c  cmp w25,w9
02c70a90  b.ge 0x02c70ac8
02c70a94  cmp w25,w9
02c70a98  b.cs 0x02c70c84
02c70a9c  add x8,x8,x25, LSL #0x3
02c70aa0  ldr x0,[x8, #0x20]
02c70aa4  cbz x0,0x02c70ac4
02c70aa8  cmp w22,w25
02c70aac  mov x2,xzr
02c70ab0  cset w1,eq
02c70ab4  bl 0x057dff3c
02c70ab8  ldr x8,[x19, #0x40]
02c70abc  add x25,x25,#0x1
02c70ac0  cbnz x8,0x02c70a88
02c70ac4  bl 0x029f5cfc
02c70ac8  ldr x22,[x19, #0x48]
02c70acc  mov w0,w21
02c70ad0  mov x1,xzr
02c70ad4  bl 0x02c5b2ac
02c70ad8  cbz x22,0x02c70ac4
02c70adc  ldr x8,[x22]
02c70ae0  mov x1,x0
02c70ae4  mov x0,x22
02c70ae8  ldr x9,[x8, #0x558]
02c70aec  ldr x2,[x8, #0x560]
02c70af0  blr x9
02c70af4  ldr x8,[x24]
02c70af8  ldr x8,[x8, #0xb8]
02c70afc  ldr x0,[x8]
02c70b00  cbz x0,0x02c70ac4
02c70b04  mov w1,w20
02c70b08  mov x2,xzr
02c70b0c  bl 0x02c68408
02c70b10  mov w8,w0
02c70b14  ldr x0,[x23]
02c70b18  ldr x21,[x19, #0x58]
02c70b1c  and w8,w8,#0x1
02c70b20  ldr w9,[x0, #0xe4]
02c70b24  strb w8,[x19, #0x70]
02c70b28  cbnz w9,0x02c70b30
02c70b2c  bl 0x029f5bd0
02c70b30  mov x0,x21
02c70b34  mov x1,xzr
02c70b38  mov x2,xzr
02c70b3c  bl 0x057dfa70
02c70b40  tbz w0,#0x0,0x02c70b58
02c70b44  ldr x0,[x19, #0x58]
02c70b48  cbz x0,0x02c70ac4
02c70b4c  ldrb w1,[x19, #0x70]
02c70b50  mov x2,xzr
02c70b54  bl 0x057dff3c
02c70b58  ldrb w8,[x19, #0x70]
02c70b5c  cbz w8,0x02c70b68
02c70b60  mov x0,x19
02c70b64  bl 0x02c707e4
02c70b68  ldr x8,[x24]
02c70b6c  ldr x8,[x8, #0xb8]
02c70b70  ldr x0,[x8]
02c70b74  cbz x0,0x02c70ac4
02c70b78  mov w1,w20
02c70b7c  mov x2,xzr
02c70b80  bl 0x02c67eec
02c70b84  mov w8,w0
02c70b88  ldr x0,[x23]
02c70b8c  ldr x20,[x19, #0x50]
02c70b90  and w8,w8,#0x1
02c70b94  ldr w9,[x0, #0xe4]
02c70b98  strb w8,[x19, #0x78]
02c70b9c  cbnz w9,0x02c70ba4
02c70ba0  bl 0x029f5bd0
02c70ba4  mov x0,x20
02c70ba8  mov x1,xzr
02c70bac  mov x2,xzr
02c70bb0  bl 0x057dfa70
02c70bb4  tbz w0,#0x0,0x02c70bcc
02c70bb8  ldr x0,[x19, #0x50]
02c70bbc  cbz x0,0x02c70ac4
02c70bc0  ldrb w1,[x19, #0x78]
02c70bc4  mov x2,xzr
02c70bc8  bl 0x057dff3c
02c70bcc  mov x0,x19
02c70bd0  bl 0x02c70c88
02c70bd4  mov x0,x19
02c70bd8  bl 0x02c70d14
02c70bdc  mov x0,x19
02c70be0  mov x1,xzr
02c70be4  strh wzr,[x19, #0xb8]
02c70be8  str xzr,[x0, #0xc0]!
02c70bec  bl 0x029f59f4
02c70bf0  mov x0,x19
02c70bf4  mov x1,xzr
02c70bf8  strb wzr,[x19, #0xc8]
02c70bfc  str xzr,[x0, #0xd0]!
02c70c00  bl 0x029f59f4
02c70c04  mov x21,x19
02c70c08  mov w8,#0xffffffff
02c70c0c  mov x1,xzr
02c70c10  str xzr,[x21, #0xe0]!
02c70c14  mov x0,x21
02c70c18  stur w8,[x21, #-0x8]
02c70c1c  bl 0x029f59f4
02c70c20  ldr x0,[x23]
02c70c24  ldur x20,[x21, #-0x38]
02c70c28  strb wzr,[x21, #0x8]
02c70c2c  ldr w8,[x0, #0xe4]
02c70c30  cbnz w8,0x02c70c38
02c70c34  bl 0x029f5bd0
02c70c38  mov x0,x20
02c70c3c  mov x1,xzr
02c70c40  mov x2,xzr
02c70c44  bl 0x057dfa70
02c70c48  tbz w0,#0x0,0x02c70c70
02c70c4c  ldr x0,[x19, #0xa8]
02c70c50  cbz x0,0x02c70ac4
02c70c54  ldp x20,x19,[sp, #0x30]
02c70c58  mov w1,#0x1
02c70c5c  ldp x22,x21,[sp, #0x20]
02c70c60  mov x2,xzr
02c70c64  ldp x24,x23,[sp, #0x10]
02c70c68  ldp x30,x25,[sp], #0x40
02c70c6c  b 0x05a9f1dc
02c70c70  ldp x20,x19,[sp, #0x30]
02c70c74  ldp x22,x21,[sp, #0x20]
02c70c78  ldp x24,x23,[sp, #0x10]
02c70c7c  ldp x30,x25,[sp], #0x40
02c70c80  ret
02c70c84  bl 0x029f5d04
