02c72ab8  sub sp,sp,#0x40
02c72abc  str x30,[sp, #0x10]
02c72ac0  stp x22,x21,[sp, #0x20]
02c72ac4  stp x20,x19,[sp, #0x30]
02c72ac8  adrp x21,0x625c000
02c72acc  mov x20,x1
02c72ad0  mov x19,x0
02c72ad4  ldrb w8,[x21, #0x2d3]
02c72ad8  tbnz w8,#0x0,0x02c72b2c
02c72adc  adrp x0,0x5e58000
02c72ae0  ldr x0,[x0, #0xf08]
02c72ae4  bl 0x029f5a50
02c72ae8  adrp x0,0x5e63000
02c72aec  ldr x0,[x0, #0xaa8]
02c72af0  bl 0x029f5a50
02c72af4  adrp x0,0x5e5d000
02c72af8  ldr x0,[x0, #0xd40]
02c72afc  bl 0x029f5a50
02c72b00  adrp x0,0x5e59000
02c72b04  ldr x0,[x0, #0x1c0]
02c72b08  bl 0x029f5a50
02c72b0c  adrp x0,0x5e63000
02c72b10  ldr x0,[x0, #0xbe8]
02c72b14  bl 0x029f5a50
02c72b18  adrp x0,0x5e63000
02c72b1c  ldr x0,[x0, #0xbf0]
02c72b20  bl 0x029f5a50
02c72b24  mov w8,#0x1
02c72b28  strb w8,[x21, #0x2d3]
02c72b2c  ldrb w8,[x19, #0xb8]
02c72b30  str xzr,[sp, #0x18]
02c72b34  str xzr,[sp, #0x8]
02c72b38  cbz w8,0x02c72eb4
02c72b3c  ldr x0,[x19, #0xa8]
02c72b40  strb wzr,[x19, #0xb8]
02c72b44  cbz x0,0x02c72ec8
02c72b48  adrp x22,0x5e59000
02c72b4c  mov w1,#0x1
02c72b50  mov x2,xzr
02c72b54  ldr x22,[x22, #0x1c0]
02c72b58  bl 0x05a9f1dc
02c72b5c  bl 0x02c711d0
02c72b60  bl 0x02c71368
02c72b64  mov x0,x19
02c72b68  bl 0x02c70f1c
02c72b6c  mov x0,x19
02c72b70  mov w1,wzr
02c72b74  bl 0x02c70fb0
02c72b78  add x2,sp,#0x18
02c72b7c  add x3,sp,#0x8
02c72b80  mov x0,x19
02c72b84  mov x1,x20
02c72b88  bl 0x02c723ec
02c72b8c  ldr x0,[x22]
02c72b90  ldr x20,[sp, #0x18]
02c72b94  ldr w8,[x0, #0xe4]
02c72b98  cbnz w8,0x02c72ba0
02c72b9c  bl 0x029f5bd0
02c72ba0  mov x0,x20
02c72ba4  mov x1,xzr
02c72ba8  mov x2,xzr
02c72bac  bl 0x057dfa70
02c72bb0  tbz w0,#0x0,0x02c72c08
02c72bb4  mov x0,x19
02c72bb8  bl 0x02c72ecc
02c72bbc  adrp x8,0x5e63000
02c72bc0  ldr x8,[x8, #0xaa8]
02c72bc4  ldr x8,[x8]
02c72bc8  ldr x8,[x8, #0xb8]
02c72bcc  ldr x0,[x8]
02c72bd0  cbz x0,0x02c72ec8
02c72bd4  ldr x2,[sp, #0x18]
02c72bd8  mov x1,x19
02c72bdc  bl 0x02c72fc0
02c72be0  mov x0,x19
02c72be4  mov x1,xzr
02c72be8  str xzr,[x0, #0xc0]!
02c72bec  bl 0x029f59f4
02c72bf0  str xzr,[x19, #0xd0]!
02c72bf4  mov x0,x19
02c72bf8  mov x1,xzr
02c72bfc  sturb wzr,[x19, #-0x8]
02c72c00  bl 0x029f59f4
02c72c04  b 0x02c72eb4
02c72c08  ldr x0,[x22]
02c72c0c  ldr x20,[sp, #0x8]
02c72c10  ldr w8,[x0, #0xe4]
02c72c14  cbnz w8,0x02c72c1c
02c72c18  bl 0x029f5bd0
02c72c1c  mov x0,x20
02c72c20  mov x1,xzr
02c72c24  mov x2,xzr
02c72c28  bl 0x057dfa70
02c72c2c  tbz w0,#0x0,0x02c72c70
02c72c30  mov x0,x19
02c72c34  bl 0x02c72ecc
02c72c38  mov x0,x19
02c72c3c  mov x1,xzr
02c72c40  str xzr,[x0, #0xc0]!
02c72c44  bl 0x029f59f4
02c72c48  mov x0,x19
02c72c4c  mov x1,xzr
02c72c50  strb wzr,[x19, #0xc8]
02c72c54  str xzr,[x0, #0xd0]!
02c72c58  bl 0x029f59f4
02c72c5c  mov w8,#0xffffffff
02c72c60  mov x0,x19
02c72c64  str w8,[x19, #0xd8]
02c72c68  bl 0x02c73358
02c72c6c  b 0x02c72eb4
02c72c70  ldr x0,[x22]
02c72c74  mov x21,x19
02c72c78  ldr x20,[x21, #0xc0]!
02c72c7c  ldr w8,[x0, #0xe4]
02c72c80  cbnz w8,0x02c72c88
02c72c84  bl 0x029f5bd0
02c72c88  mov x0,x20
02c72c8c  mov x1,xzr
02c72c90  mov x2,xzr
02c72c94  bl 0x057dfa70
02c72c98  tbz w0,#0x0,0x02c72d04
02c72c9c  ldr x20,[x19, #0xc0]
02c72ca0  mov x0,x21
02c72ca4  mov x1,xzr
02c72ca8  str xzr,[x19, #0xc0]
02c72cac  bl 0x029f59f4
02c72cb0  mov x0,x19
02c72cb4  bl 0x02c72ecc
02c72cb8  adrp x8,0x5e5d000
02c72cbc  ldr x8,[x8, #0xd40]
02c72cc0  ldr x8,[x8]
02c72cc4  ldr x8,[x8, #0xb8]
02c72cc8  ldr x9,[x8]
02c72ccc  cbz x9,0x02c72ec8
02c72cd0  ldr w8,[x19, #0x90]
02c72cd4  ldr x22,[x9, #0x40]
02c72cd8  tbnz w8,#0x1f,0x02c72d38
02c72cdc  cbz x22,0x02c72ec8
02c72ce0  ldr w9,[x22, #0x18]
02c72ce4  cmp w8,w9
02c72ce8  b.ge 0x02c72d38
02c72cec  add x8,x22,x8, LSL #0x2
02c72cf0  ldr w9,[x19, #0x8c]
02c72cf4  ldr w8,[x8, #0x20]
02c72cf8  cmp w8,w9
02c72cfc  cset w21,eq
02c72d00  b 0x02c72d3c
02c72d04  ldr x0,[x22]
02c72d08  ldr x20,[x19, #0xd0]
02c72d0c  ldr w8,[x0, #0xe4]
02c72d10  cbnz w8,0x02c72d18
02c72d14  bl 0x029f5bd0
02c72d18  mov x0,x20
02c72d1c  mov x1,xzr
02c72d20  mov x2,xzr
02c72d24  bl 0x057dfa70
02c72d28  tbz w0,#0x0,0x02c72dc0
02c72d2c  mov x0,x19
02c72d30  bl 0x02c73fc4
02c72d34  b 0x02c72e9c
02c72d38  mov w21,wzr
02c72d3c  cbz x20,0x02c72ec8
02c72d40  mov x0,x20
02c72d44  mov x1,xzr
02c72d48  bl 0x057dc1c8
02c72d4c  cbz x0,0x02c72ec8
02c72d50  mov x1,xzr
02c72d54  bl 0x057e0000
02c72d58  tbz w0,#0x0,0x02c72d8c
02c72d5c  ldr w8,[x20, #0x90]
02c72d60  tbnz w8,#0x1f,0x02c72d8c
02c72d64  cbz x22,0x02c72ec8
02c72d68  ldr w9,[x22, #0x18]
02c72d6c  cmp w8,w9
02c72d70  b.ge 0x02c72d8c
02c72d74  add x8,x22,x8, LSL #0x2
02c72d78  ldr w9,[x20, #0x8c]
02c72d7c  ldr w8,[x8, #0x20]
02c72d80  cmp w8,w9
02c72d84  cset w8,eq
02c72d88  b 0x02c72d90
02c72d8c  mov w8,wzr
02c72d90  tst w8,w21
02c72d94  b.eq 0x02c72e40
02c72d98  adrp x8,0x5e63000
02c72d9c  ldr x8,[x8, #0xaa8]
02c72da0  ldr x8,[x8]
02c72da4  ldr x8,[x8, #0xb8]
02c72da8  ldr x0,[x8]
02c72dac  cbz x0,0x02c72ec8
02c72db0  mov x1,x19
02c72db4  mov x2,x20
02c72db8  bl 0x02c73494
02c72dbc  b 0x02c72e9c
02c72dc0  ldrb w8,[x19, #0xc8]
02c72dc4  cbz w8,0x02c72e8c
02c72dc8  mov x0,x19
02c72dcc  strb wzr,[x19, #0xc8]
02c72dd0  bl 0x02c72ecc
02c72dd4  adrp x8,0x5e63000
02c72dd8  mov x1,xzr
02c72ddc  ldr x8,[x8, #0xbf0]
02c72de0  ldr x0,[x8]
02c72de4  bl 0x02c68dbc
02c72de8  mov x1,xzr
02c72dec  bl 0x02c1dd54
02c72df0  adrp x20,0x625b000
02c72df4  ldrb w8,[x20, #0xa57]
02c72df8  cbnz w8,0x02c72e10
02c72dfc  adrp x0,0x5e5d000
02c72e00  ldr x0,[x0, #0xd70]
02c72e04  bl 0x029f5a50
02c72e08  mov w8,#0x1
02c72e0c  strb w8,[x20, #0xa57]
02c72e10  adrp x8,0x5e5d000
02c72e14  ldr x8,[x8, #0xd70]
02c72e18  ldr x8,[x8]
02c72e1c  ldr x8,[x8, #0xb8]
02c72e20  ldr x0,[x8]
02c72e24  cbz x0,0x02c72ec8
02c72e28  fmov s0,0x3f800000
02c72e2c  mov w1,#0x5
02c72e30  mov x2,xzr
02c72e34  mov x3,xzr
02c72e38  bl 0x02c1f10c
02c72e3c  b 0x02c72e6c
02c72e40  adrp x8,0x5e58000
02c72e44  ldr x8,[x8, #0xf08]
02c72e48  ldr x0,[x8]
02c72e4c  ldr w8,[x0, #0xe4]
02c72e50  cbnz w8,0x02c72e58
02c72e54  bl 0x029f5bd0
02c72e58  adrp x8,0x5e63000
02c72e5c  mov x1,xzr
02c72e60  ldr x8,[x8, #0xbe8]
02c72e64  ldr x0,[x8]
02c72e68  bl 0x0579a8d0
02c72e6c  adrp x8,0x5e63000
02c72e70  ldr x8,[x8, #0xaa8]
02c72e74  ldr x8,[x8]
02c72e78  ldr x8,[x8, #0xb8]
02c72e7c  ldr x0,[x8]
02c72e80  cbz x0,0x02c72ec8
02c72e84  bl 0x02c73c20
02c72e88  b 0x02c72e9c
02c72e8c  mov x0,x19
02c72e90  bl 0x02c72ecc
02c72e94  mov x0,x19
02c72e98  bl 0x02c7421c
02c72e9c  str xzr,[x19, #0xd0]!
02c72ea0  mov x0,x19
02c72ea4  mov x1,xzr
02c72ea8  bl 0x029f59f4
02c72eac  mov w8,#0xffffffff
02c72eb0  str w8,[x19, #0x8]
02c72eb4  ldp x20,x19,[sp, #0x30]
02c72eb8  ldr x30,[sp, #0x10]
02c72ebc  ldp x22,x21,[sp, #0x20]
02c72ec0  add sp,sp,#0x40
02c72ec4  ret
02c72ec8  bl 0x029f5cfc
