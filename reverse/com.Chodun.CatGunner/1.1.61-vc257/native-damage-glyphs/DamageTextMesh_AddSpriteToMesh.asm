02b849a0  str x30,[sp, #-0x30]!
02b849a4  stp x22,x21,[sp, #0x10]
02b849a8  stp x20,x19,[sp, #0x20]
02b849ac  ldp w10,w9,[x0, #0x60]
02b849b0  mov x20,x1
02b849b4  mov x19,x0
02b849b8  orr w8,wzr,#0x1010101
02b849bc  str w8,[x0, #0x5c]
02b849c0  cmp w9,w10
02b849c4  b.lt 0x02b849d0
02b849c8  mov x0,x19
02b849cc  bl 0x02b84d2c
02b849d0  mov x0,x19
02b849d4  bl 0x02b85108
02b849d8  str w0,[x19, #0x68]
02b849dc  cbz x20,0x02b84d18
02b849e0  ldr x8,[x20, #0x18]
02b849e4  str w0,[x20, #0x40]
02b849e8  cbz x8,0x02b84d18
02b849ec  ldr w9,[x8, #0x18]
02b849f0  cbz w9,0x02b84d1c
02b849f4  ldr x9,[x19, #0x10]
02b849f8  cbz x9,0x02b84d18
02b849fc  ldr w10,[x9, #0x18]
02b84a00  cmp w0,w10
02b84a04  b.cs 0x02b84d1c
02b84a08  mov w10,#0xc
02b84a0c  ldr d0,[x8, #0x20]
02b84a10  ldr s1,[x8, #0x28]
02b84a14  nop
02b84a18  smaddl x9,w0,w10,x9
02b84a1c  str d0,[x9, #0x20]
02b84a20  str s1,[x9, #0x28]
02b84a24  ldr x8,[x20, #0x18]
02b84a28  cbz x8,0x02b84d18
02b84a2c  ldr w9,[x8, #0x18]
02b84a30  tst w9,#0xfffffffe
02b84a34  b.eq 0x02b84d1c
02b84a38  ldr x9,[x19, #0x10]
02b84a3c  cbz x9,0x02b84d18
02b84a40  ldr w11,[x9, #0x18]
02b84a44  add w10,w0,#0x1
02b84a48  cmp w10,w11
02b84a4c  b.cs 0x02b84d1c
02b84a50  mov w11,#0xc
02b84a54  ldur d0,[x8, #0x2c]
02b84a58  ldr s1,[x8, #0x34]
02b84a5c  nop
02b84a60  smaddl x9,w10,w11,x9
02b84a64  str d0,[x9, #0x20]
02b84a68  str s1,[x9, #0x28]
02b84a6c  ldr x8,[x20, #0x18]
02b84a70  cbz x8,0x02b84d18
02b84a74  ldr w9,[x8, #0x18]
02b84a78  cmp w9,#0x2
02b84a7c  b.ls 0x02b84d1c
02b84a80  ldr x9,[x19, #0x10]
02b84a84  cbz x9,0x02b84d18
02b84a88  ldr w11,[x9, #0x18]
02b84a8c  add w10,w0,#0x2
02b84a90  cmp w10,w11
02b84a94  b.cs 0x02b84d1c
02b84a98  mov w11,#0xc
02b84a9c  ldr d0,[x8, #0x38]
02b84aa0  ldr s1,[x8, #0x40]
02b84aa4  nop
02b84aa8  smaddl x9,w10,w11,x9
02b84aac  str d0,[x9, #0x20]
02b84ab0  str s1,[x9, #0x28]
02b84ab4  ldr x8,[x20, #0x18]
02b84ab8  cbz x8,0x02b84d18
02b84abc  ldr w9,[x8, #0x18]
02b84ac0  tst w9,#0xfffffffc
02b84ac4  b.eq 0x02b84d1c
02b84ac8  ldr x9,[x19, #0x10]
02b84acc  cbz x9,0x02b84d18
02b84ad0  ldr w11,[x9, #0x18]
02b84ad4  add w10,w0,#0x3
02b84ad8  cmp w10,w11
02b84adc  b.cs 0x02b84d1c
02b84ae0  mov w11,#0xc
02b84ae4  ldur d0,[x8, #0x44]
02b84ae8  ldr s1,[x8, #0x4c]
02b84aec  nop
02b84af0  smaddl x9,w10,w11,x9
02b84af4  str d0,[x9, #0x20]
02b84af8  str s1,[x9, #0x28]
02b84afc  ldr x9,[x20, #0x20]
02b84b00  cbz x9,0x02b84d18
02b84b04  ldr w8,[x9, #0x18]
02b84b08  cbz w8,0x02b84d1c
02b84b0c  ldr x10,[x19, #0x18]
02b84b10  cbz x10,0x02b84d18
02b84b14  ldrsw x8,[x19, #0x68]
02b84b18  ldr w11,[x10, #0x18]
02b84b1c  cmp w8,w11
02b84b20  b.cs 0x02b84d1c
02b84b24  ldr d0,[x9, #0x20]
02b84b28  add x9,x10,x8, LSL #0x3
02b84b2c  str d0,[x9, #0x20]
02b84b30  ldr x9,[x20, #0x20]
02b84b34  cbz x9,0x02b84d18
02b84b38  ldr w10,[x9, #0x18]
02b84b3c  tst w10,#0xfffffffe
02b84b40  b.eq 0x02b84d1c
02b84b44  ldr x10,[x19, #0x18]
02b84b48  cbz x10,0x02b84d18
02b84b4c  ldr w12,[x10, #0x18]
02b84b50  add w11,w8,#0x1
02b84b54  cmp w11,w12
02b84b58  b.cs 0x02b84d1c
02b84b5c  ldr d0,[x9, #0x28]
02b84b60  add x9,x10,w11, SXTW  #0x3
02b84b64  str d0,[x9, #0x20]
02b84b68  ldr x9,[x20, #0x20]
02b84b6c  cbz x9,0x02b84d18
02b84b70  ldr w10,[x9, #0x18]
02b84b74  cmp w10,#0x2
02b84b78  b.ls 0x02b84d1c
02b84b7c  ldr x10,[x19, #0x18]
02b84b80  cbz x10,0x02b84d18
02b84b84  ldr w12,[x10, #0x18]
02b84b88  add w11,w8,#0x2
02b84b8c  cmp w11,w12
02b84b90  b.cs 0x02b84d1c
02b84b94  ldr d0,[x9, #0x30]
02b84b98  add x9,x10,w11, SXTW  #0x3
02b84b9c  str d0,[x9, #0x20]
02b84ba0  ldr x9,[x20, #0x20]
02b84ba4  cbz x9,0x02b84d18
02b84ba8  ldr w10,[x9, #0x18]
02b84bac  tst w10,#0xfffffffc
02b84bb0  b.eq 0x02b84d1c
02b84bb4  ldr x10,[x19, #0x18]
02b84bb8  cbz x10,0x02b84d18
02b84bbc  ldr w11,[x10, #0x18]
02b84bc0  add w8,w8,#0x3
02b84bc4  cmp w8,w11
02b84bc8  b.cs 0x02b84d1c
02b84bcc  ldr d0,[x9, #0x38]
02b84bd0  add x8,x10,w8, SXTW  #0x3
02b84bd4  str d0,[x8, #0x20]
02b84bd8  ldr x9,[x20, #0x28]
02b84bdc  cbz x9,0x02b84d18
02b84be0  ldr w8,[x9, #0x18]
02b84be4  cbz w8,0x02b84d1c
02b84be8  ldr x10,[x19, #0x20]
02b84bec  cbz x10,0x02b84d18
02b84bf0  ldrsw x8,[x19, #0x68]
02b84bf4  ldr w11,[x10, #0x18]
02b84bf8  cmp w8,w11
02b84bfc  b.cs 0x02b84d1c
02b84c00  ldr w9,[x9, #0x20]
02b84c04  add x10,x10,x8, LSL #0x2
02b84c08  str w9,[x10, #0x20]
02b84c0c  ldr x9,[x20, #0x28]
02b84c10  cbz x9,0x02b84d18
02b84c14  ldr w10,[x9, #0x18]
02b84c18  tst w10,#0xfffffffe
02b84c1c  b.eq 0x02b84d1c
02b84c20  ldr x10,[x19, #0x20]
02b84c24  cbz x10,0x02b84d18
02b84c28  ldr w12,[x10, #0x18]
02b84c2c  add w11,w8,#0x1
02b84c30  cmp w11,w12
02b84c34  b.cs 0x02b84d1c
02b84c38  ldr w9,[x9, #0x24]
02b84c3c  add x10,x10,w11, SXTW  #0x2
02b84c40  str w9,[x10, #0x20]
02b84c44  ldr x9,[x20, #0x28]
02b84c48  cbz x9,0x02b84d18
02b84c4c  ldr w10,[x9, #0x18]
02b84c50  cmp w10,#0x2
02b84c54  b.ls 0x02b84d1c
02b84c58  ldr x10,[x19, #0x20]
02b84c5c  cbz x10,0x02b84d18
02b84c60  ldr w12,[x10, #0x18]
02b84c64  add w11,w8,#0x2
02b84c68  cmp w11,w12
02b84c6c  b.cs 0x02b84d1c
02b84c70  ldr w9,[x9, #0x28]
02b84c74  add x10,x10,w11, SXTW  #0x2
02b84c78  str w9,[x10, #0x20]
02b84c7c  ldr x9,[x20, #0x28]
02b84c80  cbz x9,0x02b84d18
02b84c84  ldr w10,[x9, #0x18]
02b84c88  tst w10,#0xfffffffc
02b84c8c  b.eq 0x02b84d1c
02b84c90  ldr x10,[x19, #0x20]
02b84c94  cbz x10,0x02b84d18
02b84c98  ldr w11,[x10, #0x18]
02b84c9c  add w8,w8,#0x3
02b84ca0  cmp w8,w11
02b84ca4  b.cs 0x02b84d1c
02b84ca8  ldr w9,[x9, #0x2c]
02b84cac  add x8,x10,w8, SXTW  #0x2
02b84cb0  str w9,[x8, #0x20]
02b84cb4  ldr x21,[x19, #0x30]
02b84cb8  cbz x21,0x02b84d18
02b84cbc  ldr x8,[x21]
02b84cc0  ldr w22,[x19, #0x68]
02b84cc4  mov x0,x20
02b84cc8  ldr x1,[x8, #0x40]
02b84ccc  bl 0x029f5bd4
02b84cd0  cbz x0,0x02b84d20
02b84cd4  asr w8,w22,#0x2
02b84cd8  ldr w9,[x21, #0x18]
02b84cdc  cmp w8,w9
02b84ce0  b.cs 0x02b84d1c
02b84ce4  add x0,x21,w8, SXTW  #0x3
02b84ce8  mov x1,x20
02b84cec  str x20,[x0, #0x20]!
02b84cf0  bl 0x029f59f4
02b84cf4  adrp x8,0x116f000
02b84cf8  ldur d0,[x19, #0x64]
02b84cfc  ldr d1,[x8, #0xc00]
02b84d00  ldp x22,x21,[sp, #0x10]
02b84d04  add v0.2S,v0.2S,v1.2S
02b84d08  stur d0,[x19, #0x64]
02b84d0c  ldp x20,x19,[sp, #0x20]
02b84d10  ldr x30,[sp], #0x30
02b84d14  ret
02b84d18  bl 0x029f5cfc
02b84d1c  bl 0x029f5d04
02b84d20  bl 0x029f5d20
02b84d24  mov x1,xzr
02b84d28  bl 0x029f5bc0
