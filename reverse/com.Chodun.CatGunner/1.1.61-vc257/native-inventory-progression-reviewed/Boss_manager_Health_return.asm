02c46e10  sub sp,sp,#0xe0
02c46e14  str x30,[sp, #0xc0]
02c46e18  stp x20,x19,[sp, #0xd0]
02c46e1c  movi v0.2D,#0x0
02c46e20  mov x19,x8
02c46e24  ldr x8,[x0, #0x70]
02c46e28  stp q0,q0,[sp, #0x60]
02c46e2c  stp q0,q0,[sp, #0x80]
02c46e30  stp q0,q0,[sp, #0xa0]
02c46e34  cbz x8,0x02c46ef0
02c46e38  ldr w9,[x8, #0x18]
02c46e3c  cmp w9,w1
02c46e40  b.le 0x02c46e58
02c46e44  b.ls 0x02c46ef4
02c46e48  sxtw x9,w1
02c46e4c  add x8,x8,x9, LSL #0x5
02c46e50  ldp q0,q1,[x8, #0x20]
02c46e54  b 0x02c46edc
02c46e58  cbz w9,0x02c46ef4
02c46e5c  sub w10,w9,#0x1
02c46e60  sxtw x11,w10
02c46e64  cmp w10,w1
02c46e68  add x8,x8,x11, LSL #0x5
02c46e6c  ldp q1,q0,[x8, #0x20]
02c46e70  stp q1,q0,[sp, #0xa0]
02c46e74  b.ge 0x02c46ed8
02c46e78  sub w8,w1,w9
02c46e7c  add w20,w8,#0x1
02c46e80  add x8,sp,#0x40
02c46e84  mov w0,#0x5
02c46e88  mov x1,xzr
02c46e8c  bl 0x046544b8
02c46e90  ldp q0,q1,[sp, #0x40]
02c46e94  add x8,sp,#0x20
02c46e98  add x0,sp,#0xa0
02c46e9c  add x1,sp,#0x80
02c46ea0  mov x2,xzr
02c46ea4  stp q0,q1,[sp, #0x80]
02c46ea8  bl 0x04658538
02c46eac  ldp q0,q1,[sp, #0x20]
02c46eb0  mov x8,sp
02c46eb4  add x0,sp,#0x60
02c46eb8  mov w1,#0x2
02c46ebc  mov x2,xzr
02c46ec0  stp q0,q1,[sp, #0x60]
02c46ec4  bl 0x04658464
02c46ec8  ldp q0,q1,[sp]
02c46ecc  subs w20,w20,#0x1
02c46ed0  stp q0,q1,[sp, #0xa0]
02c46ed4  b.ne 0x02c46e80
02c46ed8  ldp q0,q1,[sp, #0xa0]
02c46edc  stp q0,q1,[x19]
02c46ee0  ldp x20,x19,[sp, #0xd0]
02c46ee4  ldr x30,[sp, #0xc0]
02c46ee8  add sp,sp,#0xe0
02c46eec  ret
02c46ef0  bl 0x029f5cfc
02c46ef4  bl 0x029f5d04
