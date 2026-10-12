02c5ca8c  sub sp,sp,#0x70
02c5ca90  str d8,[sp, #0x40]
02c5ca94  stp x30,x21,[sp, #0x50]
02c5ca98  stp x20,x19,[sp, #0x60]
02c5ca9c  adrp x21,0x625c000
02c5caa0  mov x20,x1
02c5caa4  mov x19,x0
02c5caa8  ldrb w8,[x21, #0x1f0]
02c5caac  tbnz w8,#0x0,0x02c5cad0
02c5cab0  adrp x0,0x5e63000
02c5cab4  ldr x0,[x0, #0x480]
02c5cab8  bl 0x029f5a50
02c5cabc  adrp x0,0x5e5d000
02c5cac0  ldr x0,[x0, #0x338]
02c5cac4  bl 0x029f5a50
02c5cac8  mov w8,#0x1
02c5cacc  strb w8,[x21, #0x1f0]
02c5cad0  movi v0.2D,#0x0
02c5cad4  ldrb w8,[x19, #0x24]
02c5cad8  stp q0,q0,[sp, #0x20]
02c5cadc  cbz w8,0x02c5caf4
02c5cae0  ldp x20,x19,[sp, #0x60]
02c5cae4  ldr d8,[sp, #0x40]
02c5cae8  ldp x30,x21,[sp, #0x50]
02c5caec  add sp,sp,#0x70
02c5caf0  ret
02c5caf4  adrp x21,0x5e5d000
02c5caf8  ldr x21,[x21, #0x338]
02c5cafc  ldr x0,[x21]
02c5cb00  ldr w8,[x0, #0xe4]
02c5cb04  cbnz w8,0x02c5cb10
02c5cb08  bl 0x029f5bd0
02c5cb0c  ldr x0,[x21]
02c5cb10  ldr x8,[x0, #0xb8]
02c5cb14  ldrb w8,[x8]
02c5cb18  cbz w8,0x02c5cae0
02c5cb1c  mov x8,sp
02c5cb20  add x0,x19,#0x28
02c5cb24  mov x1,x20
02c5cb28  mov x2,xzr
02c5cb2c  bl 0x04658270
02c5cb30  ldp q0,q1,[sp]
02c5cb34  add x0,x19,#0x28
02c5cb38  mov x1,xzr
02c5cb3c  stur q0,[x19, #0x28]
02c5cb40  stur q1,[x19, #0x38]
02c5cb44  bl 0x029f59f4
02c5cb48  ldr w8,[x19, #0x20]
02c5cb4c  cmp w8,#0x3
02c5cb50  b.ne 0x02c5cba4
02c5cb54  mov x8,sp
02c5cb58  add x1,x19,#0x48
02c5cb5c  mov x0,x20
02c5cb60  mov x2,xzr
02c5cb64  bl 0x046587e8
02c5cb68  ldp q0,q1,[sp]
02c5cb6c  add x0,sp,#0x20
02c5cb70  mov x1,xzr
02c5cb74  stp q0,q1,[sp, #0x20]
02c5cb78  bl 0x046572f8
02c5cb7c  adrp x8,0x5e63000
02c5cb80  mov x0,x19
02c5cb84  fmov s8,s0
02c5cb88  ldr x8,[x8, #0x480]
02c5cb8c  ldr x1,[x8]
02c5cb90  bl 0x02fe5f2c
02c5cb94  cbz x0,0x02c5cbf8
02c5cb98  fmov s0,s8
02c5cb9c  mov x1,xzr
02c5cba0  bl 0x02c4c840
02c5cba4  mov x0,x19
02c5cba8  bl 0x02c5cbfc
02c5cbac  mov x8,sp
02c5cbb0  mov w0,wzr
02c5cbb4  mov x1,xzr
02c5cbb8  bl 0x046544b8
02c5cbbc  ldp q0,q1,[sp]
02c5cbc0  add x0,x19,#0x28
02c5cbc4  add x1,sp,#0x20
02c5cbc8  mov x2,xzr
02c5cbcc  stp q0,q1,[sp, #0x20]
02c5cbd0  bl 0x0465468c
02c5cbd4  tbz w0,#0x0,0x02c5cbe4
02c5cbd8  mov x0,x19
02c5cbdc  bl 0x02c5cdbc
02c5cbe0  b 0x02c5cae0
02c5cbe4  ldr x0,[x19, #0x90]
02c5cbe8  cbz x0,0x02c5cbf8
02c5cbec  mov x1,xzr
02c5cbf0  bl 0x02b9be34
02c5cbf4  b 0x02c5cae0
02c5cbf8  bl 0x029f5cfc
