02c7c968  stp x30,x21,[sp, #-0x20]!
02c7c96c  stp x20,x19,[sp, #0x10]
02c7c970  adrp x21,0x625c000
02c7c974  mov w20,w2
02c7c978  mov x19,x1
02c7c97c  ldrb w8,[x21, #0x323]
02c7c980  tbnz w8,#0x0,0x02c7c998
02c7c984  adrp x0,0x5e5d000
02c7c988  ldr x0,[x0, #0x790]
02c7c98c  bl 0x029f5a50
02c7c990  mov w8,#0x1
02c7c994  strb w8,[x21, #0x323]
02c7c998  cbz x19,0x02c7c9a8
02c7c99c  ldr w8,[x19, #0x18]
02c7c9a0  cmp w8,w20
02c7c9a4  b.eq 0x02c7ca44
02c7c9a8  adrp x8,0x5e5d000
02c7c9ac  mov w1,w20
02c7c9b0  ldr x8,[x8, #0x790]
02c7c9b4  ldr x0,[x8]
02c7c9b8  bl 0x029f5b40
02c7c9bc  cmp w20,#0x1
02c7c9c0  b.lt 0x02c7c9ec
02c7c9c4  cbz x0,0x02c7ca58
02c7c9c8  ldr w8,[x0, #0x18]
02c7c9cc  mov w9,w20
02c7c9d0  add x10,x0,#0x20
02c7c9d4  mov w11,#0xffffffff
02c7c9d8  cbz x8,0x02c7ca54
02c7c9dc  subs x9,x9,#0x1
02c7c9e0  sub x8,x8,#0x1
02c7c9e4  str w11,[x10], #0x4
02c7c9e8  b.ne 0x02c7c9d8
02c7c9ec  cbz x19,0x02c7ca40
02c7c9f0  ldr x10,[x19, #0x18]
02c7c9f4  cmp w10,w20
02c7c9f8  csel w8,w10,w20,lt
02c7c9fc  cmp w8,#0x1
02c7ca00  b.lt 0x02c7ca40
02c7ca04  mov x9,xzr
02c7ca08  and x10,x10,#0xffffffff
02c7ca0c  add x11,x19,#0x20
02c7ca10  cmp x10,x9
02c7ca14  b.eq 0x02c7ca54
02c7ca18  cbz x0,0x02c7ca58
02c7ca1c  ldr w12,[x0, #0x18]
02c7ca20  cmp x9,x12
02c7ca24  b.cs 0x02c7ca54
02c7ca28  ldr w12,[x11, x9, LSL #0x2]
02c7ca2c  add x13,x0,x9, LSL #0x2
02c7ca30  add x9,x9,#0x1
02c7ca34  cmp x8,x9
02c7ca38  str w12,[x13, #0x20]
02c7ca3c  b.ne 0x02c7ca10
02c7ca40  mov x19,x0
02c7ca44  mov x0,x19
02c7ca48  ldp x20,x19,[sp, #0x10]
02c7ca4c  ldp x30,x21,[sp], #0x20
02c7ca50  ret
02c7ca54  bl 0x029f5d04
02c7ca58  bl 0x029f5cfc
