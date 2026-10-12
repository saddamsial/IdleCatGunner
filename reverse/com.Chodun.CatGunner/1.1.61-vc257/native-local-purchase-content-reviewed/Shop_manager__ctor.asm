02c9cd08  stp x29,x30,[sp, #-0x60]!
02c9cd0c  stp x28,x27,[sp, #0x10]
02c9cd10  stp x26,x25,[sp, #0x20]
02c9cd14  stp x24,x23,[sp, #0x30]
02c9cd18  stp x22,x21,[sp, #0x40]
02c9cd1c  stp x20,x19,[sp, #0x50]
02c9cd20  adrp x28,0x5e63000
02c9cd24  adrp x27,0x5e5b000
02c9cd28  adrp x20,0x5e5b000
02c9cd2c  adrp x26,0x5e64000
02c9cd30  adrp x25,0x5e64000
02c9cd34  adrp x24,0x5e64000
02c9cd38  adrp x29,0x625c000
02c9cd3c  adrp x23,0x5e64000
02c9cd40  adrp x22,0x5e64000
02c9cd44  adrp x21,0x5e64000
02c9cd48  ldr x28,[x28, #0xef0]
02c9cd4c  ldr x27,[x27, #0xde0]
02c9cd50  ldr x20,[x20, #0xde8]
02c9cd54  ldr x26,[x26, #0x538]
02c9cd58  ldr x25,[x25, #0x660]
02c9cd5c  ldr x24,[x24, #0x668]
02c9cd60  ldr x23,[x23, #0x670]
02c9cd64  ldrb w8,[x29, #0x46b]
02c9cd68  ldr x22,[x22, #0x678]
02c9cd6c  ldr x21,[x21, #0x680]
02c9cd70  mov x19,x0
02c9cd74  tbnz w8,#0x0,0x02c9cdec
02c9cd78  adrp x0,0x5e64000
02c9cd7c  ldr x0,[x0, #0x668]
02c9cd80  bl 0x029f5a50
02c9cd84  adrp x0,0x5e64000
02c9cd88  ldr x0,[x0, #0x680]
02c9cd8c  bl 0x029f5a50
02c9cd90  adrp x0,0x5e64000
02c9cd94  ldr x0,[x0, #0x678]
02c9cd98  bl 0x029f5a50
02c9cd9c  adrp x0,0x5e5b000
02c9cda0  ldr x0,[x0, #0xde8]
02c9cda4  bl 0x029f5a50
02c9cda8  adrp x0,0x5e5b000
02c9cdac  ldr x0,[x0, #0xde0]
02c9cdb0  bl 0x029f5a50
02c9cdb4  adrp x0,0x5e64000
02c9cdb8  ldr x0,[x0, #0x660]
02c9cdbc  bl 0x029f5a50
02c9cdc0  adrp x0,0x5e64000
02c9cdc4  ldr x0,[x0, #0x538]
02c9cdc8  bl 0x029f5a50
02c9cdcc  adrp x0,0x5e64000
02c9cdd0  ldr x0,[x0, #0x670]
02c9cdd4  bl 0x029f5a50
02c9cdd8  adrp x0,0x5e63000
02c9cddc  ldr x0,[x0, #0xef0]
02c9cde0  bl 0x029f5a50
02c9cde4  mov w8,#0x1
02c9cde8  strb w8,[x29, #0x46b]
02c9cdec  ldr x1,[x28]
02c9cdf0  mov x0,x19
02c9cdf4  str x1,[x0, #0x30]!
02c9cdf8  bl 0x029f59f4
02c9cdfc  ldr x0,[x27]
02c9ce00  bl 0x029f5cec
02c9ce04  ldr x1,[x20]
02c9ce08  mov x20,x0
02c9ce0c  bl 0x042bb9a4
02c9ce10  mov x0,x19
02c9ce14  mov x1,x20
02c9ce18  str x20,[x0, #0x48]!
02c9ce1c  bl 0x029f59f4
02c9ce20  ldr x0,[x26]
02c9ce24  bl 0x029f5cec
02c9ce28  ldr x1,[x25]
02c9ce2c  mov x20,x0
02c9ce30  bl 0x0452c340
02c9ce34  mov x0,x19
02c9ce38  mov x1,x20
02c9ce3c  str x20,[x0, #0x58]!
02c9ce40  bl 0x029f59f4
02c9ce44  ldr x0,[x24]
02c9ce48  mov w1,#0x5
02c9ce4c  bl 0x029f5b40
02c9ce50  mov x1,x0
02c9ce54  mov x0,x19
02c9ce58  str x1,[x0, #0x90]!
02c9ce5c  bl 0x029f59f4
02c9ce60  ldr x0,[x23]
02c9ce64  mov w1,#0x5
02c9ce68  bl 0x029f5b40
02c9ce6c  mov x1,x0
02c9ce70  mov x0,x19
02c9ce74  str x1,[x0, #0xb0]!
02c9ce78  bl 0x029f59f4
02c9ce7c  ldr x0,[x22]
02c9ce80  bl 0x029f5cec
02c9ce84  ldr x1,[x21]
02c9ce88  mov x20,x0
02c9ce8c  bl 0x03e45bf8
02c9ce90  mov x0,x19
02c9ce94  mov x1,x20
02c9ce98  str x20,[x0, #0xc0]!
02c9ce9c  bl 0x029f59f4
02c9cea0  mov x0,x19
02c9cea4  ldp x20,x19,[sp, #0x50]
02c9cea8  ldp x22,x21,[sp, #0x40]
02c9ceac  mov x1,xzr
02c9ceb0  ldp x24,x23,[sp, #0x30]
02c9ceb4  ldp x26,x25,[sp, #0x20]
02c9ceb8  ldp x28,x27,[sp, #0x10]
02c9cebc  ldp x29,x30,[sp], #0x60
02c9cec0  b 0x057e2ee0
