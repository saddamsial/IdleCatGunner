02c6fc9c  stp x30,x27,[sp, #-0x50]!
02c6fca0  stp x26,x25,[sp, #0x10]
02c6fca4  stp x24,x23,[sp, #0x20]
02c6fca8  stp x22,x21,[sp, #0x30]
02c6fcac  stp x20,x19,[sp, #0x40]
02c6fcb0  adrp x20,0x625c000
02c6fcb4  adrp x24,0x5e59000
02c6fcb8  mov x19,x0
02c6fcbc  ldrb w8,[x20, #0x2be]
02c6fcc0  ldr x24,[x24, #0x1c0]
02c6fcc4  tbnz w8,#0x0,0x02c6fcdc
02c6fcc8  adrp x0,0x5e59000
02c6fccc  ldr x0,[x0, #0x1c0]
02c6fcd0  bl 0x029f5a50
02c6fcd4  mov w8,#0x1
02c6fcd8  strb w8,[x20, #0x2be]
02c6fcdc  mov x0,x19
02c6fce0  bl 0x02c6ff64
02c6fce4  mov w21,w0
02c6fce8  mov x0,x19
02c6fcec  bl 0x02c7000c
02c6fcf0  mov w22,w0
02c6fcf4  bl 0x02c6febc
02c6fcf8  ldr x8,[x24]
02c6fcfc  ldr x20,[x19, #0x80]
02c6fd00  mov w23,w0
02c6fd04  ldr w9,[x8, #0xe4]
02c6fd08  cbnz w9,0x02c6fd14
02c6fd0c  mov x0,x8
02c6fd10  bl 0x029f5bd0
02c6fd14  mov x0,x20
02c6fd18  mov x1,xzr
02c6fd1c  mov x2,xzr
02c6fd20  bl 0x057dfa70
02c6fd24  mov w20,w0
02c6fd28  tbz w22,#0x0,0x02c6fd48
02c6fd2c  eor w8,w20,#0x1
02c6fd30  orr w9,w21,w23
02c6fd34  eor w10,w21,#0x1
02c6fd38  orr w8,w23,w8
02c6fd3c  eor w25,w9,#0x1
02c6fd40  and w26,w10,w8
02c6fd44  b 0x02c6fd50
02c6fd48  mov w26,wzr
02c6fd4c  mov w25,wzr
02c6fd50  ldr x0,[x24]
02c6fd54  ldr w27,[x19, #0x88]
02c6fd58  ldr x23,[x19, #0x60]
02c6fd5c  ldr w8,[x0, #0xe4]
02c6fd60  cbnz w8,0x02c6fd68
02c6fd64  bl 0x029f5bd0
02c6fd68  mov x0,x23
02c6fd6c  mov x1,xzr
02c6fd70  mov x2,xzr
02c6fd74  bl 0x057dfa70
02c6fd78  tbz w0,#0x0,0x02c6fd90
02c6fd7c  ldr x0,[x19, #0x60]
02c6fd80  cbz x0,0x02c6feb8
02c6fd84  and w1,w21,#0x1
02c6fd88  mov x2,xzr
02c6fd8c  bl 0x057dff3c
02c6fd90  ldr x0,[x24]
02c6fd94  ldr x23,[x19, #0x68]
02c6fd98  ldr w8,[x0, #0xe4]
02c6fd9c  cbnz w8,0x02c6fda4
02c6fda0  bl 0x029f5bd0
02c6fda4  mov x0,x23
02c6fda8  mov x1,xzr
02c6fdac  mov x2,xzr
02c6fdb0  bl 0x057dfa70
02c6fdb4  tbz w0,#0x0,0x02c6fdd0
02c6fdb8  ldr x0,[x19, #0x68]
02c6fdbc  cbz x0,0x02c6feb8
02c6fdc0  cmp w27,#0x3
02c6fdc4  mov x2,xzr
02c6fdc8  cset w1,eq
02c6fdcc  bl 0x057dff3c
02c6fdd0  ldr x0,[x24]
02c6fdd4  ldr x23,[x19, #0x70]
02c6fdd8  ldr w8,[x0, #0xe4]
02c6fddc  cbnz w8,0x02c6fde4
02c6fde0  bl 0x029f5bd0
02c6fde4  mov x0,x23
02c6fde8  mov x1,xzr
02c6fdec  mov x2,xzr
02c6fdf0  bl 0x057dfa70
02c6fdf4  tbz w0,#0x0,0x02c6fe10
02c6fdf8  ldr x0,[x19, #0x70]
02c6fdfc  cbz x0,0x02c6feb8
02c6fe00  and w8,w21,w22
02c6fe04  mov x2,xzr
02c6fe08  and w1,w8,#0x1
02c6fe0c  bl 0x057dff3c
02c6fe10  ldr x0,[x24]
02c6fe14  ldr x21,[x19, #0x78]
02c6fe18  ldr w8,[x0, #0xe4]
02c6fe1c  cbnz w8,0x02c6fe24
02c6fe20  bl 0x029f5bd0
02c6fe24  mov x0,x21
02c6fe28  mov x1,xzr
02c6fe2c  mov x2,xzr
02c6fe30  bl 0x057dfa70
02c6fe34  tbz w0,#0x0,0x02c6fe4c
02c6fe38  ldr x0,[x19, #0x78]
02c6fe3c  cbz x0,0x02c6feb8
02c6fe40  and w1,w26,#0x1
02c6fe44  mov x2,xzr
02c6fe48  bl 0x057dff3c
02c6fe4c  ldr x0,[x24]
02c6fe50  ldr x21,[x19, #0x80]
02c6fe54  ldr w8,[x0, #0xe4]
02c6fe58  cbnz w8,0x02c6fe60
02c6fe5c  bl 0x029f5bd0
02c6fe60  mov x0,x21
02c6fe64  mov x1,xzr
02c6fe68  mov x2,xzr
02c6fe6c  bl 0x057dfa70
02c6fe70  tbz w0,#0x0,0x02c6fea0
02c6fe74  ldr x0,[x19, #0x80]
02c6fe78  cbz x0,0x02c6feb8
02c6fe7c  and w8,w20,w25
02c6fe80  ldp x20,x19,[sp, #0x40]
02c6fe84  ldp x22,x21,[sp, #0x30]
02c6fe88  and w1,w8,#0x1
02c6fe8c  ldp x24,x23,[sp, #0x20]
02c6fe90  mov x2,xzr
02c6fe94  ldp x26,x25,[sp, #0x10]
02c6fe98  ldp x30,x27,[sp], #0x50
02c6fe9c  b 0x057dff3c
02c6fea0  ldp x20,x19,[sp, #0x40]
02c6fea4  ldp x22,x21,[sp, #0x30]
02c6fea8  ldp x24,x23,[sp, #0x20]
02c6feac  ldp x26,x25,[sp, #0x10]
02c6feb0  ldp x30,x27,[sp], #0x50
02c6feb4  ret
02c6feb8  bl 0x029f5cfc
