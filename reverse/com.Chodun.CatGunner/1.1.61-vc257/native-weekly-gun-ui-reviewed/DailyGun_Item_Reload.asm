02c8bcd4  sub sp,sp,#0x50
02c8bcd8  stp x30,x25,[sp, #0x10]
02c8bcdc  stp x24,x23,[sp, #0x20]
02c8bce0  stp x22,x21,[sp, #0x30]
02c8bce4  stp x20,x19,[sp, #0x40]
02c8bce8  adrp x20,0x625c000
02c8bcec  adrp x21,0x5e62000
02c8bcf0  mov x19,x0
02c8bcf4  ldrb w8,[x20, #0x3b2]
02c8bcf8  ldr x21,[x21, #0x660]
02c8bcfc  tbnz w8,#0x0,0x02c8bd2c
02c8bd00  adrp x0,0x5e62000
02c8bd04  ldr x0,[x0, #0x660]
02c8bd08  bl 0x029f5a50
02c8bd0c  adrp x0,0x5e59000
02c8bd10  ldr x0,[x0, #0x1c0]
02c8bd14  bl 0x029f5a50
02c8bd18  adrp x0,0x5e61000
02c8bd1c  ldr x0,[x0, #0xf20]
02c8bd20  bl 0x029f5a50
02c8bd24  mov w8,#0x1
02c8bd28  strb w8,[x20, #0x3b2]
02c8bd2c  ldr x0,[x21]
02c8bd30  adrp x23,0x5e59000
02c8bd34  ldr w8,[x0, #0xe4]
02c8bd38  ldr x23,[x23, #0x1c0]
02c8bd3c  cbnz w8,0x02c8bd48
02c8bd40  bl 0x029f5bd0
02c8bd44  ldr x0,[x21]
02c8bd48  ldr x8,[x23]
02c8bd4c  ldr x9,[x0, #0xb8]
02c8bd50  ldr w10,[x8, #0xe4]
02c8bd54  ldr x20,[x9]
02c8bd58  cbnz w10,0x02c8bd64
02c8bd5c  mov x0,x8
02c8bd60  bl 0x029f5bd0
02c8bd64  mov x0,x20
02c8bd68  mov x1,xzr
02c8bd6c  mov x2,xzr
02c8bd70  bl 0x057e14b4
02c8bd74  tbnz w0,#0x0,0x02c8bf18
02c8bd78  ldr x0,[x21]
02c8bd7c  ldr w8,[x0, #0xe4]
02c8bd80  cbnz w8,0x02c8bd8c
02c8bd84  bl 0x029f5bd0
02c8bd88  ldr x0,[x21]
02c8bd8c  ldr x9,[x0, #0xb8]
02c8bd90  ldr x8,[x9, #0x8]
02c8bd94  cbz x8,0x02c8bf30
02c8bd98  ldrsw x1,[x19, #0x20]
02c8bd9c  ldr w10,[x8, #0x18]
02c8bda0  cmp w1,w10
02c8bda4  b.cs 0x02c8bf34
02c8bda8  ldr x0,[x9]
02c8bdac  cbz x0,0x02c8bf30
02c8bdb0  add x8,x8,x1, LSL #0x2
02c8bdb4  ldr w24,[x8, #0x20]
02c8bdb8  bl 0x02c8b42c
02c8bdbc  ldr x8,[x23]
02c8bdc0  ldr x21,[x19, #0x38]
02c8bdc4  mov w20,w0
02c8bdc8  ldr w9,[x8, #0xe4]
02c8bdcc  cbnz w9,0x02c8bdd8
02c8bdd0  mov x0,x8
02c8bdd4  bl 0x029f5bd0
02c8bdd8  mov x0,x21
02c8bddc  mov x1,xzr
02c8bde0  mov x2,xzr
02c8bde4  bl 0x057dfa70
02c8bde8  tbz w0,#0x0,0x02c8be58
02c8bdec  adrp x25,0x5e58000
02c8bdf0  add x1,sp,#0xc
02c8bdf4  ldr x25,[x25, #0xa10]
02c8bdf8  ldr x21,[x19, #0x38]
02c8bdfc  str w20,[sp, #0xc]
02c8be00  ldr x0,[x25, #0x48]
02c8be04  bl 0x029f5bd8
02c8be08  mov x22,x0
02c8be0c  ldr x0,[x25, #0x48]
02c8be10  add x1,sp,#0x8
02c8be14  str w24,[sp, #0x8]
02c8be18  bl 0x029f5bd8
02c8be1c  adrp x8,0x5e61000
02c8be20  mov x2,x0
02c8be24  mov x1,x22
02c8be28  ldr x8,[x8, #0xf20]
02c8be2c  mov x3,xzr
02c8be30  ldr x8,[x8]
02c8be34  mov x0,x8
02c8be38  bl 0x046c1d14
02c8be3c  cbz x21,0x02c8bf30
02c8be40  ldr x8,[x21]
02c8be44  mov x1,x0
02c8be48  mov x0,x21
02c8be4c  ldr x9,[x8, #0x558]
02c8be50  ldr x2,[x8, #0x560]
02c8be54  blr x9
02c8be58  ldr x0,[x23]
02c8be5c  ldr x21,[x19, #0x40]
02c8be60  ldr w8,[x0, #0xe4]
02c8be64  cbnz w8,0x02c8be6c
02c8be68  bl 0x029f5bd0
02c8be6c  mov x0,x21
02c8be70  mov x1,xzr
02c8be74  mov x2,xzr
02c8be78  bl 0x057dfa70
02c8be7c  tbz w0,#0x0,0x02c8be98
02c8be80  ldr x0,[x19, #0x40]
02c8be84  cbz x0,0x02c8bf30
02c8be88  cmp w20,#0x1
02c8be8c  mov x2,xzr
02c8be90  cset w1,lt
02c8be94  bl 0x057dff3c
02c8be98  ldr x0,[x23]
02c8be9c  ldr x21,[x19, #0x48]
02c8bea0  ldr w8,[x0, #0xe4]
02c8bea4  cbnz w8,0x02c8beac
02c8bea8  bl 0x029f5bd0
02c8beac  mov x0,x21
02c8beb0  mov x1,xzr
02c8beb4  mov x2,xzr
02c8beb8  bl 0x057dfa70
02c8bebc  tbz w0,#0x0,0x02c8bed8
02c8bec0  ldr x0,[x19, #0x48]
02c8bec4  cbz x0,0x02c8bf30
02c8bec8  cmp w20,#0x1
02c8becc  mov x2,xzr
02c8bed0  cset w1,lt
02c8bed4  bl 0x057dff3c
02c8bed8  ldr x0,[x23]
02c8bedc  ldr x21,[x19, #0x50]
02c8bee0  ldr w8,[x0, #0xe4]
02c8bee4  cbnz w8,0x02c8beec
02c8bee8  bl 0x029f5bd0
02c8beec  mov x0,x21
02c8bef0  mov x1,xzr
02c8bef4  mov x2,xzr
02c8bef8  bl 0x057dfa70
02c8befc  tbz w0,#0x0,0x02c8bf18
02c8bf00  ldr x0,[x19, #0x50]
02c8bf04  cbz x0,0x02c8bf30
02c8bf08  cmp w20,#0x0
02c8bf0c  mov x2,xzr
02c8bf10  cset w1,gt
02c8bf14  bl 0x057dff3c
02c8bf18  ldp x20,x19,[sp, #0x40]
02c8bf1c  ldp x22,x21,[sp, #0x30]
02c8bf20  ldp x24,x23,[sp, #0x20]
02c8bf24  ldp x30,x25,[sp, #0x10]
02c8bf28  add sp,sp,#0x50
02c8bf2c  ret
02c8bf30  bl 0x029f5cfc
02c8bf34  bl 0x029f5d04
