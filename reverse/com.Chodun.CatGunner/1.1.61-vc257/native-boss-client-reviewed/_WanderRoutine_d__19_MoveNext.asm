02c45a7c  str d8,[sp, #-0x40]!
02c45a80  stp x30,x23,[sp, #0x10]
02c45a84  stp x22,x21,[sp, #0x20]
02c45a88  stp x20,x19,[sp, #0x30]
02c45a8c  adrp x20,0x625c000
02c45a90  mov x19,x0
02c45a94  ldrb w8,[x20, #0xd8]
02c45a98  tbnz w8,#0x0,0x02c45abc
02c45a9c  adrp x0,0x5e5d000
02c45aa0  ldr x0,[x0, #0x338]
02c45aa4  bl 0x029f5a50
02c45aa8  adrp x0,0x5e61000
02c45aac  ldr x0,[x0, #0x878]
02c45ab0  bl 0x029f5a50
02c45ab4  mov w8,#0x1
02c45ab8  strb w8,[x20, #0xd8]
02c45abc  ldr w8,[x19, #0x10]
02c45ac0  adrp x22,0x5e5d000
02c45ac4  mov w0,wzr
02c45ac8  ldr x22,[x22, #0x338]
02c45acc  ldr x20,[x19, #0x20]
02c45ad0  cmp w8,#0x2
02c45ad4  b.gt 0x02c45ae8
02c45ad8  b.cs 0x02c45b08
02c45adc  mov w8,#0xffffffff
02c45ae0  str w8,[x19, #0x10]
02c45ae4  b 0x02c45c04
02c45ae8  cmp w8,#0x3
02c45aec  b.eq 0x02c45b88
02c45af0  cmp w8,#0x4
02c45af4  b.ne 0x02c45d04
02c45af8  ldp s0,s1,[x19, #0x28]
02c45afc  mov w8,#0xffffffff
02c45b00  str w8,[x19, #0x10]
02c45b04  b 0x02c45b34
02c45b08  cmp w8,#0x2
02c45b0c  b.ne 0x02c45d04
02c45b10  mov w8,#0xffffffff
02c45b14  str w8,[x19, #0x10]
02c45b18  cbz x20,0x02c45d18
02c45b1c  ldp s0,s1,[x20, #0x60]
02c45b20  mov x0,xzr
02c45b24  bl 0x057d55d4
02c45b28  movi d1,#0x0
02c45b2c  str s0,[x19, #0x28]
02c45b30  str wzr,[x19, #0x2c]
02c45b34  fcmp s1,s0
02c45b38  b.pl 0x02c45c04
02c45b3c  ldr x0,[x22]
02c45b40  ldr w8,[x0, #0xe4]
02c45b44  cbnz w8,0x02c45b50
02c45b48  bl 0x029f5bd0
02c45b4c  ldr x0,[x22]
02c45b50  ldr x8,[x0, #0xb8]
02c45b54  ldrb w8,[x8]
02c45b58  cbz w8,0x02c45b94
02c45b5c  ldr s8,[x19, #0x2c]
02c45b60  mov x0,xzr
02c45b64  bl 0x057ebabc
02c45b68  fadd s0,s8,s0
02c45b6c  mov x0,x19
02c45b70  mov x1,xzr
02c45b74  str xzr,[x0, #0x18]!
02c45b78  str s0,[x19, #0x2c]
02c45b7c  bl 0x029f59f4
02c45b80  mov w8,#0x4
02c45b84  b 0x02c45cfc
02c45b88  mov w8,#0xffffffff
02c45b8c  str w8,[x19, #0x10]
02c45b90  b 0x02c45be4
02c45b94  cbz x20,0x02c45d18
02c45b98  adrp x23,0x625b000
02c45b9c  ldr x21,[x20, #0x40]
02c45ba0  ldrb w8,[x23, #0x26f]
02c45ba4  cbnz w8,0x02c45bbc
02c45ba8  adrp x0,0x5e58000
02c45bac  ldr x0,[x0, #0xbf8]
02c45bb0  bl 0x029f5a50
02c45bb4  mov w8,#0x1
02c45bb8  strb w8,[x23, #0x26f]
02c45bbc  cbz x21,0x02c45d18
02c45bc0  adrp x8,0x5e58000
02c45bc4  mov x0,x21
02c45bc8  mov x1,xzr
02c45bcc  ldr x8,[x8, #0xbf8]
02c45bd0  ldr x8,[x8]
02c45bd4  ldr x8,[x8, #0xb8]
02c45bd8  ldp s1,s2,[x8, #0x4]
02c45bdc  ldr s0,[x8]
02c45be0  bl 0x0586b344
02c45be4  ldr x0,[x22]
02c45be8  ldr w8,[x0, #0xe4]
02c45bec  cbnz w8,0x02c45bf8
02c45bf0  bl 0x029f5bd0
02c45bf4  ldr x0,[x22]
02c45bf8  ldr x8,[x0, #0xb8]
02c45bfc  ldrb w8,[x8]
02c45c00  cbz w8,0x02c45ce8
02c45c04  ldr x0,[x22]
02c45c08  ldr w8,[x0, #0xe4]
02c45c0c  cbnz w8,0x02c45c18
02c45c10  bl 0x029f5bd0
02c45c14  ldr x0,[x22]
02c45c18  ldr x8,[x0, #0xb8]
02c45c1c  ldrb w8,[x8]
02c45c20  cbz w8,0x02c45c60
02c45c24  cbz x20,0x02c45d18
02c45c28  mov x0,x20
02c45c2c  bl 0x02c45170
02c45c30  mov x0,x20
02c45c34  bl 0x02c450b8
02c45c38  mov x1,x0
02c45c3c  mov x0,x20
02c45c40  mov x2,xzr
02c45c44  bl 0x057e2120
02c45c48  mov x1,x0
02c45c4c  mov x0,x19
02c45c50  str x1,[x0, #0x18]!
02c45c54  bl 0x029f59f4
02c45c58  mov w8,#0x2
02c45c5c  b 0x02c45cfc
02c45c60  cbz x20,0x02c45d18
02c45c64  adrp x22,0x625b000
02c45c68  ldr x21,[x20, #0x40]
02c45c6c  ldrb w8,[x22, #0x26f]
02c45c70  cbnz w8,0x02c45c88
02c45c74  adrp x0,0x5e58000
02c45c78  ldr x0,[x0, #0xbf8]
02c45c7c  bl 0x029f5a50
02c45c80  mov w8,#0x1
02c45c84  strb w8,[x22, #0x26f]
02c45c88  cbz x21,0x02c45d18
02c45c8c  adrp x8,0x5e58000
02c45c90  mov x0,x21
02c45c94  mov x1,xzr
02c45c98  ldr x8,[x8, #0xbf8]
02c45c9c  ldr x8,[x8]
02c45ca0  ldr x8,[x8, #0xb8]
02c45ca4  ldp s1,s2,[x8, #0x4]
02c45ca8  ldr s0,[x8]
02c45cac  bl 0x0586b344
02c45cb0  ldr x0,[x20, #0x38]
02c45cb4  cbz x0,0x02c45d18
02c45cb8  adrp x8,0x5e61000
02c45cbc  mov w2,wzr
02c45cc0  mov x3,xzr
02c45cc4  ldr x8,[x8, #0x878]
02c45cc8  ldr x1,[x8]
02c45ccc  bl 0x05784a20
02c45cd0  mov x0,x19
02c45cd4  mov x1,xzr
02c45cd8  str xzr,[x0, #0x18]!
02c45cdc  bl 0x029f59f4
02c45ce0  mov w8,#0x1
02c45ce4  b 0x02c45cfc
02c45ce8  mov x0,x19
02c45cec  mov x1,xzr
02c45cf0  str xzr,[x0, #0x18]!
02c45cf4  bl 0x029f59f4
02c45cf8  mov w8,#0x3
02c45cfc  mov w0,#0x1
02c45d00  str w8,[x19, #0x10]
02c45d04  ldp x20,x19,[sp, #0x30]
02c45d08  ldp x22,x21,[sp, #0x20]
02c45d0c  ldp x30,x23,[sp, #0x10]
02c45d10  ldr d8,[sp], #0x40
02c45d14  ret
02c45d18  bl 0x029f5cfc
