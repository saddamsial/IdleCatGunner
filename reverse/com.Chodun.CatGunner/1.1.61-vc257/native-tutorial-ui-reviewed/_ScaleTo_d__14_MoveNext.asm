02caef00  str d10,[sp, #-0x40]!
02caef04  stp d9,d8,[sp, #0x10]
02caef08  stp x30,x21,[sp, #0x20]
02caef0c  stp x20,x19,[sp, #0x30]
02caef10  ldr w8,[x0, #0x10]
02caef14  ldr x20,[x0, #0x20]
02caef18  mov x19,x0
02caef1c  cmp w8,#0x1
02caef20  b.eq 0x02caef50
02caef24  cbnz w8,0x02caf0c0
02caef28  mov w8,#0xffffffff
02caef2c  str wzr,[x19, #0x2c]
02caef30  str w8,[x19, #0x10]
02caef34  cbz x20,0x02caf0d8
02caef38  ldr x0,[x20, #0x48]
02caef3c  cbz x0,0x02caf0d8
02caef40  mov x1,xzr
02caef44  bl 0x057ef578
02caef48  str s0,[x19, #0x30]
02caef4c  b 0x02caef5c
02caef50  mov w8,#0xffffffff
02caef54  str w8,[x19, #0x10]
02caef58  cbz x20,0x02caf0d8
02caef5c  ldr s8,[x19, #0x2c]
02caef60  ldr s0,[x20, #0x44]
02caef64  fcmp s8,s0
02caef68  b.pl 0x02caf064
02caef6c  mov x0,xzr
02caef70  bl 0x057ebabc
02caef74  fadd s0,s8,s0
02caef78  ldr s1,[x20, #0x44]
02caef7c  fmov s2,0x3f800000
02caef80  movi d4,#0x0
02caef84  fmov s5,0x40400000
02caef88  adrp x21,0x625b000
02caef8c  ldrb w8,[x21, #0x279]
02caef90  ldr s9,[x19, #0x30]
02caef94  ldr s10,[x19, #0x28]
02caef98  ldr x20,[x20, #0x48]
02caef9c  fdiv s1,s0,s1
02caefa0  str s0,[x19, #0x2c]
02caefa4  fcmp s1,s2
02caefa8  fcsel s3,s2,s1,gt
02caefac  fcmp s1,#0.0
02caefb0  fcsel s1,s4,s3,mi
02caefb4  fcmp s1,#0.0
02caefb8  fcsel s1,s4,s1,mi
02caefbc  fadd s3,s1,s1
02caefc0  fmul s5,s1,s5
02caefc4  fmul s3,s1,s3
02caefc8  fmul s3,s1,s3
02caefcc  fmul s1,s1,s5
02caefd0  fsub s1,s1,s3
02caefd4  fsub s3,s2,s1
02caefd8  fmul s3,s3,s4
02caefdc  fadd s1,s1,s3
02caefe0  fcmp s1,s2
02caefe4  fcsel s2,s2,s1,gt
02caefe8  fcmp s1,#0.0
02caefec  fcsel s8,s4,s2,mi
02caeff0  cbnz w8,0x02caf008
02caeff4  adrp x0,0x5e58000
02caeff8  ldr x0,[x0, #0xbf8]
02caeffc  bl 0x029f5a50
02caf000  mov w8,#0x1
02caf004  strb w8,[x21, #0x279]
02caf008  cbz x20,0x02caf0d8
02caf00c  fsub s0,s10,s9
02caf010  adrp x8,0x5e58000
02caf014  mov x0,x20
02caf018  ldr x8,[x8, #0xbf8]
02caf01c  mov x1,xzr
02caf020  ldr x8,[x8]
02caf024  fmul s0,s0,s8
02caf028  ldr x8,[x8, #0xb8]
02caf02c  ldp s3,s1,[x8, #0x10]
02caf030  ldr s4,[x8, #0xc]
02caf034  fadd s0,s9,s0
02caf038  fmul s2,s0,s1
02caf03c  fmul s1,s0,s3
02caf040  fmul s0,s0,s4
02caf044  bl 0x057ef654
02caf048  str xzr,[x19, #0x18]!
02caf04c  mov x0,x19
02caf050  mov x1,xzr
02caf054  bl 0x029f59f4
02caf058  mov w0,#0x1
02caf05c  stur w0,[x19, #-0x8]
02caf060  b 0x02caf0c4
02caf064  adrp x21,0x625b000
02caf068  ldr x20,[x20, #0x48]
02caf06c  ldrb w8,[x21, #0x279]
02caf070  cbnz w8,0x02caf088
02caf074  adrp x0,0x5e58000
02caf078  ldr x0,[x0, #0xbf8]
02caf07c  bl 0x029f5a50
02caf080  mov w8,#0x1
02caf084  strb w8,[x21, #0x279]
02caf088  cbz x20,0x02caf0d8
02caf08c  adrp x8,0x5e58000
02caf090  mov x0,x20
02caf094  mov x1,xzr
02caf098  ldr x8,[x8, #0xbf8]
02caf09c  ldr s0,[x19, #0x28]
02caf0a0  ldr x8,[x8]
02caf0a4  ldr x8,[x8, #0xb8]
02caf0a8  ldp s3,s1,[x8, #0x10]
02caf0ac  ldr s4,[x8, #0xc]
02caf0b0  fmul s2,s1,s0
02caf0b4  fmul s1,s0,s3
02caf0b8  fmul s0,s0,s4
02caf0bc  bl 0x057ef654
02caf0c0  mov w0,wzr
02caf0c4  ldp x20,x19,[sp, #0x30]
02caf0c8  ldp x30,x21,[sp, #0x20]
02caf0cc  ldp d9,d8,[sp, #0x10]
02caf0d0  ldr d10,[sp], #0x40
02caf0d4  ret
02caf0d8  bl 0x029f5cfc
