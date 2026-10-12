02c4424c  str x30,[sp, #-0x30]!
02c44250  stp x22,x21,[sp, #0x10]
02c44254  stp x20,x19,[sp, #0x20]
02c44258  adrp x21,0x625c000
02c4425c  adrp x22,0x5e59000
02c44260  mov w20,w1
02c44264  ldrb w8,[x21, #0xc8]
02c44268  ldr x22,[x22, #0x1c0]
02c4426c  mov x19,x0
02c44270  tbnz w8,#0x0,0x02c442a0
02c44274  adrp x0,0x5e5d000
02c44278  ldr x0,[x0, #0xd40]
02c4427c  bl 0x029f5a50
02c44280  adrp x0,0x5e59000
02c44284  ldr x0,[x0, #0x1c0]
02c44288  bl 0x029f5a50
02c4428c  adrp x0,0x5e5e000
02c44290  ldr x0,[x0, #0x70]
02c44294  bl 0x029f5a50
02c44298  mov w8,#0x1
02c4429c  strb w8,[x21, #0xc8]
02c442a0  ldr x0,[x22]
02c442a4  ldr x21,[x19, #0x28]
02c442a8  ldr w8,[x0, #0xe4]
02c442ac  cbnz w8,0x02c442b4
02c442b0  bl 0x029f5bd0
02c442b4  mov x0,x21
02c442b8  mov x1,xzr
02c442bc  mov x2,xzr
02c442c0  bl 0x057e14b4
02c442c4  tbz w0,#0x0,0x02c442d8
02c442c8  ldp x20,x19,[sp, #0x20]
02c442cc  ldp x22,x21,[sp, #0x10]
02c442d0  ldr x30,[sp], #0x30
02c442d4  ret
02c442d8  tbz w20,#0x0,0x02c444a4
02c442dc  adrp x21,0x5e5e000
02c442e0  ldr x21,[x21, #0x70]
02c442e4  ldr x0,[x21]
02c442e8  ldr w8,[x0, #0xe4]
02c442ec  cbnz w8,0x02c442f8
02c442f0  bl 0x029f5bd0
02c442f4  ldr x0,[x21]
02c442f8  ldr x8,[x22]
02c442fc  ldr x9,[x0, #0xb8]
02c44300  ldr w10,[x8, #0xe4]
02c44304  ldr x20,[x9]
02c44308  cbnz w10,0x02c44314
02c4430c  mov x0,x8
02c44310  bl 0x029f5bd0
02c44314  mov x0,x20
02c44318  mov x1,xzr
02c4431c  mov x2,xzr
02c44320  bl 0x057dfa70
02c44324  tbz w0,#0x0,0x02c444a4
02c44328  ldr x0,[x21]
02c4432c  ldr w8,[x0, #0xe4]
02c44330  cbnz w8,0x02c4433c
02c44334  bl 0x029f5bd0
02c44338  ldr x0,[x21]
02c4433c  ldr x8,[x0, #0xb8]
02c44340  ldr x0,[x8]
02c44344  cbz x0,0x02c444d0
02c44348  bl 0x02c444d8
02c4434c  tbz w0,#0x0,0x02c444a4
02c44350  ldr x0,[x21]
02c44354  ldr w8,[x0, #0xe4]
02c44358  cbnz w8,0x02c44360
02c4435c  bl 0x029f5bd0
02c44360  bl 0x02c44548
02c44364  cmn w0,#0x1
02c44368  b.eq 0x02c444a4
02c4436c  mov w20,w0
02c44370  ldr x0,[x19, #0x28]
02c44374  cbz x0,0x02c444d0
02c44378  mov x1,xzr
02c4437c  bl 0x057dc1c8
02c44380  cbz x0,0x02c444d0
02c44384  mov x1,xzr
02c44388  bl 0x057e0000
02c4438c  adrp x8,0x5e5d000
02c44390  ldr x8,[x8, #0xd40]
02c44394  ldr x8,[x8]
02c44398  ldr x8,[x8, #0xb8]
02c4439c  ldr x8,[x8]
02c443a0  cbz x8,0x02c444d0
02c443a4  ldr x8,[x8, #0x20]
02c443a8  cbz x8,0x02c444d0
02c443ac  ldr w9,[x8, #0x18]
02c443b0  cmp w20,w9
02c443b4  b.cs 0x02c444d4
02c443b8  mov w21,w0
02c443bc  ldr x0,[x19, #0x28]
02c443c0  cbz x0,0x02c444d0
02c443c4  add x8,x8,w20, SXTW  #0x3
02c443c8  mov w1,w20
02c443cc  mov x3,xzr
02c443d0  ldr x2,[x8, #0x20]
02c443d4  bl 0x02c38f10
02c443d8  ldr x0,[x19, #0x28]
02c443dc  cbz x0,0x02c444d0
02c443e0  mov x1,xzr
02c443e4  bl 0x057dc1c8
02c443e8  cbz x0,0x02c444d0
02c443ec  mov w1,#0x1
02c443f0  mov x2,xzr
02c443f4  bl 0x057dff3c
02c443f8  tbnz w21,#0x0,0x02c442c8
02c443fc  ldr x8,[x19, #0x20]
02c44400  cbz x8,0x02c442c8
02c44404  ldr x9,[x8, #0x18]
02c44408  cbz x9,0x02c442c8
02c4440c  cbz w9,0x02c444d4
02c44410  ldr x0,[x22]
02c44414  ldr x20,[x8, #0x20]
02c44418  ldr w9,[x0, #0xe4]
02c4441c  cbnz w9,0x02c44424
02c44420  bl 0x029f5bd0
02c44424  mov x0,x20
02c44428  mov x1,xzr
02c4442c  mov x2,xzr
02c44430  bl 0x057dfa70
02c44434  tbz w0,#0x0,0x02c442c8
02c44438  ldr x8,[x19, #0x20]
02c4443c  cbz x8,0x02c444d0
02c44440  ldr w9,[x8, #0x18]
02c44444  cbz w9,0x02c444d4
02c44448  ldr x0,[x8, #0x20]
02c4444c  cbz x0,0x02c444d0
02c44450  ldr x20,[x19, #0x28]
02c44454  mov x1,xzr
02c44458  bl 0x057dc0f8
02c4445c  cbz x0,0x02c444d0
02c44460  mov x1,xzr
02c44464  bl 0x057eed98
02c44468  ldr x8,[x19, #0x28]
02c4446c  cbz x8,0x02c444d0
02c44470  cbz x20,0x02c444d0
02c44474  ldr s3,[x8, #0x1c4]
02c44478  ldr s4,[x8, #0x1cc]
02c4447c  mov x0,x20
02c44480  ldr s5,[x8, #0x1c8]
02c44484  ldp x20,x19,[sp, #0x20]
02c44488  ldp x22,x21,[sp, #0x10]
02c4448c  fadd s0,s0,s3
02c44490  fadd s2,s2,s4
02c44494  fadd s1,s1,s5
02c44498  mov x1,xzr
02c4449c  ldr x30,[sp], #0x30
02c444a0  b 0x02c42da4
02c444a4  ldr x0,[x19, #0x28]
02c444a8  cbz x0,0x02c444d0
02c444ac  mov x1,xzr
02c444b0  bl 0x057dc1c8
02c444b4  cbz x0,0x02c444d0
02c444b8  ldp x20,x19,[sp, #0x20]
02c444bc  mov w1,wzr
02c444c0  ldp x22,x21,[sp, #0x10]
02c444c4  mov x2,xzr
02c444c8  ldr x30,[sp], #0x30
02c444cc  b 0x057dff3c
02c444d0  bl 0x029f5cfc
02c444d4  bl 0x029f5d04
