02c5fcf0  stp x30,x21,[sp, #-0x20]!
02c5fcf4  stp x20,x19,[sp, #0x10]
02c5fcf8  adrp x20,0x625c000
02c5fcfc  mov x19,x0
02c5fd00  ldrb w8,[x20, #0x214]
02c5fd04  tbnz w8,#0x0,0x02c5fd28
02c5fd08  adrp x0,0x5e5d000
02c5fd0c  ldr x0,[x0, #0xd38]
02c5fd10  bl 0x029f5a50
02c5fd14  adrp x0,0x5e59000
02c5fd18  ldr x0,[x0, #0x1c0]
02c5fd1c  bl 0x029f5a50
02c5fd20  mov w8,#0x1
02c5fd24  strb w8,[x20, #0x214]
02c5fd28  mov x0,x19
02c5fd2c  mov x1,xzr
02c5fd30  str xzr,[x0, #0x40]!
02c5fd34  bl 0x029f59f4
02c5fd38  mov x0,x19
02c5fd3c  mov x1,xzr
02c5fd40  bl 0x057dc1c8
02c5fd44  cbz x0,0x02c5fe18
02c5fd48  adrp x20,0x5e5d000
02c5fd4c  adrp x21,0x5e59000
02c5fd50  mov w1,wzr
02c5fd54  ldr x20,[x20, #0xd38]
02c5fd58  ldr x21,[x21, #0x1c0]
02c5fd5c  mov x2,xzr
02c5fd60  bl 0x057dff3c
02c5fd64  ldr x8,[x20]
02c5fd68  ldr x0,[x21]
02c5fd6c  ldr x8,[x8, #0xb8]
02c5fd70  ldr w9,[x0, #0xe4]
02c5fd74  ldr x19,[x8]
02c5fd78  cbnz w9,0x02c5fd80
02c5fd7c  bl 0x029f5bd0
02c5fd80  mov x0,x19
02c5fd84  mov x1,xzr
02c5fd88  mov x2,xzr
02c5fd8c  bl 0x057dfa70
02c5fd90  tbz w0,#0x0,0x02c5fe0c
02c5fd94  ldr x8,[x20]
02c5fd98  ldr x8,[x8, #0xb8]
02c5fd9c  ldr x8,[x8]
02c5fda0  cbz x8,0x02c5fe18
02c5fda4  ldr x0,[x21]
02c5fda8  ldr x19,[x8, #0xa0]
02c5fdac  ldr w9,[x0, #0xe4]
02c5fdb0  cbnz w9,0x02c5fdb8
02c5fdb4  bl 0x029f5bd0
02c5fdb8  mov x0,x19
02c5fdbc  mov x1,xzr
02c5fdc0  mov x2,xzr
02c5fdc4  bl 0x057dfa70
02c5fdc8  tbz w0,#0x0,0x02c5fe0c
02c5fdcc  ldr x8,[x20]
02c5fdd0  ldr x8,[x8, #0xb8]
02c5fdd4  ldr x8,[x8]
02c5fdd8  cbz x8,0x02c5fe18
02c5fddc  ldr x0,[x8, #0xa0]
02c5fde0  cbz x0,0x02c5fe18
02c5fde4  bl 0x02c5fe20
02c5fde8  ldr x8,[x20]
02c5fdec  ldr x8,[x8, #0xb8]
02c5fdf0  ldr x8,[x8]
02c5fdf4  cbz x8,0x02c5fe18
02c5fdf8  ldr x0,[x8, #0xa0]
02c5fdfc  cbz x0,0x02c5fe18
02c5fe00  ldp x20,x19,[sp, #0x10]
02c5fe04  ldp x30,x21,[sp], #0x20
02c5fe08  b 0x02c5e45c
02c5fe0c  ldp x20,x19,[sp, #0x10]
02c5fe10  ldp x30,x21,[sp], #0x20
02c5fe14  ret
02c5fe18  bl 0x029f5cfc
