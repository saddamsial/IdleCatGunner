02c179c8  str d8,[sp, #-0x30]!
02c179cc  stp x30,x21,[sp, #0x10]
02c179d0  stp x20,x19,[sp, #0x20]
02c179d4  adrp x20,0x625b000
02c179d8  mov x19,x0
02c179dc  ldrb w8,[x20, #0xefe]
02c179e0  tbnz w8,#0x0,0x02c179f8
02c179e4  adrp x0,0x5e5a000
02c179e8  ldr x0,[x0, #0x710]
02c179ec  bl 0x029f5a50
02c179f0  mov w8,#0x1
02c179f4  strb w8,[x20, #0xefe]
02c179f8  ldr w21,[x19, #0x10]
02c179fc  ldr x0,[x19, #0x20]
02c17a00  cbz w21,0x02c17a34
02c17a04  cmp w21,#0x1
02c17a08  b.ne 0x02c17a7c
02c17a0c  mov w8,#0xffffffff
02c17a10  str w8,[x19, #0x10]
02c17a14  cbz x0,0x02c17a94
02c17a18  mov x1,xzr
02c17a1c  bl 0x057dc1c8
02c17a20  cbz x0,0x02c17a94
02c17a24  mov w1,wzr
02c17a28  mov x2,xzr
02c17a2c  bl 0x057dff3c
02c17a30  b 0x02c17a7c
02c17a34  mov w8,#0xffffffff
02c17a38  str w8,[x19, #0x10]
02c17a3c  cbz x0,0x02c17a94
02c17a40  adrp x8,0x5e5a000
02c17a44  ldr x8,[x8, #0x710]
02c17a48  ldr s8,[x0, #0x20]
02c17a4c  ldr x0,[x8]
02c17a50  bl 0x029f5cec
02c17a54  fmov s0,s8
02c17a58  mov x1,xzr
02c17a5c  mov x20,x0
02c17a60  bl 0x057e84e0
02c17a64  str x20,[x19, #0x18]!
02c17a68  mov x0,x19
02c17a6c  mov x1,x20
02c17a70  bl 0x029f59f4
02c17a74  mov w8,#0x1
02c17a78  stur w8,[x19, #-0x8]
02c17a7c  cmp w21,#0x0
02c17a80  ldp x20,x19,[sp, #0x20]
02c17a84  ldp x30,x21,[sp, #0x10]
02c17a88  cset w0,eq
02c17a8c  ldr d8,[sp], #0x30
02c17a90  ret
02c17a94  bl 0x029f5cfc
