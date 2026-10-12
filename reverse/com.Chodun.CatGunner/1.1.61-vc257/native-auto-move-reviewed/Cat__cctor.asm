02c430c4  stp d11,d10,[sp, #-0x50]!
02c430c8  stp d9,d8,[sp, #0x10]
02c430cc  stp x30,x23,[sp, #0x20]
02c430d0  stp x22,x21,[sp, #0x30]
02c430d4  stp x20,x19,[sp, #0x40]
02c430d8  adrp x21,0x625c000
02c430dc  adrp x23,0x5e63000
02c430e0  adrp x19,0x5e63000
02c430e4  adrp x20,0x5e63000
02c430e8  ldr x23,[x23, #0x278]
02c430ec  ldrb w8,[x21, #0xbc]
02c430f0  ldr x19,[x19, #0x280]
02c430f4  ldr x20,[x20, #0x1d8]
02c430f8  tbnz w8,#0x0,0x02c43140
02c430fc  adrp x0,0x5e63000
02c43100  ldr x0,[x0, #0x1d8]
02c43104  bl 0x029f5a50
02c43108  adrp x0,0x5e63000
02c4310c  ldr x0,[x0, #0x280]
02c43110  bl 0x029f5a50
02c43114  adrp x0,0x5e63000
02c43118  ldr x0,[x0, #0x278]
02c4311c  bl 0x029f5a50
02c43120  adrp x0,0x5e63000
02c43124  ldr x0,[x0, #0x268]
02c43128  bl 0x029f5a50
02c4312c  adrp x0,0x5e63000
02c43130  ldr x0,[x0, #0x270]
02c43134  bl 0x029f5a50
02c43138  mov w8,#0x1
02c4313c  strb w8,[x21, #0xbc]
02c43140  adrp x22,0x5e63000
02c43144  adrp x21,0x5e63000
02c43148  ldr x22,[x22, #0x270]
02c4314c  ldr x21,[x21, #0x268]
02c43150  ldr x0,[x23]
02c43154  bl 0x029f5cec
02c43158  ldr x1,[x19]
02c4315c  mov x19,x0
02c43160  bl 0x045a69e0
02c43164  ldr x8,[x20]
02c43168  mov x1,x19
02c4316c  ldr x8,[x8, #0xb8]
02c43170  str x19,[x8]
02c43174  ldr x8,[x20]
02c43178  ldr x0,[x8, #0xb8]
02c4317c  bl 0x029f59f4
02c43180  ldr x8,[x20]
02c43184  adrp x9,0x1170000
02c43188  movi d2,#0x0
02c4318c  ldr d0,[x9, #0x920]
02c43190  mov w9,#0x999a
02c43194  mov x0,xzr
02c43198  ldr x10,[x8, #0xb8]
02c4319c  movk w9,#0x3e99, LSL #16
02c431a0  str w9,[x10, #0x1c]
02c431a4  adrp x9,0x1170000
02c431a8  stur d0,[x10, #0x14]
02c431ac  ldr d0,[x9, #0x308]
02c431b0  adrp x10,0x116f000
02c431b4  ldr x9,[x8, #0xb8]
02c431b8  str d0,[x9, #0x20]
02c431bc  ldr d0,[x10, #0xa80]
02c431c0  str wzr,[x9, #0x28]
02c431c4  adrp x9,0x116c000
02c431c8  ldr x8,[x8, #0xb8]
02c431cc  ldr s1,[x9, #0xe0]
02c431d0  stur d0,[x8, #0x2c]
02c431d4  str wzr,[x8, #0x34]
02c431d8  adrp x8,0x116c000
02c431dc  ldr s0,[x8, #0x248]
02c431e0  bl 0x057cd67c
02c431e4  fmov s8,s0
02c431e8  fmov s9,s1
02c431ec  adrp x19,0x625b000
02c431f0  fmov s10,s2
02c431f4  fmov s11,s3
02c431f8  ldrb w8,[x19, #0x5d7]
02c431fc  cbnz w8,0x02c43214
02c43200  adrp x0,0x5e58000
02c43204  ldr x0,[x0, #0xbf8]
02c43208  bl 0x029f5a50
02c4320c  mov w8,#0x1
02c43210  strb w8,[x19, #0x5d7]
02c43214  adrp x8,0x5e58000
02c43218  fmov s0,s8
02c4321c  fmov s1,s9
02c43220  ldr x8,[x8, #0xbf8]
02c43224  fmov s2,s10
02c43228  fmov s3,s11
02c4322c  mov x0,xzr
02c43230  ldr x8,[x8]
02c43234  ldr x8,[x8, #0xb8]
02c43238  ldp s4,s5,[x8, #0x48]
02c4323c  ldr s6,[x8, #0x50]
02c43240  bl 0x057cdb04
02c43244  ldr x8,[x20]
02c43248  mov x0,xzr
02c4324c  ldr x8,[x8, #0xb8]
02c43250  stp s0,s1,[x8, #0x38]
02c43254  movi d0,#0x0
02c43258  str s2,[x8, #0x40]
02c4325c  movi d2,#0x0
02c43260  adrp x8,0x116b000
02c43264  ldr s1,[x8, #0xf18]
02c43268  bl 0x057cd67c
02c4326c  ldr x8,[x20]
02c43270  adrp x10,0x116f000
02c43274  ldr x0,[x22]
02c43278  ldr x9,[x8, #0xb8]
02c4327c  stp s0,s1,[x9, #0x44]
02c43280  ldr d0,[x10, #0xb78]
02c43284  stp s2,s3,[x9, #0x4c]
02c43288  ldr x9,[x8, #0xb8]
02c4328c  stur d0,[x9, #0x54]
02c43290  str wzr,[x9, #0x5c]
02c43294  mov w9,#0x999a
02c43298  ldr x8,[x8, #0xb8]
02c4329c  movk w9,#0x3f99, LSL #16
02c432a0  str w9,[x8, #0x60]
02c432a4  bl 0x029f5cec
02c432a8  ldr x1,[x21]
02c432ac  mov x19,x0
02c432b0  bl 0x037167c8
02c432b4  ldr x8,[x20]
02c432b8  mov x1,x19
02c432bc  ldp x22,x21,[sp, #0x30]
02c432c0  ldr x0,[x8, #0xb8]
02c432c4  ldp x30,x23,[sp, #0x20]
02c432c8  ldp d9,d8,[sp, #0x10]
02c432cc  str x19,[x0, #0x70]!
02c432d0  ldp x20,x19,[sp, #0x40]
02c432d4  ldp d11,d10,[sp], #0x50
02c432d8  b 0x029f59f4
