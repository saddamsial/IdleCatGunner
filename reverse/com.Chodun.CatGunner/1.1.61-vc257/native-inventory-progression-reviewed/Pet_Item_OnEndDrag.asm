02c7feb0  str x30,[sp, #-0x30]!
02c7feb4  stp x22,x21,[sp, #0x10]
02c7feb8  stp x20,x19,[sp, #0x20]
02c7febc  adrp x21,0x625c000
02c7fec0  mov x20,x1
02c7fec4  mov x19,x0
02c7fec8  ldrb w8,[x21, #0x34d]
02c7fecc  tbnz w8,#0x0,0x02c7ff14
02c7fed0  adrp x0,0x5e58000
02c7fed4  ldr x0,[x0, #0xf08]
02c7fed8  bl 0x029f5a50
02c7fedc  adrp x0,0x5e59000
02c7fee0  ldr x0,[x0, #0x1c0]
02c7fee4  bl 0x029f5a50
02c7fee8  adrp x0,0x5e63000
02c7feec  ldr x0,[x0, #0xd98]
02c7fef0  bl 0x029f5a50
02c7fef4  adrp x0,0x5e5d000
02c7fef8  ldr x0,[x0, #0x4d0]
02c7fefc  bl 0x029f5a50
02c7ff00  adrp x0,0x5e63000
02c7ff04  ldr x0,[x0, #0xbe8]
02c7ff08  bl 0x029f5a50
02c7ff0c  mov w8,#0x1
02c7ff10  strb w8,[x21, #0x34d]
02c7ff14  ldrb w8,[x19, #0x90]
02c7ff18  cbz w8,0x02c801bc
02c7ff1c  ldr x0,[x19, #0x80]
02c7ff20  strb wzr,[x19, #0x90]
02c7ff24  cbz x0,0x02c801cc
02c7ff28  adrp x22,0x5e59000
02c7ff2c  mov w1,#0x1
02c7ff30  mov x2,xzr
02c7ff34  ldr x22,[x22, #0x1c0]
02c7ff38  bl 0x05a9f1dc
02c7ff3c  bl 0x02c801d0
02c7ff40  bl 0x02c80368
02c7ff44  mov x0,x19
02c7ff48  bl 0x02c7edb8
02c7ff4c  mov x0,x19
02c7ff50  mov x1,x20
02c7ff54  bl 0x02c804e8
02c7ff58  ldr x8,[x22]
02c7ff5c  mov x20,x0
02c7ff60  ldr w9,[x8, #0xe4]
02c7ff64  cbnz w9,0x02c7ff70
02c7ff68  mov x0,x8
02c7ff6c  bl 0x029f5bd0
02c7ff70  mov x0,x20
02c7ff74  mov x1,xzr
02c7ff78  mov x2,xzr
02c7ff7c  bl 0x057dfa70
02c7ff80  tbz w0,#0x0,0x02c7ffe0
02c7ff84  mov x0,x19
02c7ff88  bl 0x02c807c4
02c7ff8c  adrp x8,0x5e63000
02c7ff90  ldr x8,[x8, #0xd98]
02c7ff94  ldr x8,[x8]
02c7ff98  ldr x8,[x8, #0xb8]
02c7ff9c  ldr x0,[x8]
02c7ffa0  cbz x0,0x02c801cc
02c7ffa4  mov x1,x19
02c7ffa8  mov x2,x20
02c7ffac  mov x3,xzr
02c7ffb0  bl 0x02c8339c
02c7ffb4  mov x0,x19
02c7ffb8  mov x1,xzr
02c7ffbc  str xzr,[x0, #0x98]!
02c7ffc0  bl 0x029f59f4
02c7ffc4  str xzr,[x19, #0xa0]!
02c7ffc8  mov x0,x19
02c7ffcc  ldp x20,x19,[sp, #0x20]
02c7ffd0  mov x1,xzr
02c7ffd4  ldp x22,x21,[sp, #0x10]
02c7ffd8  ldr x30,[sp], #0x30
02c7ffdc  b 0x029f59f4
02c7ffe0  ldr x0,[x22]
02c7ffe4  mov x21,x19
02c7ffe8  ldr x20,[x21, #0x98]!
02c7ffec  ldr w8,[x0, #0xe4]
02c7fff0  cbnz w8,0x02c7fff8
02c7fff4  bl 0x029f5bd0
02c7fff8  mov x0,x20
02c7fffc  mov x1,xzr
02c80000  mov x2,xzr
02c80004  bl 0x057dfa70
02c80008  tbz w0,#0x0,0x02c80084
02c8000c  ldr x20,[x19, #0x98]
02c80010  mov x0,x21
02c80014  mov x1,xzr
02c80018  str xzr,[x19, #0x98]
02c8001c  bl 0x029f59f4
02c80020  mov x0,x19
02c80024  bl 0x02c807c4
02c80028  adrp x21,0x5e5d000
02c8002c  ldr x21,[x21, #0x4d0]
02c80030  ldr x0,[x21]
02c80034  ldr w8,[x0, #0xe4]
02c80038  cbnz w8,0x02c80044
02c8003c  bl 0x029f5bd0
02c80040  ldr x0,[x21]
02c80044  ldr x8,[x0, #0xb8]
02c80048  ldr x9,[x8, #0x28]
02c8004c  cbz x9,0x02c801cc
02c80050  ldr w8,[x19, #0x68]
02c80054  ldr x22,[x9, #0x38]
02c80058  tbnz w8,#0x1f,0x02c800b8
02c8005c  cbz x22,0x02c801cc
02c80060  ldr w9,[x22, #0x18]
02c80064  cmp w8,w9
02c80068  b.ge 0x02c800b8
02c8006c  add x8,x22,x8, LSL #0x2
02c80070  ldr w9,[x19, #0x64]
02c80074  ldr w8,[x8, #0x20]
02c80078  cmp w8,w9
02c8007c  cset w21,eq
02c80080  b 0x02c800bc
02c80084  ldr x0,[x22]
02c80088  ldr x20,[x19, #0xa0]
02c8008c  ldr w8,[x0, #0xe4]
02c80090  cbnz w8,0x02c80098
02c80094  bl 0x029f5bd0
02c80098  mov x0,x20
02c8009c  mov x1,xzr
02c800a0  mov x2,xzr
02c800a4  bl 0x057dfa70
02c800a8  tbz w0,#0x0,0x02c80144
02c800ac  mov x0,x19
02c800b0  bl 0x02c808bc
02c800b4  b 0x02c801a4
02c800b8  mov w21,wzr
02c800bc  cbz x20,0x02c801cc
02c800c0  mov x0,x20
02c800c4  mov x1,xzr
02c800c8  bl 0x057dc1c8
02c800cc  cbz x0,0x02c801cc
02c800d0  mov x1,xzr
02c800d4  bl 0x057e0000
02c800d8  tbz w0,#0x0,0x02c8010c
02c800dc  ldr w8,[x20, #0x68]
02c800e0  tbnz w8,#0x1f,0x02c8010c
02c800e4  cbz x22,0x02c801cc
02c800e8  ldr w9,[x22, #0x18]
02c800ec  cmp w8,w9
02c800f0  b.ge 0x02c8010c
02c800f4  add x8,x22,x8, LSL #0x2
02c800f8  ldr w9,[x20, #0x64]
02c800fc  ldr w8,[x8, #0x20]
02c80100  cmp w8,w9
02c80104  cset w8,eq
02c80108  b 0x02c80110
02c8010c  mov w8,wzr
02c80110  tst w8,w21
02c80114  b.eq 0x02c80158
02c80118  adrp x8,0x5e63000
02c8011c  ldr x8,[x8, #0xd98]
02c80120  ldr x8,[x8]
02c80124  ldr x8,[x8, #0xb8]
02c80128  ldr x0,[x8]
02c8012c  cbz x0,0x02c801cc
02c80130  mov x1,x19
02c80134  mov x2,x20
02c80138  mov x3,xzr
02c8013c  bl 0x02c82c7c
02c80140  b 0x02c801a4
02c80144  mov x0,x19
02c80148  bl 0x02c807c4
02c8014c  mov x0,x19
02c80150  bl 0x02c80a84
02c80154  b 0x02c801a4
02c80158  adrp x8,0x5e58000
02c8015c  ldr x8,[x8, #0xf08]
02c80160  ldr x0,[x8]
02c80164  ldr w8,[x0, #0xe4]
02c80168  cbnz w8,0x02c80170
02c8016c  bl 0x029f5bd0
02c80170  adrp x8,0x5e63000
02c80174  mov x1,xzr
02c80178  ldr x8,[x8, #0xbe8]
02c8017c  ldr x0,[x8]
02c80180  bl 0x0579a8d0
02c80184  adrp x8,0x5e63000
02c80188  ldr x8,[x8, #0xd98]
02c8018c  ldr x8,[x8]
02c80190  ldr x8,[x8, #0xb8]
02c80194  ldr x0,[x8]
02c80198  cbz x0,0x02c801cc
02c8019c  mov x1,xzr
02c801a0  bl 0x02c825a8
02c801a4  str xzr,[x19, #0xa0]!
02c801a8  mov x0,x19
02c801ac  mov x1,xzr
02c801b0  bl 0x029f59f4
02c801b4  mov w8,#0xffffffff
02c801b8  str w8,[x19, #0x8]
02c801bc  ldp x20,x19,[sp, #0x20]
02c801c0  ldp x22,x21,[sp, #0x10]
02c801c4  ldr x30,[sp], #0x30
02c801c8  ret
02c801cc  bl 0x029f5cfc
