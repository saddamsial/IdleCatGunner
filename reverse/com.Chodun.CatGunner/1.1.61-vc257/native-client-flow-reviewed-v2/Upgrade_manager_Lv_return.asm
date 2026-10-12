02caf208  stp x30,x21,[sp, #-0x20]!
02caf20c  stp x20,x19,[sp, #0x10]
02caf210  adrp x21,0x625c000
02caf214  adrp x20,0x5e5d000
02caf218  mov w19,w0
02caf21c  ldrb w8,[x21, #0x559]
02caf220  ldr x20,[x20, #0x4e8]
02caf224  tbnz w8,#0x0,0x02caf23c
02caf228  adrp x0,0x5e5d000
02caf22c  ldr x0,[x0, #0x4e8]
02caf230  bl 0x029f5a50
02caf234  mov w8,#0x1
02caf238  strb w8,[x21, #0x559]
02caf23c  ldr x0,[x20]
02caf240  ldr w8,[x0, #0xe4]
02caf244  cbnz w8,0x02caf250
02caf248  bl 0x029f5bd0
02caf24c  ldr x0,[x20]
02caf250  ldr x8,[x0, #0xb8]
02caf254  ldr x8,[x8]
02caf258  cbz x8,0x02caf290
02caf25c  ldr x8,[x8, #0x20]
02caf260  cbz x8,0x02caf290
02caf264  ldr w9,[x8, #0x18]
02caf268  cmp w9,w19
02caf26c  b.ls 0x02caf294
02caf270  add x8,x8,w19, SXTW  #0x3
02caf274  ldr x8,[x8, #0x20]
02caf278  cbz x8,0x02caf290
02caf27c  ldp x0,x1,[x8, #0x18]
02caf280  mov x2,xzr
02caf284  ldp x20,x19,[sp, #0x10]
02caf288  ldp x30,x21,[sp], #0x20
02caf28c  b 0x02b1e644
02caf290  bl 0x029f5cfc
02caf294  bl 0x029f5d04
