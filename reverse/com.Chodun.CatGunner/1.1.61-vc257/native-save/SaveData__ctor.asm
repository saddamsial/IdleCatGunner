02c1491c  sub sp,sp,#0xa0
02c14920  str x30,[sp, #0x60]
02c14924  stp x24,x23,[sp, #0x70]
02c14928  stp x22,x21,[sp, #0x80]
02c1492c  stp x20,x19,[sp, #0x90]
02c14930  adrp x24,0x5e5a000
02c14934  adrp x20,0x625b000
02c14938  adrp x23,0x5e5a000
02c1493c  adrp x22,0x5e62000
02c14940  adrp x21,0x5e62000
02c14944  ldr x24,[x24, #0x8a0]
02c14948  ldr x23,[x23, #0x8a8]
02c1494c  ldrb w8,[x20, #0xeeb]
02c14950  ldr x22,[x22, #0x628]
02c14954  ldr x21,[x21, #0x680]
02c14958  mov x19,x0
02c1495c  tbnz w8,#0x0,0x02c14998
02c14960  adrp x0,0x5e62000
02c14964  ldr x0,[x0, #0x680]
02c14968  bl 0x029f5a50
02c1496c  adrp x0,0x5e5a000
02c14970  ldr x0,[x0, #0x8a8]
02c14974  bl 0x029f5a50
02c14978  adrp x0,0x5e62000
02c1497c  ldr x0,[x0, #0x628]
02c14980  bl 0x029f5a50
02c14984  adrp x0,0x5e5a000
02c14988  ldr x0,[x0, #0x8a0]
02c1498c  bl 0x029f5a50
02c14990  mov w8,#0x1
02c14994  strb w8,[x20, #0xeeb]
02c14998  add x8,sp,#0x40
02c1499c  mov w0,wzr
02c149a0  mov x1,xzr
02c149a4  bl 0x046544b8
02c149a8  ldp q0,q1,[sp, #0x40]
02c149ac  add x0,x19,#0x18
02c149b0  mov x1,xzr
02c149b4  stur q0,[x19, #0x18]
02c149b8  stur q1,[x19, #0x28]
02c149bc  bl 0x029f59f4
02c149c0  add x8,sp,#0x20
02c149c4  mov w0,wzr
02c149c8  mov x1,xzr
02c149cc  bl 0x046544b8
02c149d0  ldp q0,q1,[sp, #0x20]
02c149d4  add x0,x19,#0x38
02c149d8  mov x1,xzr
02c149dc  stur q0,[x19, #0x38]
02c149e0  stur q1,[x19, #0x48]
02c149e4  bl 0x029f59f4
02c149e8  mov x8,sp
02c149ec  mov w0,wzr
02c149f0  mov x1,xzr
02c149f4  bl 0x046544b8
02c149f8  ldp q0,q1,[sp]
02c149fc  add x0,x19,#0x58
02c14a00  mov x1,xzr
02c14a04  stur q0,[x19, #0x58]
02c14a08  stur q1,[x19, #0x68]
02c14a0c  bl 0x029f59f4
02c14a10  movi v0.2D,#-0x1
02c14a14  ldr x0,[x24]
02c14a18  str d0,[x19, #0x160]
02c14a1c  bl 0x029f5cec
02c14a20  ldr x1,[x23]
02c14a24  mov x20,x0
02c14a28  bl 0x0452c340
02c14a2c  add x0,x19,#0x1e0
02c14a30  mov x1,x20
02c14a34  str x20,[x19, #0x1e0]
02c14a38  bl 0x029f59f4
02c14a3c  ldr x0,[x24]
02c14a40  bl 0x029f5cec
02c14a44  ldr x1,[x23]
02c14a48  mov x20,x0
02c14a4c  bl 0x0452c340
02c14a50  add x0,x19,#0x208
02c14a54  mov x1,x20
02c14a58  str x20,[x19, #0x208]
02c14a5c  bl 0x029f59f4
02c14a60  ldr x0,[x22]
02c14a64  bl 0x029f5cec
02c14a68  ldr x1,[x21]
02c14a6c  mov x20,x0
02c14a70  bl 0x044f7180
02c14a74  add x0,x19,#0x210
02c14a78  mov x1,x20
02c14a7c  str x20,[x19, #0x210]
02c14a80  bl 0x029f59f4
02c14a84  ldr x0,[x22]
02c14a88  bl 0x029f5cec
02c14a8c  ldr x1,[x21]
02c14a90  mov x20,x0
02c14a94  bl 0x044f7180
02c14a98  add x0,x19,#0x280
02c14a9c  mov x1,x20
02c14aa0  str x20,[x19, #0x280]
02c14aa4  bl 0x029f59f4
02c14aa8  mov w8,#0xffffffff
02c14aac  add x9,x19,#0x3fc
02c14ab0  mov x10,#-0x1
02c14ab4  mov x0,x19
02c14ab8  mov x1,xzr
02c14abc  str w8,[x19, #0x2b0]
02c14ac0  str x10,[x9]
02c14ac4  str w8,[x19, #0x424]
02c14ac8  bl 0x04893238
02c14acc  ldp x20,x19,[sp, #0x90]
02c14ad0  ldr x30,[sp, #0x60]
02c14ad4  ldp x22,x21,[sp, #0x80]
02c14ad8  ldp x24,x23,[sp, #0x70]
02c14adc  add sp,sp,#0xa0
02c14ae0  ret
