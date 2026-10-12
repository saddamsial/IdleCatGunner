02c63a38  sub sp,sp,#0xa0
02c63a3c  str x30,[sp, #0x40]
02c63a40  stp x28,x27,[sp, #0x50]
02c63a44  stp x26,x25,[sp, #0x60]
02c63a48  stp x24,x23,[sp, #0x70]
02c63a4c  stp x22,x21,[sp, #0x80]
02c63a50  stp x20,x19,[sp, #0x90]
02c63a54  adrp x21,0x625c000
02c63a58  adrp x19,0x5e5d000
02c63a5c  mov x20,x0
02c63a60  ldrb w8,[x21, #0x23f]
02c63a64  ldr x19,[x19, #0xd38]
02c63a68  tbnz w8,#0x0,0x02c63af8
02c63a6c  adrp x0,0x5e62000
02c63a70  ldr x0,[x0, #0x6b0]
02c63a74  bl 0x029f5a50
02c63a78  adrp x0,0x5e63000
02c63a7c  ldr x0,[x0, #0x8f0]
02c63a80  bl 0x029f5a50
02c63a84  adrp x0,0x5e63000
02c63a88  ldr x0,[x0, #0x8f8]
02c63a8c  bl 0x029f5a50
02c63a90  adrp x0,0x5e63000
02c63a94  ldr x0,[x0, #0x900]
02c63a98  bl 0x029f5a50
02c63a9c  adrp x0,0x5e5d000
02c63aa0  ldr x0,[x0, #0xd38]
02c63aa4  bl 0x029f5a50
02c63aa8  adrp x0,0x5e63000
02c63aac  ldr x0,[x0, #0x8c0]
02c63ab0  bl 0x029f5a50
02c63ab4  adrp x0,0x5e63000
02c63ab8  ldr x0,[x0, #0x908]
02c63abc  bl 0x029f5a50
02c63ac0  adrp x0,0x5e63000
02c63ac4  ldr x0,[x0, #0x8b0]
02c63ac8  bl 0x029f5a50
02c63acc  adrp x0,0x5e62000
02c63ad0  ldr x0,[x0, #0xfe8]
02c63ad4  bl 0x029f5a50
02c63ad8  adrp x0,0x5e63000
02c63adc  ldr x0,[x0, #0x128]
02c63ae0  bl 0x029f5a50
02c63ae4  adrp x0,0x5e63000
02c63ae8  ldr x0,[x0, #0x8a8]
02c63aec  bl 0x029f5a50
02c63af0  mov w8,#0x1
02c63af4  strb w8,[x21, #0x23f]
02c63af8  ldr x8,[x19]
02c63afc  stp xzr,xzr,[sp, #0x20]
02c63b00  str xzr,[sp, #0x30]
02c63b04  ldr x8,[x8, #0xb8]
02c63b08  ldr x8,[x8]
02c63b0c  cbz x8,0x02c63bfc
02c63b10  adrp x9,0x5e63000
02c63b14  adrp x21,0x5e63000
02c63b18  ldr x9,[x9, #0x8a8]
02c63b1c  ldr x21,[x21, #0x8b0]
02c63b20  ldr x19,[x8, #0x90]
02c63b24  ldr x0,[x9]
02c63b28  bl 0x029f5cec
02c63b2c  ldr x1,[x21]
02c63b30  mov x21,x0
02c63b34  bl 0x0452c340
02c63b38  ldr x8,[x20, #0x20]
02c63b3c  cbz x8,0x02c63bfc
02c63b40  adrp x27,0x5e63000
02c63b44  adrp x26,0x5e62000
02c63b48  adrp x25,0x5e63000
02c63b4c  adrp x23,0x5e63000
02c63b50  adrp x24,0x5e63000
02c63b54  adrp x22,0x5e63000
02c63b58  ldr x27,[x27, #0x8c0]
02c63b5c  ldr x26,[x26, #0x6b0]
02c63b60  ldr x25,[x25, #0x908]
02c63b64  ldr x23,[x23, #0x8f8]
02c63b68  ldr x24,[x24, #0x128]
02c63b6c  ldr x22,[x22, #0x8f0]
02c63b70  mov w28,wzr
02c63b74  ldr w9,[x8, #0x18]
02c63b78  cmp w28,w9
02c63b7c  b.ge 0x02c63c00
02c63b80  b.cs 0x02c63d08
02c63b84  add x8,x8,w28, SXTW  #0x3
02c63b88  ldr x1,[x8, #0x20]
02c63b8c  cbz x1,0x02c63bfc
02c63b90  ldrb w8,[x1, #0x48]
02c63b94  cbz w8,0x02c63bf0
02c63b98  cbz x21,0x02c63bfc
02c63b9c  ldr w10,[x21, #0x1c]
02c63ba0  ldr x8,[x21, #0x10]
02c63ba4  ldr x9,[x27]
02c63ba8  add w10,w10,#0x1
02c63bac  str w10,[x21, #0x1c]
02c63bb0  cbz x8,0x02c63bfc
02c63bb4  ldrsw x10,[x21, #0x18]
02c63bb8  ldr w11,[x8, #0x18]
02c63bbc  cmp w10,w11
02c63bc0  b.cs 0x02c63bdc
02c63bc4  add x0,x8,x10, LSL #0x3
02c63bc8  add w9,w10,#0x1
02c63bcc  str w9,[x21, #0x18]
02c63bd0  str x1,[x0, #0x20]!
02c63bd4  bl 0x029f59f4
02c63bd8  b 0x02c63bf0
02c63bdc  ldr x8,[x9, #0x20]
02c63be0  mov x0,x21
02c63be4  ldr x8,[x8, #0xc0]
02c63be8  ldr x2,[x8, #0x70]
02c63bec  bl 0x0452cba8
02c63bf0  ldr x8,[x20, #0x20]
02c63bf4  add w28,w28,#0x1
02c63bf8  cbnz x8,0x02c63b74
02c63bfc  bl 0x029f5cfc
02c63c00  cbz x19,0x02c63bfc
02c63c04  ldr w1,[x19, #0x18]
02c63c08  ldr x0,[x26]
02c63c0c  bl 0x029f5b40
02c63c10  cbz x21,0x02c63bfc
02c63c14  ldr x1,[x25]
02c63c18  mov x20,x0
02c63c1c  add x8,sp,#0x8
02c63c20  mov x0,x21
02c63c24  bl 0x0452d690
02c63c28  ldr x8,[sp, #0x18]
02c63c2c  ldur q0,[sp, #0x8]
02c63c30  add x25,x20,#0x20
02c63c34  mov w26,#0xffffffff
02c63c38  mov w27,#0x1
02c63c3c  str x8,[sp, #0x30]
02c63c40  add x8,sp,#0x20
02c63c44  str q0,[sp, #0x20]
02c63c48  stp xzr,x8,[sp, #0x8]
02c63c4c  ldr x1,[x23]
02c63c50  add x0,sp,#0x20
02c63c54  bl 0x03fa4e10
02c63c58  tbz w0,#0x0,0x02c63cd8
02c63c5c  ldr x28,[sp, #0x30]
02c63c60  cbz x28,0x02c63d0c
02c63c64  str w26,[x28, #0x44]
02c63c68  ldr w8,[x19, #0x18]
02c63c6c  cmp w8,#0x1
02c63c70  b.lt 0x02c63c4c
02c63c74  cbz x20,0x02c63d10
02c63c78  mov x21,xzr
02c63c7c  ldr w9,[x20, #0x18]
02c63c80  cmp x21,x9
02c63c84  b.cs 0x02c63d04
02c63c88  ldrb w9,[x25, x21, LSL ]
02c63c8c  cbnz w9,0x02c63cb0
02c63c90  ldr x2,[x24]
02c63c94  mov x0,x19
02c63c98  mov w1,w21
02c63c9c  bl 0x044f7718
02c63ca0  ldr w8,[x28, #0x40]
02c63ca4  cmp w0,w8
02c63ca8  b.eq 0x02c63cc0
02c63cac  ldr w8,[x19, #0x18]
02c63cb0  add x21,x21,#0x1
02c63cb4  cmp x21,w8, SXTW 
02c63cb8  b.lt 0x02c63c7c
02c63cbc  b 0x02c63c4c
02c63cc0  str w21,[x28, #0x44]
02c63cc4  ldr w8,[x20, #0x18]
02c63cc8  cmp w21,w8
02c63ccc  b.cs 0x02c63d14
02c63cd0  strb w27,[x25, x21, LSL ]
02c63cd4  b 0x02c63c4c
02c63cd8  ldr x1,[x22]
02c63cdc  add x0,sp,#0x20
02c63ce0  bl 0x03fa4e0c
02c63ce4  ldp x20,x19,[sp, #0x90]
02c63ce8  ldr x30,[sp, #0x40]
02c63cec  ldp x22,x21,[sp, #0x80]
02c63cf0  ldp x24,x23,[sp, #0x70]
02c63cf4  ldp x26,x25,[sp, #0x60]
02c63cf8  ldp x28,x27,[sp, #0x50]
02c63cfc  add sp,sp,#0xa0
02c63d00  ret
02c63d04  bl 0x029f5d04
02c63d08  bl 0x029f5d04
02c63d0c  bl 0x029f5cfc
02c63d10  bl 0x029f5cfc
02c63d14  bl 0x029f5d04
