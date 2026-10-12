02c35a90  str x30,[sp, #-0x40]!
02c35a94  stp x24,x23,[sp, #0x10]
02c35a98  stp x22,x21,[sp, #0x20]
02c35a9c  stp x20,x19,[sp, #0x30]
02c35aa0  adrp x23,0x625c000
02c35aa4  mov w20,w5
02c35aa8  mov w21,w4
02c35aac  ldrb w8,[x23, #0x6a]
02c35ab0  mov w22,w1
02c35ab4  mov x19,x0
02c35ab8  stp w3,w2,[sp, #0x8]
02c35abc  tbnz w8,#0x0,0x02c35ad4
02c35ac0  adrp x0,0x5e5d000
02c35ac4  ldr x0,[x0, #0xd28]
02c35ac8  bl 0x029f5a50
02c35acc  mov w8,#0x1
02c35ad0  strb w8,[x23, #0x6a]
02c35ad4  ldr x0,[x19, #0x20]
02c35ad8  cbz x0,0x02c35cb8
02c35adc  mov w1,wzr
02c35ae0  mov x2,xzr
02c35ae4  bl 0x057dff3c
02c35ae8  ldr x0,[x19, #0x28]
02c35aec  cbz x0,0x02c35cb8
02c35af0  mov w1,wzr
02c35af4  mov x2,xzr
02c35af8  bl 0x057dff3c
02c35afc  ldr x0,[x19, #0x30]
02c35b00  cbz x0,0x02c35cb8
02c35b04  mov w1,wzr
02c35b08  mov x2,xzr
02c35b0c  bl 0x057dff3c
02c35b10  ldr x0,[x19, #0x38]
02c35b14  cbz x0,0x02c35cb8
02c35b18  mov w1,wzr
02c35b1c  mov x2,xzr
02c35b20  bl 0x057dff3c
02c35b24  ldr x0,[x19, #0x40]
02c35b28  cbz x0,0x02c35cb8
02c35b2c  mov w1,wzr
02c35b30  mov x2,xzr
02c35b34  bl 0x057dff3c
02c35b38  ldr x23,[x19, #0x60]
02c35b3c  add x0,sp,#0x8
02c35b40  mov x1,xzr
02c35b44  bl 0x0484e6a4
02c35b48  cbz x23,0x02c35cb8
02c35b4c  ldr x8,[x23]
02c35b50  mov x1,x0
02c35b54  mov x0,x23
02c35b58  ldr x9,[x8, #0x558]
02c35b5c  ldr x2,[x8, #0x560]
02c35b60  blr x9
02c35b64  ldr x23,[x19, #0x68]
02c35b68  add x0,sp,#0xc
02c35b6c  mov x1,xzr
02c35b70  bl 0x0484e6a4
02c35b74  cbz x23,0x02c35cb8
02c35b78  ldr x8,[x23]
02c35b7c  adrp x24,0x5e5d000
02c35b80  mov x1,x0
02c35b84  ldr x24,[x24, #0xd28]
02c35b88  mov x0,x23
02c35b8c  ldr x9,[x8, #0x558]
02c35b90  ldr x2,[x8, #0x560]
02c35b94  blr x9
02c35b98  ldr x0,[x24]
02c35b9c  ldr x23,[x19, #0x70]
02c35ba0  ldr w8,[x0, #0xe4]
02c35ba4  cbnz w8,0x02c35bac
02c35ba8  bl 0x029f5bd0
02c35bac  mov w0,w22
02c35bb0  mov x1,xzr
02c35bb4  bl 0x02c2ce84
02c35bb8  cbz x23,0x02c35cb8
02c35bbc  mov x1,x0
02c35bc0  mov x0,x23
02c35bc4  mov x2,xzr
02c35bc8  bl 0x058d34cc
02c35bcc  ldr x8,[x19, #0x80]
02c35bd0  cbz x8,0x02c35cb8
02c35bd4  ldr w9,[x8, #0x18]
02c35bd8  cmp w9,w22
02c35bdc  b.ls 0x02c35cbc
02c35be0  ldr x0,[x19, #0x78]
02c35be4  cbz x0,0x02c35cb8
02c35be8  add x8,x8,w22, SXTW  #0x4
02c35bec  ldr x9,[x0]
02c35bf0  ldp s2,s3,[x8, #0x28]
02c35bf4  ldr x1,[x9, #0x2b0]
02c35bf8  ldp s0,s1,[x8, #0x20]
02c35bfc  ldr x8,[x9, #0x2a8]
02c35c00  blr x8
02c35c04  ldr x22,[x19, #0x48]
02c35c08  mov w1,w21
02c35c0c  bl 0x02c3621c
02c35c10  cbz x22,0x02c35cb8
02c35c14  scvtf s0,w20
02c35c18  scvtf s1,w0
02c35c1c  mov x0,x22
02c35c20  mov x1,xzr
02c35c24  fdiv s0,s0,s1
02c35c28  bl 0x02c28290
02c35c2c  mov x0,x19
02c35c30  mov w1,w21
02c35c34  mov w2,w20
02c35c38  bl 0x02c362b0
02c35c3c  mov x0,x19
02c35c40  mov x1,xzr
02c35c44  bl 0x057dc1c8
02c35c48  cbz x0,0x02c35cb8
02c35c4c  mov w1,#0x1
02c35c50  mov x2,xzr
02c35c54  bl 0x057dff3c
02c35c58  mov x22,x19
02c35c5c  ldr x1,[x22, #0x98]!
02c35c60  cbz x1,0x02c35c70
02c35c64  mov x0,x19
02c35c68  mov x2,xzr
02c35c6c  bl 0x057e237c
02c35c70  ldr w3,[sp, #0x8]
02c35c74  mov x0,x19
02c35c78  mov w1,w21
02c35c7c  mov w2,w20
02c35c80  bl 0x02c3644c
02c35c84  mov x1,x0
02c35c88  mov x0,x19
02c35c8c  mov x2,xzr
02c35c90  bl 0x057e2120
02c35c94  mov x1,x0
02c35c98  str x0,[x19, #0x98]
02c35c9c  mov x0,x22
02c35ca0  bl 0x029f59f4
02c35ca4  ldp x20,x19,[sp, #0x30]
02c35ca8  ldp x22,x21,[sp, #0x20]
02c35cac  ldp x24,x23,[sp, #0x10]
02c35cb0  ldr x30,[sp], #0x40
02c35cb4  ret
02c35cb8  bl 0x029f5cfc
02c35cbc  bl 0x029f5d04
