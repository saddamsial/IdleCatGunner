02b800f4  str d10,[sp, #-0x40]!
02b800f8  stp d9,d8,[sp, #0x10]
02b800fc  stp x30,x21,[sp, #0x20]
02b80100  stp x20,x19,[sp, #0x30]
02b80104  fmov s8,s2
02b80108  fmov s9,s1
02b8010c  adrp x21,0x625b000
02b80110  fmov s10,s0
02b80114  adrp x20,0x5e59000
02b80118  ldrb w8,[x21, #0x8ce]
02b8011c  ldr x20,[x20, #0x1c0]
02b80120  mov x19,x0
02b80124  tbnz w8,#0x0,0x02b80154
02b80128  adrp x0,0x5e5d000
02b8012c  ldr x0,[x0, #0x338]
02b80130  bl 0x029f5a50
02b80134  adrp x0,0x5e59000
02b80138  ldr x0,[x0, #0x1c0]
02b8013c  bl 0x029f5a50
02b80140  adrp x0,0x5e5d000
02b80144  ldr x0,[x0, #0x578]
02b80148  bl 0x029f5a50
02b8014c  mov w8,#0x1
02b80150  strb w8,[x21, #0x8ce]
02b80154  mov x0,xzr
02b80158  bl 0x05797adc
02b8015c  ldr x8,[x20]
02b80160  mov x20,x0
02b80164  ldr w9,[x8, #0xe4]
02b80168  cbnz w9,0x02b80174
02b8016c  mov x0,x8
02b80170  bl 0x029f5bd0
02b80174  mov x0,x20
02b80178  mov x1,xzr
02b8017c  mov x2,xzr
02b80180  bl 0x057e14b4
02b80184  tbnz w0,#0x0,0x02b801f4
02b80188  adrp x8,0x5e5d000
02b8018c  ldr x8,[x8, #0x338]
02b80190  ldr x0,[x8]
02b80194  ldr w8,[x0, #0xe4]
02b80198  cbnz w8,0x02b801a0
02b8019c  bl 0x029f5bd0
02b801a0  fmov s0,s10
02b801a4  fmov s1,s9
02b801a8  adrp x8,0x116b000
02b801ac  fmov s2,s8
02b801b0  ldr s3,[x8, #0xfbc]
02b801b4  bl 0x02b80354
02b801b8  tbz w0,#0x0,0x02b801f4
02b801bc  bl 0x02b80610
02b801c0  cbz x0,0x02b80208
02b801c4  adrp x8,0x5e5d000
02b801c8  mov x2,x19
02b801cc  fmov s1,s9
02b801d0  ldr x8,[x8, #0x578]
02b801d4  fmov s2,s8
02b801d8  fmov s0,s10
02b801dc  ldp x20,x19,[sp, #0x30]
02b801e0  ldp x30,x21,[sp, #0x20]
02b801e4  ldr x1,[x8]
02b801e8  ldp d9,d8,[sp, #0x10]
02b801ec  ldr d10,[sp], #0x40
02b801f0  b 0x02b80694
02b801f4  ldp x20,x19,[sp, #0x30]
02b801f8  ldp x30,x21,[sp, #0x20]
02b801fc  ldp d9,d8,[sp, #0x10]
02b80200  ldr d10,[sp], #0x40
02b80204  ret
02b80208  bl 0x029f5cfc
