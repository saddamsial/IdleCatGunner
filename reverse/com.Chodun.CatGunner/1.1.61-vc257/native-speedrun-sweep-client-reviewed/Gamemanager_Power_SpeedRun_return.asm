02b808d4  stp d15,d14,[sp, #-0xa0]!
02b808d8  stp d13,d12,[sp, #0x10]
02b808dc  stp d11,d10,[sp, #0x20]
02b808e0  stp d9,d8,[sp, #0x30]
02b808e4  stp x29,x30,[sp, #0x40]
02b808e8  stp x28,x27,[sp, #0x50]
02b808ec  stp x26,x25,[sp, #0x60]
02b808f0  stp x24,x23,[sp, #0x70]
02b808f4  stp x22,x21,[sp, #0x80]
02b808f8  stp x20,x19,[sp, #0x90]
02b808fc  sub sp,sp,#0x290
02b80900  adrp x20,0x625b000
02b80904  adrp x21,0x5e5d000
02b80908  adrp x23,0x5e59000
02b8090c  ldrb w9,[x20, #0x8d0]
02b80910  ldr x21,[x21, #0x5b0]
02b80914  ldr x23,[x23, #0x1c0]
02b80918  mov x19,x8
02b8091c  tbnz w9,#0x0,0x02b80940
02b80920  adrp x0,0x5e5d000
02b80924  ldr x0,[x0, #0x5b0]
02b80928  bl 0x029f5a50
02b8092c  adrp x0,0x5e59000
02b80930  ldr x0,[x0, #0x1c0]
02b80934  bl 0x029f5a50
02b80938  mov w8,#0x1
02b8093c  strb w8,[x20, #0x8d0]
02b80940  movi v0.2D,#0x0
02b80944  ldr x8,[x21]
02b80948  ldr x0,[x23]
02b8094c  ldr x8,[x8, #0xb8]
02b80950  ldr w9,[x0, #0xe4]
02b80954  stp q0,q0,[sp, #0x190]
02b80958  stp q0,q0,[sp, #0x1b0]
02b8095c  stp q0,q0,[sp, #0x1d0]
02b80960  stp q0,q0,[sp, #0x1f0]
02b80964  stp q0,q0,[sp, #0x210]
02b80968  stp q0,q0,[sp, #0x230]
02b8096c  stp q0,q0,[sp, #0x250]
02b80970  stp q0,q0,[sp, #0x270]
02b80974  ldr x20,[x8, #0x8]
02b80978  cbnz w9,0x02b80980
02b8097c  bl 0x029f5bd0
02b80980  mov x0,x20
02b80984  mov x1,xzr
02b80988  mov x2,xzr
02b8098c  bl 0x057e14b4
02b80990  tbnz w0,#0x0,0x02b80d24
02b80994  ldr x8,[x21]
02b80998  ldr x8,[x8, #0xb8]
02b8099c  ldr x8,[x8, #0x8]
02b809a0  cbz x8,0x02b80d6c
02b809a4  ldr x24,[x8, #0x20]
02b809a8  cbz x24,0x02b80d24
02b809ac  add x8,sp,#0x170
02b809b0  mov w0,wzr
02b809b4  mov x1,xzr
02b809b8  bl 0x046544b8
02b809bc  ldp q0,q1,[sp, #0x170]
02b809c0  stp q0,q1,[sp, #0x270]
02b809c4  ldr x8,[x24, #0x18]
02b809c8  cmp w8,#0x1
02b809cc  b.lt 0x02b80d0c
02b809d0  adrp x9,0x116c000
02b809d4  fmov d11,-0x4020000000000000
02b809d8  fmov d13,0x3fe0000000000000
02b809dc  fmov d14,0x3ff0000000000000
02b809e0  ldr s10,[x9, #0x268]
02b809e4  mov x25,xzr
02b809e8  and x8,x8,#0xffffffff
02b809ec  add x26,x24,#0x20
02b809f0  mov w27,#0x42c80000
02b809f4  adrp x28,0x625b000
02b809f8  mov w29,#0x64
02b809fc  mov w20,#0x80000000
02b80a00  cmp x25,w8, UXTW 
02b80a04  b.cs 0x02b80d70
02b80a08  ldr x0,[x23]
02b80a0c  ldr x21,[x26, x25, LSL #0x3]
02b80a10  ldr w8,[x0, #0xe4]
02b80a14  cbnz w8,0x02b80a1c
02b80a18  bl 0x029f5bd0
02b80a1c  mov x0,x21
02b80a20  mov x1,xzr
02b80a24  mov x2,xzr
02b80a28  bl 0x057e14b4
02b80a2c  tbnz w0,#0x0,0x02b80cfc
02b80a30  cbz x21,0x02b80d6c
02b80a34  mov x0,x21
02b80a38  mov x1,xzr
02b80a3c  bl 0x057dc1c8
02b80a40  cbz x0,0x02b80d6c
02b80a44  mov x1,xzr
02b80a48  bl 0x057e00b4
02b80a4c  tbz w0,#0x0,0x02b80cfc
02b80a50  mov x0,x21
02b80a54  mov x1,xzr
02b80a58  bl 0x02c39be8
02b80a5c  fcmp s0,s10
02b80a60  b.ls 0x02b80cfc
02b80a64  ldr x8,[x21, #0x48]
02b80a68  cbz x8,0x02b80d6c
02b80a6c  fmov s8,s0
02b80a70  ldr w9,[x8, #0x18]
02b80a74  fmov s15,0x40a00000
02b80a78  cmp w9,#0x3
02b80a7c  b.gt 0x02b80aac
02b80a80  cmp w9,#0x1
02b80a84  b.eq 0x02b80ac8
02b80a88  cmp w9,#0x2
02b80a8c  b.eq 0x02b80ad4
02b80a90  cmp w9,#0x3
02b80a94  b.ne 0x02b80ad0
02b80a98  ldr w8,[x8, #0x44]
02b80a9c  cmp w8,#0x1
02b80aa0  csinc w8,w8,wzr,gt
02b80aa4  scvtf s15,w8
02b80aa8  b 0x02b80ad4
02b80aac  sub w8,w9,#0x4
02b80ab0  cmp w8,#0x2
02b80ab4  b.cc 0x02b80ad4
02b80ab8  cmp w9,#0x6
02b80abc  b.ne 0x02b80ad0
02b80ac0  fmov s15,0x41200000
02b80ac4  b 0x02b80ad4
02b80ac8  fmov s15,0x40e00000
02b80acc  b 0x02b80ad4
02b80ad0  fmov s15,0x3f800000
02b80ad4  ldrb w8,[x28, #0x95a]
02b80ad8  ldr s9,[x21, #0xa0]
02b80adc  cbnz w8,0x02b80af4
02b80ae0  adrp x0,0x5e59000
02b80ae4  ldr x0,[x0]
02b80ae8  bl 0x029f5a50
02b80aec  mov w8,#0x1
02b80af0  strb w8,[x28, #0x95a]
02b80af4  adrp x8,0x5e59000
02b80af8  ldr x8,[x8]
02b80afc  ldr x0,[x8]
02b80b00  ldr w8,[x0, #0xe4]
02b80b04  cbnz w8,0x02b80b0c
02b80b08  bl 0x029f5bd0
02b80b0c  fmov s0,w27
02b80b10  add x0,sp,#0x170
02b80b14  fmul s12,s9,s0
02b80b18  fcvt d9,s12
02b80b1c  fmov d0,d9
02b80b20  bl 0x05afb230
02b80b24  fcmp s12,#0.0
02b80b28  b.ge 0x02b80b48
02b80b2c  fcmp d0,d11
02b80b30  b.ne 0x02b80b68
02b80b34  fmov d1,-0x4010000000000000
02b80b38  ldr d0,[sp, #0x170]
02b80b3c  fcvtzs x8,d0
02b80b40  fadd d1,d0,d1
02b80b44  b 0x02b80b5c
02b80b48  fcmp d0,d13
02b80b4c  b.ne 0x02b80b74
02b80b50  ldr d0,[sp, #0x170]
02b80b54  fcvtzs x8,d0
02b80b58  fadd d1,d0,d14
02b80b5c  tst x8,#0x1
02b80b60  fcsel d0,d0,d1,eq
02b80b64  b 0x02b80b7c
02b80b68  fadd d0,d9,d11
02b80b6c  frintp d0,d0
02b80b70  b 0x02b80b7c
02b80b74  fadd d0,d9,d13
02b80b78  frintm d0,d0
02b80b7c  fcvtzs w8,d0
02b80b80  mov x9,#0x7ff0000000000000
02b80b84  mov x1,xzr
02b80b88  fmov d1,x9
02b80b8c  cmp w8,#0x64
02b80b90  csel w8,w8,w29,lt
02b80b94  fcmp d0,d1
02b80b98  bic w8,w8,w8, ASR #0x1f
02b80b9c  csel w22,wzr,w8,eq
02b80ba0  add x8,sp,#0x170
02b80ba4  sub w0,w29,w22
02b80ba8  bl 0x046544b8
02b80bac  ldp q0,q1,[sp, #0x170]
02b80bb0  add x8,sp,#0x150
02b80bb4  add x0,x21,#0x50
02b80bb8  add x1,sp,#0x230
02b80bbc  mov x2,xzr
02b80bc0  stp q0,q1,[sp, #0x230]
02b80bc4  bl 0x04658538
02b80bc8  ldp q0,q1,[sp, #0x150]
02b80bcc  add x8,sp,#0x130
02b80bd0  mov w0,w22
02b80bd4  mov x1,xzr
02b80bd8  stp q0,q1,[sp, #0x210]
02b80bdc  bl 0x046544b8
02b80be0  ldp q0,q1,[sp, #0x130]
02b80be4  add x8,sp,#0x110
02b80be8  add x0,x21,#0x70
02b80bec  add x1,sp,#0x1f0
02b80bf0  mov x2,xzr
02b80bf4  stp q0,q1,[sp, #0x1f0]
02b80bf8  bl 0x04658538
02b80bfc  ldp q0,q1,[sp, #0x110]
02b80c00  add x8,sp,#0xf0
02b80c04  add x0,sp,#0x210
02b80c08  add x1,sp,#0x1d0
02b80c0c  mov x2,xzr
02b80c10  stp q0,q1,[sp, #0x1d0]
02b80c14  bl 0x04658020
02b80c18  ldp q0,q1,[sp, #0xf0]
02b80c1c  add x8,sp,#0xd0
02b80c20  mov w0,#0x64
02b80c24  mov x1,xzr
02b80c28  stp q0,q1,[sp, #0x1b0]
02b80c2c  bl 0x046544b8
02b80c30  ldp q0,q1,[sp, #0xd0]
02b80c34  add x8,sp,#0xb0
02b80c38  add x0,sp,#0x1b0
02b80c3c  add x1,sp,#0x190
02b80c40  mov x2,xzr
02b80c44  stp q0,q1,[sp, #0x190]
02b80c48  bl 0x046587e8
02b80c4c  fmov s9,w27
02b80c50  mov w9,#0x7f800000
02b80c54  mov x1,xzr
02b80c58  fmov s12,w9
02b80c5c  fmul s0,s15,s9
02b80c60  fcvtzs w8,s0
02b80c64  fcmp s0,s12
02b80c68  ldp q0,q1,[sp, #0xb0]
02b80c6c  csel w0,w20,w8,eq
02b80c70  add x8,sp,#0x90
02b80c74  stp q0,q1,[sp, #0x250]
02b80c78  bl 0x046544b8
02b80c7c  ldp q0,q1,[sp, #0x90]
02b80c80  add x8,sp,#0x70
02b80c84  add x0,sp,#0x250
02b80c88  add x1,sp,#0x230
02b80c8c  mov x2,xzr
02b80c90  stp q0,q1,[sp, #0x230]
02b80c94  bl 0x04658538
02b80c98  fmul s0,s8,s9
02b80c9c  mov x1,xzr
02b80ca0  fcvtzs w8,s0
02b80ca4  fcmp s0,s12
02b80ca8  ldp q0,q1,[sp, #0x70]
02b80cac  csel w0,w20,w8,eq
02b80cb0  add x8,sp,#0x50
02b80cb4  stp q0,q1,[sp, #0x210]
02b80cb8  bl 0x046544b8
02b80cbc  ldp q0,q1,[sp, #0x50]
02b80cc0  add x8,sp,#0x30
02b80cc4  add x0,sp,#0x210
02b80cc8  add x1,sp,#0x1f0
02b80ccc  mov x2,xzr
02b80cd0  stp q0,q1,[sp, #0x1f0]
02b80cd4  bl 0x046587e8
02b80cd8  ldp q0,q1,[sp, #0x30]
02b80cdc  add x8,sp,#0x10
02b80ce0  add x0,sp,#0x270
02b80ce4  add x1,sp,#0x1d0
02b80ce8  mov x2,xzr
02b80cec  stp q0,q1,[sp, #0x1d0]
02b80cf0  bl 0x04658020
02b80cf4  ldp q0,q1,[sp, #0x10]
02b80cf8  stp q0,q1,[sp, #0x270]
02b80cfc  ldr w8,[x24, #0x18]
02b80d00  add x25,x25,#0x1
02b80d04  cmp x25,w8, SXTW 
02b80d08  b.lt 0x02b80a00
02b80d0c  add x8,sp,#0x170
02b80d10  add x0,sp,#0x270
02b80d14  mov w1,#0x5
02b80d18  mov x2,xzr
02b80d1c  bl 0x04658464
02b80d20  b 0x02b80d34
02b80d24  add x8,sp,#0x170
02b80d28  mov w0,wzr
02b80d2c  mov x1,xzr
02b80d30  bl 0x046544b8
02b80d34  ldp q0,q1,[sp, #0x170]
02b80d38  stp q0,q1,[x19]
02b80d3c  add sp,sp,#0x290
02b80d40  ldp x20,x19,[sp, #0x90]
02b80d44  ldp x22,x21,[sp, #0x80]
02b80d48  ldp x24,x23,[sp, #0x70]
02b80d4c  ldp x26,x25,[sp, #0x60]
02b80d50  ldp x28,x27,[sp, #0x50]
02b80d54  ldp x29,x30,[sp, #0x40]
02b80d58  ldp d9,d8,[sp, #0x30]
02b80d5c  ldp d11,d10,[sp, #0x20]
02b80d60  ldp d13,d12,[sp, #0x10]
02b80d64  ldp d15,d14,[sp], #0xa0
02b80d68  ret
02b80d6c  bl 0x029f5cfc
02b80d70  bl 0x029f5d04
