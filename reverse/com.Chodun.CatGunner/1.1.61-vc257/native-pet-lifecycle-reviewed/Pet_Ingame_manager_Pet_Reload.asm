02c7bc7c  stp d9,d8,[sp, #-0x70]!
02c7bc80  stp x29,x30,[sp, #0x10]
02c7bc84  stp x28,x27,[sp, #0x20]
02c7bc88  stp x26,x25,[sp, #0x30]
02c7bc8c  stp x24,x23,[sp, #0x40]
02c7bc90  stp x22,x21,[sp, #0x50]
02c7bc94  stp x20,x19,[sp, #0x60]
02c7bc98  adrp x21,0x625c000
02c7bc9c  adrp x20,0x5e5d000
02c7bca0  mov x19,x0
02c7bca4  ldrb w8,[x21, #0x31b]
02c7bca8  ldr x20,[x20, #0x4d0]
02c7bcac  tbnz w8,#0x0,0x02c7bd0c
02c7bcb0  adrp x0,0x5e63000
02c7bcb4  ldr x0,[x0, #0x108]
02c7bcb8  bl 0x029f5a50
02c7bcbc  adrp x0,0x5e62000
02c7bcc0  ldr x0,[x0, #0x680]
02c7bcc4  bl 0x029f5a50
02c7bcc8  adrp x0,0x5e62000
02c7bccc  ldr x0,[x0, #0xfe8]
02c7bcd0  bl 0x029f5a50
02c7bcd4  adrp x0,0x5e63000
02c7bcd8  ldr x0,[x0, #0x128]
02c7bcdc  bl 0x029f5a50
02c7bce0  adrp x0,0x5e62000
02c7bce4  ldr x0,[x0, #0x628]
02c7bce8  bl 0x029f5a50
02c7bcec  adrp x0,0x5e59000
02c7bcf0  ldr x0,[x0, #0x1c0]
02c7bcf4  bl 0x029f5a50
02c7bcf8  adrp x0,0x5e5d000
02c7bcfc  ldr x0,[x0, #0x4d0]
02c7bd00  bl 0x029f5a50
02c7bd04  mov w8,#0x1
02c7bd08  strb w8,[x21, #0x31b]
02c7bd0c  ldr x0,[x20]
02c7bd10  ldr w8,[x0, #0xe4]
02c7bd14  cbnz w8,0x02c7bd20
02c7bd18  bl 0x029f5bd0
02c7bd1c  ldr x0,[x20]
02c7bd20  ldr x8,[x0, #0xb8]
02c7bd24  ldr x8,[x8, #0x28]
02c7bd28  cbz x8,0x02c7bfc0
02c7bd2c  adrp x9,0x5e62000
02c7bd30  adrp x20,0x5e62000
02c7bd34  ldr x9,[x9, #0x628]
02c7bd38  ldr x20,[x20, #0x680]
02c7bd3c  ldr x21,[x8, #0x30]
02c7bd40  ldr x0,[x9]
02c7bd44  bl 0x029f5cec
02c7bd48  ldr x1,[x20]
02c7bd4c  mov x20,x0
02c7bd50  bl 0x044f7180
02c7bd54  cbz x21,0x02c7bfc0
02c7bd58  ldr x8,[x21, #0x18]
02c7bd5c  cmp w8,#0x1
02c7bd60  b.lt 0x02c7bdf0
02c7bd64  adrp x23,0x5e63000
02c7bd68  mov x22,xzr
02c7bd6c  and x8,x8,#0xffffffff
02c7bd70  ldr x23,[x23, #0x108]
02c7bd74  add x24,x21,#0x20
02c7bd78  cmp x22,w8, UXTW 
02c7bd7c  b.cs 0x02c7bfe8
02c7bd80  ldr w1,[x24, x22, LSL #0x2]
02c7bd84  cmn w1,#0x1
02c7bd88  b.eq 0x02c7bde0
02c7bd8c  cbz x20,0x02c7bfc0
02c7bd90  ldr w10,[x20, #0x1c]
02c7bd94  ldr x8,[x20, #0x10]
02c7bd98  ldr x9,[x23]
02c7bd9c  add w10,w10,#0x1
02c7bda0  str w10,[x20, #0x1c]
02c7bda4  cbz x8,0x02c7bfc0
02c7bda8  ldrsw x10,[x20, #0x18]
02c7bdac  ldr w11,[x8, #0x18]
02c7bdb0  cmp w10,w11
02c7bdb4  b.cs 0x02c7bdcc
02c7bdb8  add x8,x8,x10, LSL #0x2
02c7bdbc  add w9,w10,#0x1
02c7bdc0  str w9,[x20, #0x18]
02c7bdc4  str w1,[x8, #0x20]
02c7bdc8  b 0x02c7bde0
02c7bdcc  ldr x8,[x9, #0x20]
02c7bdd0  mov x0,x20
02c7bdd4  ldr x8,[x8, #0xc0]
02c7bdd8  ldr x2,[x8, #0x70]
02c7bddc  bl 0x044f7a10
02c7bde0  ldr w8,[x21, #0x18]
02c7bde4  add x22,x22,#0x1
02c7bde8  cmp x22,w8, SXTW 
02c7bdec  b.lt 0x02c7bd78
02c7bdf0  ldr x8,[x19, #0x20]
02c7bdf4  cbz x8,0x02c7bfc0
02c7bdf8  adrp x24,0x5e63000
02c7bdfc  adrp x25,0x5e59000
02c7be00  adrp x21,0x5e58000
02c7be04  ldr x24,[x24, #0x128]
02c7be08  ldr x25,[x25, #0x1c0]
02c7be0c  ldr x21,[x21, #0xbf8]
02c7be10  movi d8,#0x0
02c7be14  fmov s9,0xc0800000
02c7be18  mov w26,#0x4
02c7be1c  mov w27,#0x1
02c7be20  adrp x28,0x625b000
02c7be24  ldr w9,[x8, #0x18]
02c7be28  sub x29,x26,#0x4
02c7be2c  cmp x29,w9, SXTW 
02c7be30  b.ge 0x02c7bfc4
02c7be34  cbz x20,0x02c7bfc0
02c7be38  ldrsw x10,[x20, #0x18]
02c7be3c  cmp x29,x10
02c7be40  b.ge 0x02c7bf44
02c7be44  ldr x2,[x24]
02c7be48  sub w1,w26,#0x4
02c7be4c  mov x0,x20
02c7be50  bl 0x044f7718
02c7be54  ldr x8,[x19, #0x20]
02c7be58  cbz x8,0x02c7bfc0
02c7be5c  ldr w9,[x8, #0x18]
02c7be60  cmp x29,x9
02c7be64  b.cs 0x02c7bfe8
02c7be68  mov w23,w0
02c7be6c  ldr x0,[x8, x26, LSL #0x3]
02c7be70  cbz x0,0x02c7bfc0
02c7be74  mov x1,xzr
02c7be78  bl 0x057dc1c8
02c7be7c  cbz x0,0x02c7bfc0
02c7be80  mov x1,xzr
02c7be84  bl 0x057e0000
02c7be88  ldr x8,[x19, #0x20]
02c7be8c  cbz x8,0x02c7bfc0
02c7be90  ldr w9,[x8, #0x18]
02c7be94  cmp x29,x9
02c7be98  b.cs 0x02c7bfe8
02c7be9c  mov w22,w0
02c7bea0  ldr x0,[x8, x26, LSL #0x3]
02c7bea4  cbz x0,0x02c7bfc0
02c7bea8  mov w1,w23
02c7beac  bl 0x02c7a740
02c7beb0  ldr x8,[x19, #0x20]
02c7beb4  cbz x8,0x02c7bfc0
02c7beb8  ldr w9,[x8, #0x18]
02c7bebc  cmp x29,x9
02c7bec0  b.cs 0x02c7bfe8
02c7bec4  ldr x0,[x8, x26, LSL #0x3]
02c7bec8  cbz x0,0x02c7bfc0
02c7becc  mov x1,xzr
02c7bed0  bl 0x057dc1c8
02c7bed4  cbz x0,0x02c7bfc0
02c7bed8  mov w1,#0x1
02c7bedc  mov x2,xzr
02c7bee0  bl 0x057dff3c
02c7bee4  tbnz w22,#0x0,0x02c7bfb4
02c7bee8  bl 0x02c7ac48
02c7beec  ldr x8,[x25]
02c7bef0  mov x22,x0
02c7bef4  ldr w9,[x8, #0xe4]
02c7bef8  cbnz w9,0x02c7bf04
02c7befc  mov x0,x8
02c7bf00  bl 0x029f5bd0
02c7bf04  mov x0,x22
02c7bf08  mov x1,xzr
02c7bf0c  mov x2,xzr
02c7bf10  bl 0x057dfa70
02c7bf14  tbz w0,#0x0,0x02c7bf70
02c7bf18  cbz x22,0x02c7bfc0
02c7bf1c  mov x0,x22
02c7bf20  mov x1,xzr
02c7bf24  bl 0x057dc0f8
02c7bf28  cbz x0,0x02c7bfc0
02c7bf2c  mov x1,xzr
02c7bf30  bl 0x057eed98
02c7bf34  fadd s0,s0,s8
02c7bf38  fadd s1,s1,s8
02c7bf3c  fadd s2,s2,s9
02c7bf40  b 0x02c7bf94
02c7bf44  cmp x29,x9
02c7bf48  b.cs 0x02c7bfe8
02c7bf4c  ldr x0,[x8, x26, LSL #0x3]
02c7bf50  cbz x0,0x02c7bfc0
02c7bf54  mov x1,xzr
02c7bf58  bl 0x057dc1c8
02c7bf5c  cbz x0,0x02c7bfc0
02c7bf60  mov w1,wzr
02c7bf64  mov x2,xzr
02c7bf68  bl 0x057dff3c
02c7bf6c  b 0x02c7bfb4
02c7bf70  ldrb w8,[x28, #0x26f]
02c7bf74  cbnz w8,0x02c7bf84
02c7bf78  mov x0,x21
02c7bf7c  bl 0x029f5a50
02c7bf80  strb w27,[x28, #0x26f]
02c7bf84  ldr x8,[x21]
02c7bf88  ldr x8,[x8, #0xb8]
02c7bf8c  ldp s0,s1,[x8]
02c7bf90  ldr s2,[x8, #0x8]
02c7bf94  ldr x8,[x19, #0x20]
02c7bf98  cbz x8,0x02c7bfc0
02c7bf9c  ldr w9,[x8, #0x18]
02c7bfa0  cmp x29,x9
02c7bfa4  b.cs 0x02c7bfe8
02c7bfa8  ldr x0,[x8, x26, LSL #0x3]
02c7bfac  cbz x0,0x02c7bfc0
02c7bfb0  bl 0x02c7a91c
02c7bfb4  ldr x8,[x19, #0x20]
02c7bfb8  add x26,x26,#0x1
02c7bfbc  cbnz x8,0x02c7be24
02c7bfc0  bl 0x029f5cfc
02c7bfc4  mov x0,x19
02c7bfc8  ldp x20,x19,[sp, #0x60]
02c7bfcc  ldp x22,x21,[sp, #0x50]
02c7bfd0  ldp x24,x23,[sp, #0x40]
02c7bfd4  ldp x26,x25,[sp, #0x30]
02c7bfd8  ldp x28,x27,[sp, #0x20]
02c7bfdc  ldp x29,x30,[sp, #0x10]
02c7bfe0  ldp d9,d8,[sp], #0x70
02c7bfe4  b 0x02c7b9d8
02c7bfe8  bl 0x029f5d04
