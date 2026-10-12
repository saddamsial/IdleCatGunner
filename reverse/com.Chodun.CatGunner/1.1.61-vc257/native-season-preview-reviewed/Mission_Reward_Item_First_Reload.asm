02c04180  str x30,[sp, #-0x40]!
02c04184  stp x24,x23,[sp, #0x10]
02c04188  stp x22,x21,[sp, #0x20]
02c0418c  stp x20,x19,[sp, #0x30]
02c04190  adrp x24,0x625b000
02c04194  mov w19,w4
02c04198  mov w21,w3
02c0419c  ldrb w8,[x24, #0xe5d]
02c041a0  mov w22,w2
02c041a4  mov w23,w1
02c041a8  mov x20,x0
02c041ac  str w4,[sp, #0xc]
02c041b0  tbnz w8,#0x0,0x02c041c8
02c041b4  adrp x0,0x5e5d000
02c041b8  ldr x0,[x0, #0xd40]
02c041bc  bl 0x029f5a50
02c041c0  mov w8,#0x1
02c041c4  strb w8,[x24, #0xe5d]
02c041c8  ldr x0,[x20, #0x28]
02c041cc  stp w23,w22,[x20, #0x20]
02c041d0  cbz x0,0x02c04350
02c041d4  cmp w21,#0x0
02c041d8  mov x2,xzr
02c041dc  cset w1,eq
02c041e0  bl 0x057dff3c
02c041e4  ldr x0,[x20, #0x30]
02c041e8  cbz x0,0x02c04350
02c041ec  cmp w21,#0x1
02c041f0  mov x2,xzr
02c041f4  cset w1,eq
02c041f8  bl 0x057dff3c
02c041fc  ldr x0,[x20, #0x38]
02c04200  cbz x0,0x02c04350
02c04204  cmp w21,#0x2
02c04208  mov x2,xzr
02c0420c  cset w1,eq
02c04210  bl 0x057dff3c
02c04214  cbz w21,0x02c04228
02c04218  cmp w21,#0x2
02c0421c  b.ne 0x02c04268
02c04220  ldr x19,[x20, #0x48]
02c04224  b 0x02c0422c
02c04228  ldr x19,[x20, #0x40]
02c0422c  add x0,sp,#0xc
02c04230  mov x1,xzr
02c04234  bl 0x0484e6a4
02c04238  cbz x19,0x02c04350
02c0423c  ldr x8,[x19]
02c04240  mov x1,x0
02c04244  mov x0,x19
02c04248  ldr x9,[x8, #0x558]
02c0424c  ldr x2,[x8, #0x560]
02c04250  blr x9
02c04254  ldp x20,x19,[sp, #0x30]
02c04258  ldp x22,x21,[sp, #0x20]
02c0425c  ldp x24,x23,[sp, #0x10]
02c04260  ldr x30,[sp], #0x40
02c04264  ret
02c04268  adrp x8,0x5e5d000
02c0426c  ldr x8,[x8, #0xd40]
02c04270  ldr x8,[x8]
02c04274  ldr x8,[x8, #0xb8]
02c04278  ldr x8,[x8]
02c0427c  cbz x8,0x02c04350
02c04280  ldr x8,[x8, #0x48]
02c04284  cbz x8,0x02c04350
02c04288  ldr w9,[x8, #0x18]
02c0428c  cmp w9,w19
02c04290  b.ls 0x02c04390
02c04294  ldr x0,[x20, #0x50]
02c04298  cbz x0,0x02c04350
02c0429c  add x8,x8,w19, SXTW  #0x3
02c042a0  ldr x23,[x20, #0x58]
02c042a4  mov x2,xzr
02c042a8  ldr x22,[x8, #0x20]
02c042ac  mov x1,x22
02c042b0  bl 0x058d34cc
02c042b4  cbz x23,0x02c04350
02c042b8  mov w8,#0x6667
02c042bc  mov x0,x23
02c042c0  mov x1,x22
02c042c4  movk w8,#0x6666, LSL #16
02c042c8  mov x2,xzr
02c042cc  smull x8,w19,w8
02c042d0  lsr x9,x8,#0x3f
02c042d4  asr x8,x8,#0x21
02c042d8  add w21,w8,w9
02c042dc  bl 0x058d34cc
02c042e0  ldr x22,[x20, #0x60]
02c042e4  mov w0,w21
02c042e8  mov x1,xzr
02c042ec  bl 0x02c5b234
02c042f0  cbz x22,0x02c04350
02c042f4  ldr x8,[x22]
02c042f8  mov x0,x22
02c042fc  ldr x9,[x8, #0x2a8]
02c04300  ldr x1,[x8, #0x2b0]
02c04304  blr x9
02c04308  ldr x8,[x20, #0x68]
02c0430c  cbz x8,0x02c04350
02c04310  mov x22,xzr
02c04314  ldr w9,[x8, #0x18]
02c04318  cmp w22,w9
02c0431c  b.ge 0x02c04354
02c04320  cmp w22,w9
02c04324  b.cs 0x02c04390
02c04328  add x8,x8,x22, LSL #0x3
02c0432c  ldr x0,[x8, #0x20]
02c04330  cbz x0,0x02c04350
02c04334  cmp w21,w22
02c04338  mov x2,xzr
02c0433c  cset w1,eq
02c04340  bl 0x057dff3c
02c04344  ldr x8,[x20, #0x68]
02c04348  add x22,x22,#0x1
02c0434c  cbnz x8,0x02c04314
02c04350  bl 0x029f5cfc
02c04354  ldr x20,[x20, #0x70]
02c04358  mov w0,w19
02c0435c  mov x1,xzr
02c04360  bl 0x02c5b2ac
02c04364  cbz x20,0x02c04350
02c04368  ldr x8,[x20]
02c0436c  mov x1,x0
02c04370  mov x0,x20
02c04374  ldp x20,x19,[sp, #0x30]
02c04378  ldp x22,x21,[sp, #0x20]
02c0437c  ldr x2,[x8, #0x560]
02c04380  ldp x24,x23,[sp, #0x10]
02c04384  ldr x3,[x8, #0x558]
02c04388  ldr x30,[sp], #0x40
02c0438c  br x3
02c04390  bl 0x029f5d04
