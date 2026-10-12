02c59a5c  str x30,[sp, #-0x20]!
02c59a60  stp x20,x19,[sp, #0x10]
02c59a64  mov x19,x1
02c59a68  mov x20,x0
02c59a6c  bl 0x02c59418
02c59a70  ldr x0,[x20, #0xf8]
02c59a74  cbz x0,0x02c59af0
02c59a78  ldr w2,[x0, #0x18]
02c59a7c  mov w1,wzr
02c59a80  mov x3,xzr
02c59a84  bl 0x04873aac
02c59a88  cbz x19,0x02c59ae0
02c59a8c  ldr x12,[x20, #0xf8]
02c59a90  cbz x12,0x02c59af0
02c59a94  ldr x9,[x19, #0x18]
02c59a98  ldr x10,[x12, #0x18]
02c59a9c  cmp w9,w10
02c59aa0  csel w8,w9,w10,lt
02c59aa4  cmp w8,#0x1
02c59aa8  b.lt 0x02c59ae0
02c59aac  and x9,x9,#0xffffffff
02c59ab0  and x10,x10,#0xffffffff
02c59ab4  add x11,x19,#0x20
02c59ab8  add x12,x12,#0x20
02c59abc  cbz x9,0x02c59aec
02c59ac0  cbz x10,0x02c59aec
02c59ac4  ldr w13,[x11], #0x4
02c59ac8  subs x8,x8,#0x1
02c59acc  sub x10,x10,#0x1
02c59ad0  sub x9,x9,#0x1
02c59ad4  bic w13,w13,w13, ASR #0x1f
02c59ad8  str w13,[x12], #0x4
02c59adc  b.ne 0x02c59abc
02c59ae0  ldp x20,x19,[sp, #0x10]
02c59ae4  ldr x30,[sp], #0x20
02c59ae8  ret
02c59aec  bl 0x029f5d04
02c59af0  bl 0x029f5cfc
