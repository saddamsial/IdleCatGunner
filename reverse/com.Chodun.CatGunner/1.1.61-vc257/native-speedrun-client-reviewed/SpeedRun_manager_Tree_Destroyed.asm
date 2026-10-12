02caa0bc  str x30,[sp, #-0x30]!
02caa0c0  stp x22,x21,[sp, #0x10]
02caa0c4  stp x20,x19,[sp, #0x20]
02caa0c8  adrp x22,0x625c000
02caa0cc  adrp x21,0x5e5d000
02caa0d0  mov x20,x1
02caa0d4  ldrb w8,[x22, #0x501]
02caa0d8  ldr x21,[x21, #0x338]
02caa0dc  mov x19,x0
02caa0e0  tbnz w8,#0x0,0x02caa104
02caa0e4  adrp x0,0x5e5d000
02caa0e8  ldr x0,[x0, #0x338]
02caa0ec  bl 0x029f5a50
02caa0f0  adrp x0,0x5e64000
02caa0f4  ldr x0,[x0, #0xa18]
02caa0f8  bl 0x029f5a50
02caa0fc  mov w8,#0x1
02caa100  strb w8,[x22, #0x501]
02caa104  ldr x0,[x21]
02caa108  ldr w8,[x0, #0xe4]
02caa10c  cbnz w8,0x02caa118
02caa110  bl 0x029f5bd0
02caa114  ldr x0,[x21]
02caa118  ldr x8,[x0, #0xb8]
02caa11c  ldrb w8,[x8]
02caa120  cbz w8,0x02caa178
02caa124  ldr x0,[x19, #0x28]
02caa128  cbz x0,0x02caa19c
02caa12c  adrp x8,0x5e64000
02caa130  mov x1,x20
02caa134  ldr x8,[x8, #0xa18]
02caa138  ldr x2,[x8]
02caa13c  bl 0x0452e0a8
02caa140  ldr w8,[x19, #0x58]
02caa144  ldr x0,[x19, #0x80]
02caa148  sub w8,w8,#0x1
02caa14c  str w8,[x19, #0x58]
02caa150  cbz x0,0x02caa19c
02caa154  ldr w9,[x19, #0x5c]
02caa158  sub w8,w9,w8
02caa15c  scvtf s1,w9
02caa160  scvtf s0,w8
02caa164  fdiv s0,s0,s1
02caa168  bl 0x02ca90e8
02caa16c  ldr w8,[x19, #0x58]
02caa170  cmp w8,#0x0
02caa174  b.le 0x02caa188
02caa178  ldp x20,x19,[sp, #0x20]
02caa17c  ldp x22,x21,[sp, #0x10]
02caa180  ldr x30,[sp], #0x30
02caa184  ret
02caa188  mov x0,x19
02caa18c  ldp x20,x19,[sp, #0x20]
02caa190  ldp x22,x21,[sp, #0x10]
02caa194  ldr x30,[sp], #0x30
02caa198  b 0x02ca8ed4
02caa19c  bl 0x029f5cfc
