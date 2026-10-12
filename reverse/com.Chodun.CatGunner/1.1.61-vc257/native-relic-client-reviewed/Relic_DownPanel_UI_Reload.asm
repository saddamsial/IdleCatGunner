02c2ffa8  sub sp,sp,#0x60
02c2ffac  stp x30,x25,[sp, #0x20]
02c2ffb0  stp x24,x23,[sp, #0x30]
02c2ffb4  stp x22,x21,[sp, #0x40]
02c2ffb8  stp x20,x19,[sp, #0x50]
02c2ffbc  adrp x20,0x625c000
02c2ffc0  adrp x23,0x5e5d000
02c2ffc4  mov x19,x0
02c2ffc8  ldrb w8,[x20, #0x26]
02c2ffcc  ldr x23,[x23, #0xd28]
02c2ffd0  tbnz w8,#0x0,0x02c30000
02c2ffd4  adrp x0,0x5e5d000
02c2ffd8  ldr x0,[x0, #0xd28]
02c2ffdc  bl 0x029f5a50
02c2ffe0  adrp x0,0x5e5e000
02c2ffe4  ldr x0,[x0, #0x528]
02c2ffe8  bl 0x029f5a50
02c2ffec  adrp x0,0x5e63000
02c2fff0  ldr x0,[x0, #0x40]
02c2fff4  bl 0x029f5a50
02c2fff8  mov w8,#0x1
02c2fffc  strb w8,[x20, #0x26]
02c30000  ldr x0,[x23]
02c30004  ldr w20,[x19, #0x60]
02c30008  str xzr,[sp, #0x18]
02c3000c  ldr w8,[x0, #0xe4]
02c30010  cbnz w8,0x02c30018
02c30014  bl 0x029f5bd0
02c30018  mov w0,w20
02c3001c  bl 0x02c2cc20
02c30020  ldr w8,[x19, #0x60]
02c30024  str w0,[sp, #0x1c]
02c30028  mov w0,w8
02c3002c  bl 0x02c2cf08
02c30030  ldr x8,[x19, #0x30]
02c30034  cbz x8,0x02c30300
02c30038  mov x20,x0
02c3003c  mov x0,x8
02c30040  mov x2,xzr
02c30044  mov x1,x20
02c30048  bl 0x058d34cc
02c3004c  ldr x21,[x19, #0x38]
02c30050  add x0,sp,#0x1c
02c30054  mov x1,xzr
02c30058  bl 0x0484e6a4
02c3005c  cbz x21,0x02c30300
02c30060  adrp x25,0x5e5e000
02c30064  adrp x22,0x5e63000
02c30068  mov x1,x0
02c3006c  ldr x25,[x25, #0x528]
02c30070  ldr x8,[x21]
02c30074  ldr x22,[x22, #0x40]
02c30078  mov x0,x21
02c3007c  ldr x9,[x8, #0x558]
02c30080  ldr x2,[x8, #0x560]
02c30084  blr x9
02c30088  ldrsw x8,[sp, #0x1c]
02c3008c  mov w9,#0x6667
02c30090  ldr x0,[x25]
02c30094  movk w9,#0x6666, LSL #16
02c30098  ldr x21,[x19, #0x48]
02c3009c  smull x8,w8,w9
02c300a0  lsr x9,x8,#0x3f
02c300a4  asr x8,x8,#0x23
02c300a8  add w8,w8,w9
02c300ac  ldr w9,[x0, #0xe4]
02c300b0  cmp w8,#0x1
02c300b4  csinc w24,w8,wzr,gt
02c300b8  add w8,w24,w24, LSL #0x2
02c300bc  lsl w8,w8,#0x2
02c300c0  str w8,[sp, #0x18]
02c300c4  cbnz w9,0x02c300cc
02c300c8  bl 0x029f5bd0
02c300cc  ldr x0,[x22]
02c300d0  mov w1,#0x1
02c300d4  mov w2,wzr
02c300d8  mov w3,#0x1
02c300dc  mov w4,wzr
02c300e0  mov x5,xzr
02c300e4  mov x6,xzr
02c300e8  mov w7,#0x1
02c300ec  str xzr,[sp]
02c300f0  bl 0x02bd2bec
02c300f4  adrp x8,0x5e58000
02c300f8  mov x22,x0
02c300fc  add x1,sp,#0x14
02c30100  ldr x8,[x8, #0xa10]
02c30104  str w24,[sp, #0x14]
02c30108  ldr x0,[x8, #0x48]
02c3010c  bl 0x029f5bd8
02c30110  mov x1,x0
02c30114  mov x0,x22
02c30118  mov x2,xzr
02c3011c  bl 0x046b6c0c
02c30120  cbz x21,0x02c30300
02c30124  ldr x8,[x21]
02c30128  mov x1,x0
02c3012c  mov x0,x21
02c30130  ldr x9,[x8, #0x558]
02c30134  ldr x2,[x8, #0x560]
02c30138  blr x9
02c3013c  ldr x21,[x19, #0x50]
02c30140  add x0,sp,#0x18
02c30144  mov x1,xzr
02c30148  bl 0x0484e6a4
02c3014c  cbz x21,0x02c30300
02c30150  ldr x8,[x21]
02c30154  mov x1,x0
02c30158  mov x0,x21
02c3015c  ldr x9,[x8, #0x558]
02c30160  ldr x2,[x8, #0x560]
02c30164  blr x9
02c30168  ldr x8,[x19, #0x28]
02c3016c  cbz x8,0x02c30300
02c30170  mov x21,xzr
02c30174  ldr w9,[x8, #0x18]
02c30178  cmp w21,w9
02c3017c  b.ge 0x02c301c8
02c30180  cmp w21,w9
02c30184  b.cs 0x02c3031c
02c30188  add x8,x8,x21, LSL #0x3
02c3018c  ldr x0,[x8, #0x20]
02c30190  cbz x0,0x02c30300
02c30194  ldrb w8,[x0, #0x20]
02c30198  mov x2,x20
02c3019c  cmp w8,#0x0
02c301a0  ldr w8,[sp, #0x1c]
02c301a4  csinc w3,w24,wzr,ne
02c301a8  add w9,w3,w3, LSL #0x2
02c301ac  cmp w8,w9, LSL #0x2
02c301b0  cset w1,ge
02c301b4  bl 0x02c2fe14
02c301b8  ldr x8,[x19, #0x28]
02c301bc  add x21,x21,#0x1
02c301c0  cbnz x8,0x02c30174
02c301c4  b 0x02c30300
02c301c8  ldr x8,[x19, #0x20]
02c301cc  cbz x8,0x02c30300
02c301d0  mov x20,xzr
02c301d4  ldr w9,[x8, #0x18]
02c301d8  cmp w20,w9
02c301dc  b.ge 0x02c30214
02c301e0  cmp w20,w9
02c301e4  b.cs 0x02c3031c
02c301e8  add x8,x8,x20, LSL #0x3
02c301ec  ldr x0,[x8, #0x20]
02c301f0  cbz x0,0x02c30300
02c301f4  ldr w8,[x19, #0x60]
02c301f8  cmp w20,w8
02c301fc  cset w1,eq
02c30200  bl 0x02c30320
02c30204  ldr x8,[x19, #0x20]
02c30208  add x20,x20,#0x1
02c3020c  cbnz x8,0x02c301d4
02c30210  b 0x02c30300
02c30214  ldr x8,[x19, #0x40]
02c30218  cbz x8,0x02c30300
02c3021c  mov x20,xzr
02c30220  ldr w9,[x8, #0x18]
02c30224  cmp w20,w9
02c30228  b.ge 0x02c30274
02c3022c  cmp w20,w9
02c30230  b.cs 0x02c3031c
02c30234  add x8,x8,x20, LSL #0x3
02c30238  mov x0,x19
02c3023c  mov w1,w20
02c30240  ldr x21,[x8, #0x20]
02c30244  bl 0x02c30368
02c30248  cbz x21,0x02c30300
02c3024c  ldr x8,[x21]
02c30250  mov x1,x0
02c30254  mov x0,x21
02c30258  ldr x9,[x8, #0x558]
02c3025c  ldr x2,[x8, #0x560]
02c30260  blr x9
02c30264  ldr x8,[x19, #0x40]
02c30268  add x20,x20,#0x1
02c3026c  cbnz x8,0x02c30220
02c30270  b 0x02c30300
02c30274  ldr x8,[x19, #0x58]
02c30278  cbz x8,0x02c30300
02c3027c  mov w21,wzr
02c30280  ldr w9,[x8, #0x18]
02c30284  cmp w21,w9
02c30288  b.ge 0x02c30304
02c3028c  cmp w21,w9
02c30290  b.cs 0x02c3031c
02c30294  sxtw x22,w21
02c30298  ldr x0,[x23]
02c3029c  add x8,x8,x22, LSL #0x3
02c302a0  ldr w9,[x0, #0xe4]
02c302a4  ldr x20,[x8, #0x20]
02c302a8  cbnz w9,0x02c302b4
02c302ac  bl 0x029f5bd0
02c302b0  ldr x0,[x23]
02c302b4  ldr x8,[x0, #0xb8]
02c302b8  ldr x8,[x8, #0x10]
02c302bc  cbz x8,0x02c30300
02c302c0  ldr x8,[x8, #0x28]
02c302c4  cbz x8,0x02c30300
02c302c8  ldr w9,[x8, #0x18]
02c302cc  cmp w21,w9
02c302d0  b.cs 0x02c3031c
02c302d4  cbz x20,0x02c30300
02c302d8  add x8,x8,x22, LSL #0x2
02c302dc  mov x0,x20
02c302e0  mov x2,xzr
02c302e4  add w21,w21,#0x1
02c302e8  ldr w8,[x8, #0x20]
02c302ec  cmp w8,#0x13
02c302f0  cset w1,gt
02c302f4  bl 0x057dff3c
02c302f8  ldr x8,[x19, #0x58]
02c302fc  cbnz x8,0x02c30280
02c30300  bl 0x029f5cfc
02c30304  ldp x20,x19,[sp, #0x50]
02c30308  ldp x22,x21,[sp, #0x40]
02c3030c  ldp x24,x23,[sp, #0x30]
02c30310  ldp x30,x25,[sp, #0x20]
02c30314  add sp,sp,#0x60
02c30318  ret
02c3031c  bl 0x029f5d04
