02c53124  str x30,[sp, #-0x30]!
02c53128  stp x22,x21,[sp, #0x10]
02c5312c  stp x20,x19,[sp, #0x20]
02c53130  adrp x22,0x625c000
02c53134  adrp x21,0x5e5e000
02c53138  adrp x20,0x5e59000
02c5313c  ldrb w8,[x22, #0x16a]
02c53140  ldr x21,[x21, #0x68]
02c53144  ldr x20,[x20, #0x1c0]
02c53148  mov x19,x0
02c5314c  tbnz w8,#0x0,0x02c53170
02c53150  adrp x0,0x5e59000
02c53154  ldr x0,[x0, #0x1c0]
02c53158  bl 0x029f5a50
02c5315c  adrp x0,0x5e5e000
02c53160  ldr x0,[x0, #0x68]
02c53164  bl 0x029f5a50
02c53168  mov w8,#0x1
02c5316c  strb w8,[x22, #0x16a]
02c53170  ldr x8,[x21]
02c53174  ldr x0,[x20]
02c53178  ldr x8,[x8, #0xb8]
02c5317c  ldr w9,[x0, #0xe4]
02c53180  ldr x20,[x8]
02c53184  cbnz w9,0x02c5318c
02c53188  bl 0x029f5bd0
02c5318c  mov x0,x20
02c53190  mov x1,xzr
02c53194  mov x2,xzr
02c53198  bl 0x057e14b4
02c5319c  tbz w0,#0x0,0x02c531b0
02c531a0  ldp x20,x19,[sp, #0x20]
02c531a4  ldp x22,x21,[sp, #0x10]
02c531a8  ldr x30,[sp], #0x30
02c531ac  ret
02c531b0  ldr x8,[x21]
02c531b4  ldr x8,[x8, #0xb8]
02c531b8  ldr x0,[x8]
02c531bc  cbz x0,0x02c531d4
02c531c0  ldr w1,[x19, #0x60]
02c531c4  ldp x20,x19,[sp, #0x20]
02c531c8  ldp x22,x21,[sp, #0x10]
02c531cc  ldr x30,[sp], #0x30
02c531d0  b 0x02c531d8
02c531d4  bl 0x029f5cfc
