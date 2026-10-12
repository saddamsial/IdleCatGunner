02c47fd4  stp x30,x21,[sp, #-0x20]!
02c47fd8  stp x20,x19,[sp, #0x10]
02c47fdc  adrp x20,0x625c000
02c47fe0  mov x19,x0
02c47fe4  ldrb w8,[x20, #0xf2]
02c47fe8  tbnz w8,#0x0,0x02c48000
02c47fec  adrp x0,0x5e5a000
02c47ff0  ldr x0,[x0, #0x710]
02c47ff4  bl 0x029f5a50
02c47ff8  mov w8,#0x1
02c47ffc  strb w8,[x20, #0xf2]
02c48000  ldr w21,[x19, #0x10]
02c48004  ldr x0,[x19, #0x20]
02c48008  cbz w21,0x02c48028
02c4800c  cmp w21,#0x1
02c48010  b.ne 0x02c4807c
02c48014  mov w8,#0xffffffff
02c48018  str w8,[x19, #0x10]
02c4801c  cbz x0,0x02c48090
02c48020  bl 0x02c46450
02c48024  b 0x02c4807c
02c48028  mov w8,#0xffffffff
02c4802c  str w8,[x19, #0x10]
02c48030  cbz x0,0x02c48090
02c48034  ldr x1,[x0, #0x88]
02c48038  cbz x1,0x02c48044
02c4803c  mov x2,xzr
02c48040  bl 0x057e2250
02c48044  adrp x8,0x5e5a000
02c48048  ldr x8,[x8, #0x710]
02c4804c  ldr x0,[x8]
02c48050  bl 0x029f5cec
02c48054  fmov s0,0x40000000
02c48058  mov x1,xzr
02c4805c  mov x20,x0
02c48060  bl 0x057e84e0
02c48064  str x20,[x19, #0x18]!
02c48068  mov x0,x19
02c4806c  mov x1,x20
02c48070  bl 0x029f59f4
02c48074  mov w8,#0x1
02c48078  stur w8,[x19, #-0x8]
02c4807c  ldp x20,x19,[sp, #0x10]
02c48080  cmp w21,#0x0
02c48084  cset w0,eq
02c48088  ldp x30,x21,[sp], #0x20
02c4808c  ret
02c48090  bl 0x029f5cfc
