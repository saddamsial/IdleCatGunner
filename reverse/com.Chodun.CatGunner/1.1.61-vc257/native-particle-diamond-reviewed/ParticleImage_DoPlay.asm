049bd040  str x30,[sp, #-0x30]!
049bd044  stp x22,x21,[sp, #0x10]
049bd048  stp x20,x19,[sp, #0x20]
049bd04c  adrp x20,0x6262000
049bd050  mov x19,x0
049bd054  ldrb w8,[x20, #0x83a]
049bd058  tbnz w8,#0x0,0x049bd07c
049bd05c  adrp x0,0x5e85000
049bd060  ldr x0,[x0, #0xfb0]
049bd064  bl 0x029f5a50
049bd068  adrp x0,0x5e85000
049bd06c  ldr x0,[x0, #0xfb8]
049bd070  bl 0x029f5a50
049bd074  mov w8,#0x1
049bd078  strb w8,[x20, #0x83a]
049bd07c  mov x0,x19
049bd080  bl 0x049bb800
049bd084  tbz w0,#0x0,0x049bd0c8
049bd088  ldr x20,[x19, #0xe0]
049bd08c  cbz x20,0x049bd0c8
049bd090  ldr w8,[x20, #0x18]
049bd094  cmp w8,#0x1
049bd098  b.lt 0x049bd0c8
049bd09c  mov x21,xzr
049bd0a0  add x22,x20,#0x20
049bd0a4  cmp w21,w8
049bd0a8  b.cs 0x049bd190
049bd0ac  ldr x0,[x22, x21, LSL #0x3]
049bd0b0  cbz x0,0x049bd124
049bd0b4  bl 0x049bd040
049bd0b8  ldr w8,[x20, #0x18]
049bd0bc  add x21,x21,#0x1
049bd0c0  cmp w21,w8
049bd0c4  b.lt 0x049bd0a4
049bd0c8  fmov s0,0x3f800000
049bd0cc  ldr s1,[x19, #0x3120]
049bd0d0  ldr x0,[x19, #0x3130]
049bd0d4  str wzr,[x19, #0x31f0]
049bd0d8  str wzr,[x19, #0x3204]
049bd0dc  fdiv s0,s0,s1
049bd0e0  str s0,[x19, #0x31fc]
049bd0e4  cbz x0,0x049bd124
049bd0e8  adrp x21,0x5e85000
049bd0ec  mov w20,wzr
049bd0f0  ldr x21,[x21, #0xfb8]
049bd0f4  ldr w8,[x0, #0x18]
049bd0f8  cmp w20,w8
049bd0fc  b.ge 0x049bd128
049bd100  ldr x2,[x21]
049bd104  mov w1,w20
049bd108  bl 0x0452c8d8
049bd10c  cbz x0,0x049bd124
049bd110  mov x8,x0
049bd114  ldr x0,[x19, #0x3130]
049bd118  add w20,w20,#0x1
049bd11c  strb wzr,[x8, #0x18]
049bd120  cbnz x0,0x049bd0f4
049bd124  bl 0x029f5cfc
049bd128  adrp x8,0x1170000
049bd12c  ldrb w9,[x19, #0x16d]
049bd130  ldr d0,[x8, #0x18]
049bd134  mov w8,#0x322e
049bd138  str s0,[x19,x8]
049bd13c  cbz w9,0x049bd148
049bd140  mov x0,x19
049bd144  bl 0x049bd194
049bd148  ldr w8,[x19, #0x12c]
049bd14c  cmp w8,#0x1
049bd150  b.ne 0x049bd160
049bd154  mov x0,xzr
049bd158  bl 0x057ebabc
049bd15c  b 0x049bd168
049bd160  mov x0,xzr
049bd164  bl 0x057ebb34
049bd168  ldrb w1,[x19, #0x16d]
049bd16c  mov x0,x19
049bd170  bl 0x049bd23c
049bd174  ldr x0,[x19, #0x3238]
049bd178  cbz x0,0x049bd124
049bd17c  ldp x20,x19,[sp, #0x20]
049bd180  mov x1,xzr
049bd184  ldp x22,x21,[sp, #0x10]
049bd188  ldr x30,[sp], #0x30
049bd18c  b 0x057f5098
049bd190  bl 0x029f5d04
