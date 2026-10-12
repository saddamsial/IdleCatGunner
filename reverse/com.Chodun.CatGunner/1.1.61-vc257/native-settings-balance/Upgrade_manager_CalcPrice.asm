02cb2924  sub sp,sp,#0x130
02cb2928  stp x29,x30,[sp, #0x100]
02cb292c  stp x22,x21,[sp, #0x110]
02cb2930  stp x20,x19,[sp, #0x120]
02cb2934  adrp x22,0x625c000
02cb2938  adrp x21,0x5e59000
02cb293c  mov w20,w0
02cb2940  ldrb w9,[x22, #0x555]
02cb2944  ldr x21,[x21]
02cb2948  mov x19,x8
02cb294c  tbnz w9,#0x0,0x02cb2970
02cb2950  adrp x0,0x5e62000
02cb2954  ldr x0,[x0, #0xb8]
02cb2958  bl 0x029f5a50
02cb295c  adrp x0,0x5e59000
02cb2960  ldr x0,[x0]
02cb2964  bl 0x029f5a50
02cb2968  mov w8,#0x1
02cb296c  strb w8,[x22, #0x555]
02cb2970  movi v0.2D,#0x0
02cb2974  ldr x0,[x21]
02cb2978  mov w8,#0x1388
02cb297c  cmp w20,w8
02cb2980  ldr w8,[x0, #0xe4]
02cb2984  stp q0,q0,[sp, #0xa0]
02cb2988  stp q0,q0,[sp, #0xc0]
02cb298c  stp q0,q0,[sp, #0xe0]
02cb2990  b.le 0x02cb2a60
02cb2994  adrp x21,0x5e62000
02cb2998  ldr x21,[x21, #0xb8]
02cb299c  cbnz w8,0x02cb29a4
02cb29a0  bl 0x029f5bd0
02cb29a4  adrp x8,0x116f000
02cb29a8  adrp x9,0x1170000
02cb29ac  mov x0,xzr
02cb29b0  ldr d0,[x8, #0x9f0]
02cb29b4  ldr d1,[x9, #0x940]
02cb29b8  bl 0x04852840
02cb29bc  mov x8,#0x4049000000000000
02cb29c0  mov x0,xzr
02cb29c4  fmov d1,x8
02cb29c8  add x8,sp,#0x80
02cb29cc  fmul d0,d0,d1
02cb29d0  bl 0x04656c9c
02cb29d4  ldp q0,q1,[sp, #0x80]
02cb29d8  add x8,sp,#0x60
02cb29dc  mov x0,xzr
02cb29e0  stp q0,q1,[sp, #0xe0]
02cb29e4  fmov d0,0x4000000000000000
02cb29e8  bl 0x04656c9c
02cb29ec  ldr x0,[x21]
02cb29f0  ldp q0,q1,[sp, #0x60]
02cb29f4  ldr w8,[x0, #0xe4]
02cb29f8  stp q0,q1,[sp, #0xc0]
02cb29fc  cbnz w8,0x02cb2a04
02cb2a00  bl 0x029f5bd0
02cb2a04  mov w9,#0xffffec78
02cb2a08  add x8,sp,#0x40
02cb2a0c  add x0,sp,#0xc0
02cb2a10  add w1,w20,w9
02cb2a14  mov w2,#0x1
02cb2a18  mov x3,xzr
02cb2a1c  bl 0x0465ef6c
02cb2a20  ldp q0,q1,[sp, #0x40]
02cb2a24  add x8,sp,#0x20
02cb2a28  add x0,sp,#0xe0
02cb2a2c  add x1,sp,#0xa0
02cb2a30  mov x2,xzr
02cb2a34  stp q0,q1,[sp, #0xa0]
02cb2a38  bl 0x04658538
02cb2a3c  ldp q0,q1,[sp, #0x20]
02cb2a40  mov x8,sp
02cb2a44  add x0,sp,#0xe0
02cb2a48  mov w1,#0x3
02cb2a4c  mov x2,xzr
02cb2a50  stp q0,q1,[sp, #0xe0]
02cb2a54  bl 0x04658464
02cb2a58  ldp q0,q1,[sp]
02cb2a5c  b 0x02cb2ab4
02cb2a60  cbnz w8,0x02cb2a68
02cb2a64  bl 0x029f5bd0
02cb2a68  scvtf d1,w20
02cb2a6c  adrp x8,0x116f000
02cb2a70  mov x0,xzr
02cb2a74  ldr d0,[x8, #0x9f0]
02cb2a78  bl 0x04852840
02cb2a7c  mov x8,#0x4049000000000000
02cb2a80  mov x0,xzr
02cb2a84  fmov d1,x8
02cb2a88  add x8,sp,#0x80
02cb2a8c  fmul d0,d0,d1
02cb2a90  bl 0x04656c9c
02cb2a94  ldp q0,q1,[sp, #0x80]
02cb2a98  add x8,sp,#0x60
02cb2a9c  add x0,sp,#0xc0
02cb2aa0  mov w1,#0x3
02cb2aa4  mov x2,xzr
02cb2aa8  stp q0,q1,[sp, #0xc0]
02cb2aac  bl 0x04658464
02cb2ab0  ldp q0,q1,[sp, #0x60]
02cb2ab4  stp q0,q1,[x19]
02cb2ab8  ldp x20,x19,[sp, #0x120]
02cb2abc  ldp x22,x21,[sp, #0x110]
02cb2ac0  ldp x29,x30,[sp, #0x100]
02cb2ac4  add sp,sp,#0x130
02cb2ac8  ret
