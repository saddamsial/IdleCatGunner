02b7ff50  sub sp,sp,#0x90
02b7ff54  str x30,[sp, #0x60]
02b7ff58  stp x22,x21,[sp, #0x70]
02b7ff5c  stp x20,x19,[sp, #0x80]
02b7ff60  adrp x21,0x625b000
02b7ff64  mov x19,x1
02b7ff68  mov x20,x0
02b7ff6c  ldrb w8,[x21, #0x8c8]
02b7ff70  tbnz w8,#0x0,0x02b7ffac
02b7ff74  adrp x0,0x5e5d000
02b7ff78  ldr x0,[x0, #0x560]
02b7ff7c  bl 0x029f5a50
02b7ff80  adrp x0,0x5e59000
02b7ff84  ldr x0,[x0, #0x1c0]
02b7ff88  bl 0x029f5a50
02b7ff8c  adrp x0,0x5e5d000
02b7ff90  ldr x0,[x0, #0x568]
02b7ff94  bl 0x029f5a50
02b7ff98  adrp x0,0x5e5d000
02b7ff9c  ldr x0,[x0, #0x570]
02b7ffa0  bl 0x029f5a50
02b7ffa4  mov w8,#0x1
02b7ffa8  strb w8,[x21, #0x8c8]
02b7ffac  cbz x20,0x02b800f0
02b7ffb0  mov x0,x20
02b7ffb4  mov x1,xzr
02b7ffb8  bl 0x057dc1c8
02b7ffbc  cbz x0,0x02b800f0
02b7ffc0  mov x1,xzr
02b7ffc4  bl 0x057e00b4
02b7ffc8  tbz w0,#0x0,0x02b800d8
02b7ffcc  adrp x22,0x5e5d000
02b7ffd0  mov x0,x20
02b7ffd4  ldr x22,[x22, #0x560]
02b7ffd8  ldr x1,[x22]
02b7ffdc  bl 0x02fe5f2c
02b7ffe0  adrp x8,0x5e59000
02b7ffe4  mov x21,x0
02b7ffe8  ldr x8,[x8, #0x1c0]
02b7ffec  ldr x8,[x8]
02b7fff0  ldr w9,[x8, #0xe4]
02b7fff4  cbnz w9,0x02b80000
02b7fff8  mov x0,x8
02b7fffc  bl 0x029f5bd0
02b80000  mov x0,x21
02b80004  mov x1,xzr
02b80008  bl 0x057e50f4
02b8000c  tbz w0,#0x0,0x02b800d8
02b80010  ldr x1,[x22]
02b80014  mov x0,x20
02b80018  bl 0x02fe5f2c
02b8001c  cbz x0,0x02b800f0
02b80020  ldr x0,[x0, #0x20]
02b80024  cbz x0,0x02b800f0
02b80028  mov x1,xzr
02b8002c  bl 0x057dcc7c
02b80030  adrp x8,0x5e5d000
02b80034  mov x2,xzr
02b80038  mov x21,x0
02b8003c  ldr x8,[x8, #0x568]
02b80040  ldr x1,[x8]
02b80044  bl 0x046b2ddc
02b80048  tbz w0,#0x0,0x02b80074
02b8004c  ldr x1,[x22]
02b80050  mov x0,x20
02b80054  bl 0x02fe5f2c
02b80058  cbz x0,0x02b800f0
02b8005c  ldr x0,[x0, #0x20]
02b80060  cbz x0,0x02b800f0
02b80064  ldp q0,q1,[x19]
02b80068  add x1,sp,#0x40
02b8006c  stp q0,q1,[sp, #0x40]
02b80070  b 0x02b800c8
02b80074  adrp x8,0x5e5d000
02b80078  mov x0,x21
02b8007c  mov x2,xzr
02b80080  ldr x8,[x8, #0x570]
02b80084  ldr x1,[x8]
02b80088  bl 0x046b2ddc
02b8008c  tbz w0,#0x0,0x02b800d8
02b80090  ldr x1,[x22]
02b80094  mov x0,x20
02b80098  bl 0x02fe5f2c
02b8009c  cbz x0,0x02b800f0
02b800a0  ldr x19,[x0, #0x20]
02b800a4  add x8,sp,#0x20
02b800a8  mov w0,#0x1
02b800ac  mov x1,xzr
02b800b0  bl 0x046544b8
02b800b4  cbz x19,0x02b800f0
02b800b8  ldp q0,q1,[sp, #0x20]
02b800bc  mov x1,sp
02b800c0  mov x0,x19
02b800c4  stp q0,q1,[sp]
02b800c8  mov x2,xzr
02b800cc  bl 0x02c5ca8c
02b800d0  mov w0,#0x1
02b800d4  b 0x02b800dc
02b800d8  mov w0,wzr
02b800dc  ldp x20,x19,[sp, #0x80]
02b800e0  ldr x30,[sp, #0x60]
02b800e4  ldp x22,x21,[sp, #0x70]
02b800e8  add sp,sp,#0x90
02b800ec  ret
02b800f0  bl 0x029f5cfc
