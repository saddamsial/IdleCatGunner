02c5b898  sub sp,sp,#0x40
02c5b89c  str x30,[sp, #0x10]
02c5b8a0  stp x22,x21,[sp, #0x20]
02c5b8a4  stp x20,x19,[sp, #0x30]
02c5b8a8  adrp x21,0x625c000
02c5b8ac  adrp x20,0x5e5e000
02c5b8b0  mov x19,x0
02c5b8b4  ldrb w8,[x21, #0x1df]
02c5b8b8  ldr x20,[x20, #0x70]
02c5b8bc  tbnz w8,#0x0,0x02c5b8f8
02c5b8c0  adrp x0,0x5e5e000
02c5b8c4  ldr x0,[x0, #0x528]
02c5b8c8  bl 0x029f5a50
02c5b8cc  adrp x0,0x5e5e000
02c5b8d0  ldr x0,[x0, #0x70]
02c5b8d4  bl 0x029f5a50
02c5b8d8  adrp x0,0x5e62000
02c5b8dc  ldr x0,[x0, #0x5c0]
02c5b8e0  bl 0x029f5a50
02c5b8e4  adrp x0,0x5e63000
02c5b8e8  ldr x0,[x0, #0x790]
02c5b8ec  bl 0x029f5a50
02c5b8f0  mov w8,#0x1
02c5b8f4  strb w8,[x21, #0x1df]
02c5b8f8  ldr x0,[x20]
02c5b8fc  ldr w8,[x0, #0xe4]
02c5b900  cbnz w8,0x02c5b90c
02c5b904  bl 0x029f5bd0
02c5b908  ldr x0,[x20]
02c5b90c  ldr x8,[x0, #0xb8]
02c5b910  ldr x20,[x8]
02c5b914  cbz x20,0x02c5ba48
02c5b918  adrp x21,0x5e62000
02c5b91c  mov x0,x20
02c5b920  mov x1,xzr
02c5b924  ldr x21,[x21, #0x5c0]
02c5b928  bl 0x02c548dc
02c5b92c  adrp x9,0x5e58000
02c5b930  ldr w8,[x20, #0x78]
02c5b934  add x1,sp,#0x1c
02c5b938  ldr x9,[x9, #0xa10]
02c5b93c  ldr w10,[x20, #0x80]
02c5b940  ldr x20,[x19, #0x20]
02c5b944  str w8,[x19, #0x84]
02c5b948  ldr x0,[x9, #0x48]
02c5b94c  str w10,[sp, #0x1c]
02c5b950  bl 0x029f5bd8
02c5b954  ldr x8,[x21]
02c5b958  mov x1,x0
02c5b95c  mov x2,xzr
02c5b960  mov x0,x8
02c5b964  bl 0x046b6c0c
02c5b968  cbz x20,0x02c5ba48
02c5b96c  adrp x22,0x5e5e000
02c5b970  adrp x21,0x5e63000
02c5b974  mov x1,x0
02c5b978  ldr x22,[x22, #0x528]
02c5b97c  ldr x8,[x20]
02c5b980  ldr x21,[x21, #0x790]
02c5b984  mov x0,x20
02c5b988  ldr x9,[x8, #0x558]
02c5b98c  ldr x2,[x8, #0x560]
02c5b990  blr x9
02c5b994  mov x0,x19
02c5b998  bl 0x02c5ba4c
02c5b99c  mov x0,x19
02c5b9a0  bl 0x02c5bb40
02c5b9a4  mov x0,x19
02c5b9a8  bl 0x02c5b7a4
02c5b9ac  mov x0,x19
02c5b9b0  bl 0x02c5bce8
02c5b9b4  mov x0,x19
02c5b9b8  bl 0x02c5bed0
02c5b9bc  mov x0,xzr
02c5b9c0  bl 0x02c59868
02c5b9c4  bl 0x02c5c164
02c5b9c8  ldr x8,[x22]
02c5b9cc  ldr x19,[x19, #0x60]
02c5b9d0  mov x20,x0
02c5b9d4  ldr w9,[x8, #0xe4]
02c5b9d8  cbnz w9,0x02c5b9e4
02c5b9dc  mov x0,x8
02c5b9e0  bl 0x029f5bd0
02c5b9e4  ldr x0,[x21]
02c5b9e8  mov w1,#0x1
02c5b9ec  mov w2,wzr
02c5b9f0  mov w3,#0x1
02c5b9f4  mov w4,wzr
02c5b9f8  mov x5,xzr
02c5b9fc  mov x6,xzr
02c5ba00  mov w7,#0x1
02c5ba04  str xzr,[sp]
02c5ba08  bl 0x02bccb00
02c5ba0c  mov x1,x20
02c5ba10  mov x2,xzr
02c5ba14  bl 0x046b6c0c
02c5ba18  cbz x19,0x02c5ba48
02c5ba1c  ldr x8,[x19]
02c5ba20  mov x1,x0
02c5ba24  mov x0,x19
02c5ba28  ldr x9,[x8, #0x558]
02c5ba2c  ldr x2,[x8, #0x560]
02c5ba30  blr x9
02c5ba34  ldp x20,x19,[sp, #0x30]
02c5ba38  ldr x30,[sp, #0x10]
02c5ba3c  ldp x22,x21,[sp, #0x20]
02c5ba40  add sp,sp,#0x40
02c5ba44  ret
02c5ba48  bl 0x029f5cfc
