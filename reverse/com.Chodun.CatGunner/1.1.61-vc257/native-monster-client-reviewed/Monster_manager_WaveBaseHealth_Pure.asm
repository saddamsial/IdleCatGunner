02c4eb20  sub sp,sp,#0xe0
02c4eb24  str x30,[sp, #0xc0]
02c4eb28  stp x20,x19,[sp, #0xd0]
02c4eb2c  movi v0.2D,#0x0
02c4eb30  mov x19,x8
02c4eb34  ldr x8,[x0, #0x58]
02c4eb38  stp q0,q0,[sp, #0x60]
02c4eb3c  stp q0,q0,[sp, #0x80]
02c4eb40  stp q0,q0,[sp, #0xa0]
02c4eb44  cbz x8,0x02c4ec00
02c4eb48  ldr w9,[x8, #0x18]
02c4eb4c  cmp w9,w1
02c4eb50  b.le 0x02c4eb68
02c4eb54  b.ls 0x02c4ec04
02c4eb58  sxtw x9,w1
02c4eb5c  add x8,x8,x9, LSL #0x5
02c4eb60  ldp q0,q1,[x8, #0x20]
02c4eb64  b 0x02c4ebec
02c4eb68  cbz w9,0x02c4ec04
02c4eb6c  sub w10,w9,#0x1
02c4eb70  sxtw x11,w10
02c4eb74  cmp w10,w1
02c4eb78  add x8,x8,x11, LSL #0x5
02c4eb7c  ldp q1,q0,[x8, #0x20]
02c4eb80  stp q1,q0,[sp, #0xa0]
02c4eb84  b.ge 0x02c4ebe8
02c4eb88  sub w8,w1,w9
02c4eb8c  add w20,w8,#0x1
02c4eb90  add x8,sp,#0x40
02c4eb94  mov w0,#0x3
02c4eb98  mov x1,xzr
02c4eb9c  bl 0x046544b8
02c4eba0  ldp q0,q1,[sp, #0x40]
02c4eba4  add x8,sp,#0x20
02c4eba8  add x0,sp,#0xa0
02c4ebac  add x1,sp,#0x80
02c4ebb0  mov x2,xzr
02c4ebb4  stp q0,q1,[sp, #0x80]
02c4ebb8  bl 0x04658538
02c4ebbc  ldp q0,q1,[sp, #0x20]
02c4ebc0  mov x8,sp
02c4ebc4  add x0,sp,#0x60
02c4ebc8  mov w1,#0x2
02c4ebcc  mov x2,xzr
02c4ebd0  stp q0,q1,[sp, #0x60]
02c4ebd4  bl 0x04658464
02c4ebd8  ldp q0,q1,[sp]
02c4ebdc  subs w20,w20,#0x1
02c4ebe0  stp q0,q1,[sp, #0xa0]
02c4ebe4  b.ne 0x02c4eb90
02c4ebe8  ldp q0,q1,[sp, #0xa0]
02c4ebec  stp q0,q1,[x19]
02c4ebf0  ldp x20,x19,[sp, #0xd0]
02c4ebf4  ldr x30,[sp, #0xc0]
02c4ebf8  add sp,sp,#0xe0
02c4ebfc  ret
02c4ec00  bl 0x029f5cfc
02c4ec04  bl 0x029f5d04
