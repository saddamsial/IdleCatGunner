02c94280  sub sp,sp,#0x30
02c94284  stp x30,x21,[sp, #0x10]
02c94288  stp x20,x19,[sp, #0x20]
02c9428c  adrp x21,0x625c000
02c94290  adrp x20,0x5e5e000
02c94294  mov x19,x1
02c94298  ldrb w8,[x21, #0x418]
02c9429c  ldr x20,[x20, #0xb8]
02c942a0  tbnz w8,#0x0,0x02c942dc
02c942a4  adrp x0,0x5e58000
02c942a8  ldr x0,[x0, #0xf08]
02c942ac  bl 0x029f5a50
02c942b0  adrp x0,0x5e59000
02c942b4  ldr x0,[x0, #0x1c0]
02c942b8  bl 0x029f5a50
02c942bc  adrp x0,0x5e5e000
02c942c0  ldr x0,[x0, #0xb8]
02c942c4  bl 0x029f5a50
02c942c8  adrp x0,0x5e64000
02c942cc  ldr x0,[x0, #0x308]
02c942d0  bl 0x029f5a50
02c942d4  mov w8,#0x1
02c942d8  strb w8,[x21, #0x418]
02c942dc  ldr x0,[x20]
02c942e0  str wzr,[sp, #0xc]
02c942e4  ldr w8,[x0, #0xe4]
02c942e8  cbnz w8,0x02c942f0
02c942ec  bl 0x029f5bd0
02c942f0  add x1,sp,#0xc
02c942f4  mov x0,x19
02c942f8  bl 0x02c90c8c
02c942fc  tbz w0,#0x0,0x02c94378
02c94300  ldr x0,[x20]
02c94304  adrp x19,0x5e59000
02c94308  ldr w8,[x0, #0xe4]
02c9430c  ldr x19,[x19, #0x1c0]
02c94310  cbnz w8,0x02c9431c
02c94314  bl 0x029f5bd0
02c94318  ldr x0,[x20]
02c9431c  ldr x8,[x19]
02c94320  ldr x9,[x0, #0xb8]
02c94324  ldr w10,[x8, #0xe4]
02c94328  ldr x19,[x9]
02c9432c  cbnz w10,0x02c94338
02c94330  mov x0,x8
02c94334  bl 0x029f5bd0
02c94338  mov x0,x19
02c9433c  mov x1,xzr
02c94340  mov x2,xzr
02c94344  bl 0x057e14b4
02c94348  tbz w0,#0x0,0x02c94380
02c9434c  adrp x8,0x5e58000
02c94350  ldr x8,[x8, #0xf08]
02c94354  ldr x0,[x8]
02c94358  ldr w8,[x0, #0xe4]
02c9435c  cbnz w8,0x02c94364
02c94360  bl 0x029f5bd0
02c94364  adrp x8,0x5e64000
02c94368  mov x1,xzr
02c9436c  ldr x8,[x8, #0x308]
02c94370  ldr x0,[x8]
02c94374  bl 0x0579a8d0
02c94378  mov w0,wzr
02c9437c  b 0x02c943ac
02c94380  ldr x0,[x20]
02c94384  ldr w8,[x0, #0xe4]
02c94388  cbnz w8,0x02c94394
02c9438c  bl 0x029f5bd0
02c94390  ldr x0,[x20]
02c94394  ldr x8,[x0, #0xb8]
02c94398  ldr x0,[x8]
02c9439c  cbz x0,0x02c943bc
02c943a0  ldr w1,[sp, #0xc]
02c943a4  bl 0x02c913e4
02c943a8  mov w0,#0x1
02c943ac  ldp x20,x19,[sp, #0x20]
02c943b0  ldp x30,x21,[sp, #0x10]
02c943b4  add sp,sp,#0x30
02c943b8  ret
02c943bc  bl 0x029f5cfc
