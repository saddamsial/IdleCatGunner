02c324bc  sub sp,sp,#0xf0
02c324c0  str d8,[sp, #0xa0]
02c324c4  stp x30,x25,[sp, #0xb0]
02c324c8  stp x24,x23,[sp, #0xc0]
02c324cc  stp x22,x21,[sp, #0xd0]
02c324d0  stp x20,x19,[sp, #0xe0]
02c324d4  adrp x20,0x625c000
02c324d8  adrp x22,0x5e63000
02c324dc  mov x19,x0
02c324e0  ldrb w8,[x20, #0x3f]
02c324e4  ldr x22,[x22, #0x90]
02c324e8  tbnz w8,#0x0,0x02c32500
02c324ec  adrp x0,0x5e63000
02c324f0  ldr x0,[x0, #0x90]
02c324f4  bl 0x029f5a50
02c324f8  mov w8,#0x1
02c324fc  strb w8,[x20, #0x3f]
02c32500  movi v0.2D,#0x0
02c32504  ldr x0,[x22]
02c32508  mov w1,#0x12c
02c3250c  stp q0,q0,[sp, #0x60]
02c32510  stp q0,q0,[sp, #0x80]
02c32514  bl 0x029f5b40
02c32518  mov x20,x19
02c3251c  mov x1,x0
02c32520  str x0,[x20, #0x48]!
02c32524  mov x0,x20
02c32528  bl 0x029f59f4
02c3252c  ldr x21,[x20]
02c32530  add x8,sp,#0x40
02c32534  mov w0,#0x69
02c32538  mov x1,xzr
02c3253c  bl 0x046544b8
02c32540  cbz x21,0x02c327b4
02c32544  ldr w8,[x21, #0x18]
02c32548  cbz w8,0x02c327d4
02c3254c  ldp q0,q1,[sp, #0x40]
02c32550  add x0,x21,#0x20
02c32554  mov x1,xzr
02c32558  stp q0,q1,[x21, #0x20]
02c3255c  bl 0x029f59f4
02c32560  ldr x23,[x20]
02c32564  cbz x23,0x02c327b4
02c32568  adrp x8,0x116f000
02c3256c  mov w21,#0x1
02c32570  mov w24,#0x40
02c32574  ldr d8,[x8, #0xde8]
02c32578  ldrsw x8,[x23, #0x18]
02c3257c  cmp x21,x8
02c32580  b.ge 0x02c32618
02c32584  fmov d0,d8
02c32588  add x8,sp,#0x40
02c3258c  mov x0,xzr
02c32590  bl 0x04656c9c
02c32594  ldp q0,q1,[sp, #0x40]
02c32598  sub x25,x21,#0x1
02c3259c  stp q0,q1,[sp, #0x80]
02c325a0  ldr w8,[x23, #0x18]
02c325a4  cmp x25,x8
02c325a8  b.cs 0x02c327d4
02c325ac  add x21,x23,x24
02c325b0  add x8,sp,#0x20
02c325b4  add x1,sp,#0x80
02c325b8  sub x0,x21,#0x20
02c325bc  mov x2,xzr
02c325c0  bl 0x04658538
02c325c4  ldp q0,q1,[sp, #0x20]
02c325c8  mov x8,sp
02c325cc  add x0,sp,#0x60
02c325d0  mov w1,#0x3
02c325d4  mov x2,xzr
02c325d8  stp q0,q1,[sp, #0x60]
02c325dc  bl 0x04658464
02c325e0  ldr w8,[x23, #0x18]
02c325e4  add x25,x25,#0x1
02c325e8  cmp x25,x8
02c325ec  b.cs 0x02c327d4
02c325f0  ldp q1,q0,[sp]
02c325f4  mov x0,x21
02c325f8  mov x1,xzr
02c325fc  add x24,x24,#0x20
02c32600  stp q1,q0,[x21]
02c32604  bl 0x029f59f4
02c32608  ldr x23,[x20]
02c3260c  add x21,x25,#0x1
02c32610  cbnz x23,0x02c32578
02c32614  b 0x02c327b4
02c32618  mov x24,xzr
02c3261c  mov w25,#0x20
02c32620  ldr w8,[x23, #0x18]
02c32624  cmp x24,w8, SXTW 
02c32628  b.ge 0x02c326d8
02c3262c  cmp x24,x8
02c32630  b.cs 0x02c327d4
02c32634  add x8,sp,#0x40
02c32638  mov w0,#0x64
02c3263c  mov x1,xzr
02c32640  add x21,x23,x25
02c32644  bl 0x046544b8
02c32648  ldp q0,q1,[sp, #0x40]
02c3264c  add x8,sp,#0x20
02c32650  add x1,sp,#0x80
02c32654  mov x0,x21
02c32658  mov x2,xzr
02c3265c  stp q0,q1,[sp, #0x80]
02c32660  bl 0x04658270
02c32664  ldp q1,q0,[sp, #0x20]
02c32668  mov x0,x21
02c3266c  mov x1,xzr
02c32670  stp q1,q0,[x21]
02c32674  bl 0x029f59f4
02c32678  ldr x23,[x20]
02c3267c  cbz x23,0x02c327b4
02c32680  ldr w8,[x23, #0x18]
02c32684  cmp x24,x8
02c32688  b.cs 0x02c327d4
02c3268c  add x21,x23,x25
02c32690  mov x8,sp
02c32694  mov w1,#0x3
02c32698  mov x0,x21
02c3269c  mov x2,xzr
02c326a0  bl 0x04658464
02c326a4  ldr w8,[x23, #0x18]
02c326a8  cmp x24,x8
02c326ac  b.cs 0x02c327d4
02c326b0  ldp q1,q0,[sp]
02c326b4  mov x0,x21
02c326b8  mov x1,xzr
02c326bc  add x25,x25,#0x20
02c326c0  add x24,x24,#0x1
02c326c4  stp q1,q0,[x21]
02c326c8  bl 0x029f59f4
02c326cc  ldr x23,[x20]
02c326d0  cbnz x23,0x02c32620
02c326d4  b 0x02c327b4
02c326d8  ldr x0,[x22]
02c326dc  mov w1,#0x12c
02c326e0  bl 0x029f5b40
02c326e4  mov x21,x19
02c326e8  mov x1,x0
02c326ec  str x0,[x21, #0x50]!
02c326f0  mov x0,x21
02c326f4  bl 0x029f59f4
02c326f8  ldr x0,[x22]
02c326fc  mov w1,#0x12c
02c32700  bl 0x029f5b40
02c32704  mov x1,x0
02c32708  str x0,[x19, #0x58]!
02c3270c  mov x0,x19
02c32710  bl 0x029f59f4
02c32714  ldur x8,[x19, #-0x10]
02c32718  cbz x8,0x02c327b4
02c3271c  mov x22,xzr
02c32720  mov w23,#0x20
02c32724  ldr w9,[x8, #0x18]
02c32728  cmp x22,w9, SXTW 
02c3272c  b.ge 0x02c327b8
02c32730  cmp x22,x9
02c32734  b.cs 0x02c327d4
02c32738  ldr x9,[x21]
02c3273c  cbz x9,0x02c327b4
02c32740  ldr w10,[x9, #0x18]
02c32744  cmp x22,x10
02c32748  b.cs 0x02c327d4
02c3274c  add x8,x8,x23
02c32750  add x0,x9,x23
02c32754  mov x1,xzr
02c32758  ldp q1,q0,[x8]
02c3275c  stp q1,q0,[x0]
02c32760  bl 0x029f59f4
02c32764  ldr x8,[x20]
02c32768  cbz x8,0x02c327b4
02c3276c  ldr w9,[x8, #0x18]
02c32770  cmp x22,x9
02c32774  b.cs 0x02c327d4
02c32778  ldr x9,[x19]
02c3277c  cbz x9,0x02c327b4
02c32780  ldr w10,[x9, #0x18]
02c32784  cmp x22,x10
02c32788  b.cs 0x02c327d4
02c3278c  add x8,x8,x23
02c32790  add x0,x9,x23
02c32794  mov x1,xzr
02c32798  ldp q1,q0,[x8]
02c3279c  add x23,x23,#0x20
02c327a0  add x22,x22,#0x1
02c327a4  stp q1,q0,[x0]
02c327a8  bl 0x029f59f4
02c327ac  ldr x8,[x20]
02c327b0  cbnz x8,0x02c32724
02c327b4  bl 0x029f5cfc
02c327b8  ldp x20,x19,[sp, #0xe0]
02c327bc  ldr d8,[sp, #0xa0]
02c327c0  ldp x22,x21,[sp, #0xd0]
02c327c4  ldp x24,x23,[sp, #0xc0]
02c327c8  ldp x30,x25,[sp, #0xb0]
02c327cc  add sp,sp,#0xf0
02c327d0  ret
02c327d4  bl 0x029f5d04
