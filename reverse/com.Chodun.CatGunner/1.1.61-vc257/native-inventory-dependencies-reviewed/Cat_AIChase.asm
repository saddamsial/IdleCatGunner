02c40094  stp d13,d12,[sp, #-0x50]!
02c40098  stp d11,d10,[sp, #0x10]
02c4009c  stp d9,d8,[sp, #0x20]
02c400a0  stp x30,x21,[sp, #0x30]
02c400a4  stp x20,x19,[sp, #0x40]
02c400a8  adrp x21,0x625c000
02c400ac  adrp x20,0x5e59000
02c400b0  mov x19,x0
02c400b4  ldrb w8,[x21, #0x9f]
02c400b8  ldr x20,[x20, #0x1c0]
02c400bc  tbnz w8,#0x0,0x02c400d4
02c400c0  adrp x0,0x5e59000
02c400c4  ldr x0,[x0, #0x1c0]
02c400c8  bl 0x029f5a50
02c400cc  mov w8,#0x1
02c400d0  strb w8,[x21, #0x9f]
02c400d4  ldr x0,[x20]
02c400d8  ldr x20,[x19, #0x1e0]
02c400dc  ldr w8,[x0, #0xe4]
02c400e0  cbnz w8,0x02c400e8
02c400e4  bl 0x029f5bd0
02c400e8  mov x0,x20
02c400ec  mov x1,xzr
02c400f0  mov x2,xzr
02c400f4  bl 0x057e14b4
02c400f8  tbz w0,#0x0,0x02c40114
02c400fc  ldp x20,x19,[sp, #0x40]
02c40100  ldp x30,x21,[sp, #0x30]
02c40104  ldp d9,d8,[sp, #0x20]
02c40108  ldp d11,d10,[sp, #0x10]
02c4010c  ldp d13,d12,[sp], #0x50
02c40110  ret
02c40114  ldr s0,[x19, #0x1e8]
02c40118  ldr s1,[x19, #0x1ec]
02c4011c  mov x0,x19
02c40120  ldr s2,[x19, #0x1f0]
02c40124  ldr s3,[x19, #0x150]
02c40128  bl 0x02c4091c
02c4012c  mov x0,x19
02c40130  mov x1,xzr
02c40134  fmov s8,s0
02c40138  fmov s9,s1
02c4013c  fmov s10,s2
02c40140  bl 0x057dc0f8
02c40144  cbz x0,0x02c40204
02c40148  mov x1,xzr
02c4014c  bl 0x057eed98
02c40150  fmov s11,s0
02c40154  fmov s12,s1
02c40158  adrp x20,0x625c000
02c4015c  fmov s13,s2
02c40160  ldrb w8,[x20, #0xbe]
02c40164  cbnz w8,0x02c4017c
02c40168  adrp x0,0x5e59000
02c4016c  ldr x0,[x0]
02c40170  bl 0x029f5a50
02c40174  mov w8,#0x1
02c40178  strb w8,[x20, #0xbe]
02c4017c  adrp x8,0x5e59000
02c40180  ldr x8,[x8]
02c40184  ldr x0,[x8]
02c40188  ldr w8,[x0, #0xe4]
02c4018c  cbnz w8,0x02c40194
02c40190  bl 0x029f5bd0
02c40194  fsub s0,s12,s9
02c40198  fsub s1,s11,s8
02c4019c  mov x0,x19
02c401a0  fsub s2,s13,s10
02c401a4  fmul s1,s1,s1
02c401a8  fmul s0,s0,s0
02c401ac  fadd s0,s1,s0
02c401b0  fmul s1,s2,s2
02c401b4  fadd s0,s1,s0
02c401b8  fmov s1,0x3f000000
02c401bc  fsqrt s0,s0
02c401c0  fcmp s0,s1
02c401c4  b.pl 0x02c401e0
02c401c8  ldp x20,x19,[sp, #0x40]
02c401cc  ldp x30,x21,[sp, #0x30]
02c401d0  ldp d9,d8,[sp, #0x20]
02c401d4  ldp d11,d10,[sp, #0x10]
02c401d8  ldp d13,d12,[sp], #0x50
02c401dc  b 0x02c3d9a0
02c401e0  fmov s0,s8
02c401e4  fmov s1,s9
02c401e8  fmov s2,s10
02c401ec  ldp x20,x19,[sp, #0x40]
02c401f0  ldp x30,x21,[sp, #0x30]
02c401f4  ldp d9,d8,[sp, #0x20]
02c401f8  ldp d11,d10,[sp, #0x10]
02c401fc  ldp d13,d12,[sp], #0x50
02c40200  b 0x02c3e32c
02c40204  bl 0x029f5cfc
