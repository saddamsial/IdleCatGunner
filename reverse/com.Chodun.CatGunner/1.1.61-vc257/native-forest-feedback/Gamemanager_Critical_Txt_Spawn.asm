02b8020c  str d10,[sp, #-0x40]!
02b80210  stp d9,d8,[sp, #0x10]
02b80214  stp x30,x21,[sp, #0x20]
02b80218  stp x20,x19,[sp, #0x30]
02b8021c  fmov s8,s2
02b80220  fmov s9,s1
02b80224  adrp x21,0x625b000
02b80228  fmov s10,s0
02b8022c  adrp x20,0x5e59000
02b80230  ldrb w8,[x21, #0x8cf]
02b80234  ldr x20,[x20, #0x1c0]
02b80238  mov x19,x0
02b8023c  tbnz w8,#0x0,0x02b80278
02b80240  adrp x0,0x5e5d000
02b80244  ldr x0,[x0, #0x338]
02b80248  bl 0x029f5a50
02b8024c  adrp x0,0x5e59000
02b80250  ldr x0,[x0, #0x1c0]
02b80254  bl 0x029f5a50
02b80258  adrp x0,0x5e5d000
02b8025c  ldr x0,[x0, #0x528]
02b80260  bl 0x029f5a50
02b80264  adrp x0,0x5e5d000
02b80268  ldr x0,[x0, #0x580]
02b8026c  bl 0x029f5a50
02b80270  mov w8,#0x1
02b80274  strb w8,[x21, #0x8cf]
02b80278  mov x0,xzr
02b8027c  bl 0x05797adc
02b80280  ldr x8,[x20]
02b80284  mov x20,x0
02b80288  ldr w9,[x8, #0xe4]
02b8028c  cbnz w9,0x02b80298
02b80290  mov x0,x8
02b80294  bl 0x029f5bd0
02b80298  mov x0,x20
02b8029c  mov x1,xzr
02b802a0  mov x2,xzr
02b802a4  bl 0x057e14b4
02b802a8  tbnz w0,#0x0,0x02b8033c
02b802ac  adrp x8,0x5e5d000
02b802b0  ldr x8,[x8, #0x338]
02b802b4  ldr x0,[x8]
02b802b8  ldr w8,[x0, #0xe4]
02b802bc  cbnz w8,0x02b802c4
02b802c0  bl 0x029f5bd0
02b802c4  fmov s0,s10
02b802c8  fmov s1,s9
02b802cc  adrp x8,0x116b000
02b802d0  fmov s2,s8
02b802d4  ldr s3,[x8, #0xfbc]
02b802d8  bl 0x02b80354
02b802dc  tbz w0,#0x0,0x02b8033c
02b802e0  bl 0x02b80610
02b802e4  adrp x8,0x5e5d000
02b802e8  mov x20,x0
02b802ec  mov x1,x19
02b802f0  ldr x8,[x8, #0x528]
02b802f4  mov x2,xzr
02b802f8  ldr x8,[x8]
02b802fc  mov x0,x8
02b80300  bl 0x046b2d44
02b80304  cbz x20,0x02b80350
02b80308  adrp x8,0x5e5d000
02b8030c  mov x2,x0
02b80310  mov x0,x20
02b80314  ldr x8,[x8, #0x580]
02b80318  fmov s1,s9
02b8031c  fmov s2,s8
02b80320  ldp x20,x19,[sp, #0x30]
02b80324  fmov s0,s10
02b80328  ldp x30,x21,[sp, #0x20]
02b8032c  ldr x1,[x8]
02b80330  ldp d9,d8,[sp, #0x10]
02b80334  ldr d10,[sp], #0x40
02b80338  b 0x02b80694
02b8033c  ldp x20,x19,[sp, #0x30]
02b80340  ldp x30,x21,[sp, #0x20]
02b80344  ldp d9,d8,[sp, #0x10]
02b80348  ldr d10,[sp], #0x40
02b8034c  ret
02b80350  bl 0x029f5cfc
