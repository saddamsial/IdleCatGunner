02cadf20  sub sp,sp,#0x130
02cadf24  str d8,[sp, #0x100]
02cadf28  str x29,[sp, #0x108]
02cadf2c  stp x30,x21,[sp, #0x110]
02cadf30  stp x20,x19,[sp, #0x120]
02cadf34  adrp x19,0x625c000
02cadf38  adrp x20,0x5e63000
02cadf3c  ldrb w8,[x19, #0x529]
02cadf40  ldr x20,[x20, #0x90]
02cadf44  tbnz w8,#0x0,0x02cadf68
02cadf48  adrp x0,0x5e63000
02cadf4c  ldr x0,[x0, #0x90]
02cadf50  bl 0x029f5a50
02cadf54  adrp x0,0x5e5d000
02cadf58  ldr x0,[x0, #0xc20]
02cadf5c  bl 0x029f5a50
02cadf60  mov w8,#0x1
02cadf64  strb w8,[x19, #0x529]
02cadf68  ldr x0,[x20]
02cadf6c  mov w1,#0x4
02cadf70  bl 0x029f5b40
02cadf74  mov x19,x0
02cadf78  add x8,sp,#0xe0
02cadf7c  mov w0,#0x1
02cadf80  mov x1,xzr
02cadf84  bl 0x046544b8
02cadf88  cbz x19,0x02cae164
02cadf8c  ldr w8,[x19, #0x18]
02cadf90  cbz w8,0x02cae160
02cadf94  ldp q0,q1,[sp, #0xe0]
02cadf98  add x0,x19,#0x20
02cadf9c  mov x1,xzr
02cadfa0  stp q0,q1,[x19, #0x20]
02cadfa4  bl 0x029f59f4
02cadfa8  adrp x8,0x1170000
02cadfac  mov x0,xzr
02cadfb0  ldr d8,[x8, #0xac8]
02cadfb4  add x8,sp,#0xc0
02cadfb8  fmov d0,d8
02cadfbc  bl 0x04656c9c
02cadfc0  ldr w8,[x19, #0x18]
02cadfc4  tst w8,#0xfffffffe
02cadfc8  b.eq 0x02cae160
02cadfcc  ldp q1,q0,[sp, #0xc0]
02cadfd0  add x0,x19,#0x40
02cadfd4  mov x1,xzr
02cadfd8  stp q1,q0,[x19, #0x40]
02cadfdc  bl 0x029f59f4
02cadfe0  add x8,sp,#0xa0
02cadfe4  mov w0,#0x3
02cadfe8  mov x1,xzr
02cadfec  bl 0x046544b8
02cadff0  ldr w8,[x19, #0x18]
02cadff4  cmp w8,#0x2
02cadff8  b.ls 0x02cae160
02cadffc  ldp q1,q0,[sp, #0xa0]
02cae000  add x0,x19,#0x60
02cae004  mov x1,xzr
02cae008  stp q1,q0,[x19, #0x60]
02cae00c  bl 0x029f59f4
02cae010  add x8,sp,#0x80
02cae014  mov w0,#0x23
02cae018  mov x1,xzr
02cae01c  bl 0x046544b8
02cae020  ldr w8,[x19, #0x18]
02cae024  tst w8,#0xfffffffc
02cae028  b.eq 0x02cae160
02cae02c  ldp q1,q0,[sp, #0x80]
02cae030  adrp x21,0x5e5d000
02cae034  ldr x21,[x21, #0xc20]
02cae038  add x0,x19,#0x80
02cae03c  mov x1,xzr
02cae040  stp q1,q0,[x19, #0x80]
02cae044  bl 0x029f59f4
02cae048  ldr x8,[x21]
02cae04c  mov x1,x19
02cae050  ldr x8,[x8, #0xb8]
02cae054  str x19,[x8]
02cae058  ldr x8,[x21]
02cae05c  ldr x0,[x8, #0xb8]
02cae060  bl 0x029f59f4
02cae064  ldr x0,[x20]
02cae068  mov w1,#0x4
02cae06c  bl 0x029f5b40
02cae070  mov x19,x0
02cae074  add x8,sp,#0x60
02cae078  mov w0,#0x1
02cae07c  mov x1,xzr
02cae080  bl 0x046544b8
02cae084  cbz x19,0x02cae164
02cae088  ldr w8,[x19, #0x18]
02cae08c  cbz w8,0x02cae160
02cae090  ldp q0,q1,[sp, #0x60]
02cae094  add x0,x19,#0x20
02cae098  mov x1,xzr
02cae09c  stp q0,q1,[x19, #0x20]
02cae0a0  bl 0x029f59f4
02cae0a4  fmov d0,d8
02cae0a8  add x8,sp,#0x40
02cae0ac  mov x0,xzr
02cae0b0  bl 0x04656c9c
02cae0b4  ldr w8,[x19, #0x18]
02cae0b8  tst w8,#0xfffffffe
02cae0bc  b.eq 0x02cae160
02cae0c0  ldp q1,q0,[sp, #0x40]
02cae0c4  add x0,x19,#0x40
02cae0c8  mov x1,xzr
02cae0cc  stp q1,q0,[x19, #0x40]
02cae0d0  bl 0x029f59f4
02cae0d4  add x8,sp,#0x20
02cae0d8  mov w0,#0x3
02cae0dc  mov x1,xzr
02cae0e0  bl 0x046544b8
02cae0e4  ldr w8,[x19, #0x18]
02cae0e8  cmp w8,#0x2
02cae0ec  b.ls 0x02cae160
02cae0f0  ldp q1,q0,[sp, #0x20]
02cae0f4  add x0,x19,#0x60
02cae0f8  mov x1,xzr
02cae0fc  stp q1,q0,[x19, #0x60]
02cae100  bl 0x029f59f4
02cae104  mov x8,sp
02cae108  mov w0,#0x64
02cae10c  mov x1,xzr
02cae110  bl 0x046544b8
02cae114  ldr w8,[x19, #0x18]
02cae118  tst w8,#0xfffffffc
02cae11c  b.eq 0x02cae160
02cae120  ldp q1,q0,[sp]
02cae124  add x0,x19,#0x80
02cae128  mov x1,xzr
02cae12c  stp q1,q0,[x19, #0x80]
02cae130  bl 0x029f59f4
02cae134  ldr x8,[x21]
02cae138  mov x1,x19
02cae13c  ldr x0,[x8, #0xb8]
02cae140  str x19,[x0, #0x8]!
02cae144  bl 0x029f59f4
02cae148  ldp x20,x19,[sp, #0x120]
02cae14c  ldr x29,[sp, #0x108]
02cae150  ldp x30,x21,[sp, #0x110]
02cae154  ldr d8,[sp, #0x100]
02cae158  add sp,sp,#0x130
02cae15c  ret
02cae160  bl 0x029f5d04
02cae164  bl 0x029f5cfc
