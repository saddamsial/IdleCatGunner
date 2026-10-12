02c641ac  str d12,[sp, #-0x80]!
02c641b0  stp d11,d10,[sp, #0x10]
02c641b4  stp d9,d8,[sp, #0x20]
02c641b8  stp x30,x27,[sp, #0x30]
02c641bc  stp x26,x25,[sp, #0x40]
02c641c0  stp x24,x23,[sp, #0x50]
02c641c4  stp x22,x21,[sp, #0x60]
02c641c8  stp x20,x19,[sp, #0x70]
02c641cc  fmov s8,s1
02c641d0  fmov s9,s0
02c641d4  adrp x21,0x625c000
02c641d8  ldrb w8,[x21, #0x240]
02c641dc  mov x19,x1
02c641e0  mov x20,x0
02c641e4  tbnz w8,#0x0,0x02c641fc
02c641e8  adrp x0,0x5e59000
02c641ec  ldr x0,[x0, #0x1c0]
02c641f0  bl 0x029f5a50
02c641f4  mov w8,#0x1
02c641f8  strb w8,[x21, #0x240]
02c641fc  ldr x8,[x20, #0x20]
02c64200  cbz x8,0x02c642ec
02c64204  adrp x23,0x5e59000
02c64208  adrp x21,0x5e59000
02c6420c  mov w9,#0x7f7fffff
02c64210  ldr x23,[x23, #0x1c0]
02c64214  ldr x21,[x21]
02c64218  fmov s10,w9
02c6421c  mov w24,#0x4
02c64220  adrp x25,0x625c000
02c64224  mov w26,#0x1
02c64228  ldr w9,[x8, #0x18]
02c6422c  sub x27,x24,#0x4
02c64230  cmp x27,w9, SXTW 
02c64234  b.ge 0x02c642f0
02c64238  cmp x27,x9
02c6423c  b.cs 0x02c64318
02c64240  ldr x0,[x23]
02c64244  ldr x22,[x8, x24, LSL #0x3]
02c64248  ldr w9,[x0, #0xe4]
02c6424c  cbnz w9,0x02c64254
02c64250  bl 0x029f5bd0
02c64254  mov x0,x22
02c64258  mov x1,x19
02c6425c  mov x2,xzr
02c64260  bl 0x057e14b4
02c64264  tbnz w0,#0x0,0x02c642e0
02c64268  ldr x8,[x20, #0x20]
02c6426c  cbz x8,0x02c642ec
02c64270  ldr w9,[x8, #0x18]
02c64274  cmp x27,x9
02c64278  b.cs 0x02c64318
02c6427c  ldr x0,[x8, x24, LSL #0x3]
02c64280  cbz x0,0x02c642ec
02c64284  ldrb w8,[x0, #0x48]
02c64288  cbz w8,0x02c642e0
02c6428c  bl 0x02c6285c
02c64290  fmov s11,s0
02c64294  fmov s12,s1
02c64298  ldrb w8,[x25, #0x2a2]
02c6429c  cbnz w8,0x02c642ac
02c642a0  mov x0,x21
02c642a4  bl 0x029f5a50
02c642a8  strb w26,[x25, #0x2a2]
02c642ac  ldr x0,[x21]
02c642b0  ldr w8,[x0, #0xe4]
02c642b4  cbnz w8,0x02c642bc
02c642b8  bl 0x029f5bd0
02c642bc  fsub s0,s8,s12
02c642c0  fsub s1,s9,s11
02c642c4  fmul s1,s1,s1
02c642c8  fmul s0,s0,s0
02c642cc  fadd s0,s1,s0
02c642d0  fsqrt s0,s0
02c642d4  fcmp s0,s10
02c642d8  b.pl 0x02c642e0
02c642dc  fmov s10,s0
02c642e0  ldr x8,[x20, #0x20]
02c642e4  add x24,x24,#0x1
02c642e8  cbnz x8,0x02c64228
02c642ec  bl 0x029f5cfc
02c642f0  fmov s0,s10
02c642f4  ldp x20,x19,[sp, #0x70]
02c642f8  ldp x22,x21,[sp, #0x60]
02c642fc  ldp x24,x23,[sp, #0x50]
02c64300  ldp x26,x25,[sp, #0x40]
02c64304  ldp x30,x27,[sp, #0x30]
02c64308  ldp d9,d8,[sp, #0x20]
02c6430c  ldp d11,d10,[sp, #0x10]
02c64310  ldr d12,[sp], #0x80
02c64314  ret
02c64318  bl 0x029f5d04
