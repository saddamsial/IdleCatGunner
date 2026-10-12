02c71ff8  sub sp,sp,#0xc0
02c71ffc  str d12,[sp, #0x40]
02c72000  stp d11,d10,[sp, #0x48]
02c72004  stp d9,d8,[sp, #0x58]
02c72008  str x30,[sp, #0x68]
02c7200c  stp x28,x27,[sp, #0x70]
02c72010  stp x26,x25,[sp, #0x80]
02c72014  stp x24,x23,[sp, #0x90]
02c72018  stp x22,x21,[sp, #0xa0]
02c7201c  stp x20,x19,[sp, #0xb0]
02c72020  adrp x20,0x625c000
02c72024  adrp x25,0x5e63000
02c72028  mov x19,x0
02c7202c  ldrb w8,[x20, #0x2dd]
02c72030  ldr x25,[x25, #0xaa8]
02c72034  tbnz w8,#0x0,0x02c72088
02c72038  adrp x0,0x5e63000
02c7203c  ldr x0,[x0, #0xa90]
02c72040  bl 0x029f5a50
02c72044  adrp x0,0x5e63000
02c72048  ldr x0,[x0, #0xa98]
02c7204c  bl 0x029f5a50
02c72050  adrp x0,0x5e63000
02c72054  ldr x0,[x0, #0xaa0]
02c72058  bl 0x029f5a50
02c7205c  adrp x0,0x5e63000
02c72060  ldr x0,[x0, #0xaa8]
02c72064  bl 0x029f5a50
02c72068  adrp x0,0x5e63000
02c7206c  ldr x0,[x0, #0xab0]
02c72070  bl 0x029f5a50
02c72074  adrp x0,0x5e59000
02c72078  ldr x0,[x0, #0x1c0]
02c7207c  bl 0x029f5a50
02c72080  mov w8,#0x1
02c72084  strb w8,[x20, #0x2dd]
02c72088  ldr x8,[x25]
02c7208c  stp xzr,xzr,[sp, #0x20]
02c72090  str xzr,[sp, #0x30]
02c72094  ldr x8,[x8, #0xb8]
02c72098  ldr x8,[x8]
02c7209c  cbz x8,0x02c72364
02c720a0  ldr x0,[x8, #0x40]
02c720a4  cbz x0,0x02c72364
02c720a8  adrp x8,0x5e63000
02c720ac  adrp x26,0x5e63000
02c720b0  adrp x23,0x5e59000
02c720b4  ldr x8,[x8, #0xab0]
02c720b8  adrp x24,0x5e63000
02c720bc  ldr x26,[x26, #0xa98]
02c720c0  ldr x23,[x23, #0x1c0]
02c720c4  ldr x24,[x24, #0xa90]
02c720c8  ldr x1,[x8]
02c720cc  add x8,sp,#0x8
02c720d0  bl 0x0452d690
02c720d4  ldur q0,[sp, #0x8]
02c720d8  ldr x8,[sp, #0x18]
02c720dc  mov w9,#0x7f7fffff
02c720e0  str xzr,[sp, #0x8]
02c720e4  adrp x21,0x5e59000
02c720e8  mov x22,xzr
02c720ec  str q0,[sp, #0x20]
02c720f0  fmov s0,w9
02c720f4  adrp x27,0x625c000
02c720f8  str x8,[sp, #0x30]
02c720fc  add x8,sp,#0x20
02c72100  mov w28,#0x1
02c72104  ldr x21,[x21]
02c72108  str x8,[sp, #0x10]
02c7210c  fmov s12,s0
02c72110  mov x20,x22
02c72114  ldr x1,[x26]
02c72118  add x0,sp,#0x20
02c7211c  bl 0x03fa4e10
02c72120  tbz w0,#0x0,0x02c72204
02c72124  ldr x0,[x23]
02c72128  ldr x22,[sp, #0x30]
02c7212c  ldr w8,[x0, #0xe4]
02c72130  cbnz w8,0x02c72138
02c72134  bl 0x029f5bd0
02c72138  mov x0,x22
02c7213c  mov x1,x19
02c72140  mov x2,xzr
02c72144  bl 0x057e14b4
02c72148  tbnz w0,#0x0,0x02c72114
02c7214c  cbz x22,0x02c72358
02c72150  mov x0,x22
02c72154  mov x1,xzr
02c72158  bl 0x057dc1c8
02c7215c  cbz x0,0x02c7235c
02c72160  mov x1,xzr
02c72164  bl 0x057e0000
02c72168  tbz w0,#0x0,0x02c72114
02c7216c  ldrb w8,[x22, #0x79]
02c72170  cbnz w8,0x02c72114
02c72174  ldr x8,[x25]
02c72178  ldr x8,[x8, #0xb8]
02c7217c  ldr x0,[x8]
02c72180  cbz x0,0x02c72360
02c72184  ldr w1,[x22, #0x90]
02c72188  bl 0x02c74714
02c7218c  fmov s8,s0
02c72190  fmov s9,s1
02c72194  ldr x1,[x19, #0x98]
02c72198  mov x0,x19
02c7219c  bl 0x02c74890
02c721a0  tbz w0,#0x0,0x02c72114
02c721a4  ldr x0,[x19, #0x98]
02c721a8  cbz x0,0x02c72368
02c721ac  mov x1,xzr
02c721b0  bl 0x057eddfc
02c721b4  fmov s10,s0
02c721b8  fmov s11,s1
02c721bc  ldrb w8,[x27, #0x2a2]
02c721c0  cbnz w8,0x02c721d0
02c721c4  mov x0,x21
02c721c8  bl 0x029f5a50
02c721cc  strb w28,[x27, #0x2a2]
02c721d0  ldr x0,[x21]
02c721d4  ldr w8,[x0, #0xe4]
02c721d8  cbnz w8,0x02c721e0
02c721dc  bl 0x029f5bd0
02c721e0  fsub s0,s11,s9
02c721e4  fsub s1,s10,s8
02c721e8  fmul s1,s1,s1
02c721ec  fmul s0,s0,s0
02c721f0  fadd s0,s1,s0
02c721f4  fsqrt s0,s0
02c721f8  fcmp s0,s12
02c721fc  b.pl 0x02c72114
02c72200  b 0x02c7210c
02c72204  ldr x1,[x24]
02c72208  add x0,sp,#0x20
02c7220c  bl 0x03fa4e0c
02c72210  ldr x0,[x23]
02c72214  strb wzr,[x19, #0xc8]
02c72218  ldr w8,[x0, #0xe4]
02c7221c  cbnz w8,0x02c72224
02c72220  bl 0x029f5bd0
02c72224  mov x0,x20
02c72228  mov x1,xzr
02c7222c  mov x2,xzr
02c72230  bl 0x057dfa70
02c72234  tbz w0,#0x0,0x02c72290
02c72238  cbz x20,0x02c72364
02c7223c  ldrsw x8,[x20, #0x8c]
02c72240  mov w9,#0x6667
02c72244  ldrsw x10,[x19, #0x8c]
02c72248  movk w9,#0x6666, LSL #16
02c7224c  smull x8,w8,w9
02c72250  smull x9,w10,w9
02c72254  lsr x10,x8,#0x3f
02c72258  asr x8,x8,#0x21
02c7225c  lsr x11,x9,#0x3f
02c72260  asr x9,x9,#0x21
02c72264  add w8,w8,w10
02c72268  add w9,w9,w11
02c7226c  cmp w8,w9
02c72270  b.ne 0x02c72290
02c72274  ldrb w8,[x19, #0x78]
02c72278  cbnz w8,0x02c72284
02c7227c  ldrb w8,[x20, #0x78]
02c72280  cbz w8,0x02c7234c
02c72284  mov w8,#0x1
02c72288  strb w8,[x19, #0xc8]
02c7228c  b 0x02c722f0
02c72290  ldr x0,[x23]
02c72294  ldr w8,[x0, #0xe4]
02c72298  cbnz w8,0x02c722a0
02c7229c  bl 0x029f5bd0
02c722a0  mov x0,x20
02c722a4  mov x1,xzr
02c722a8  mov x2,xzr
02c722ac  bl 0x057dfa70
02c722b0  tbz w0,#0x0,0x02c722f0
02c722b4  cbz x20,0x02c72364
02c722b8  ldrsw x8,[x20, #0x8c]
02c722bc  mov w9,#0x6667
02c722c0  ldrsw x10,[x19, #0x8c]
02c722c4  movk w9,#0x6666, LSL #16
02c722c8  smull x8,w8,w9
02c722cc  smull x9,w10,w9
02c722d0  lsr x10,x8,#0x3f
02c722d4  asr x8,x8,#0x21
02c722d8  lsr x11,x9,#0x3f
02c722dc  asr x9,x9,#0x21
02c722e0  add w8,w8,w10
02c722e4  add w9,w9,w11
02c722e8  cmp w8,w9
02c722ec  b.ne 0x02c72334
02c722f0  mov x0,x19
02c722f4  mov x1,xzr
02c722f8  bl 0x02c74964
02c722fc  mov x0,x19
02c72300  mov x1,xzr
02c72304  bl 0x02c74ae4
02c72308  ldp x20,x19,[sp, #0xb0]
02c7230c  ldr x30,[sp, #0x68]
02c72310  ldp x22,x21,[sp, #0xa0]
02c72314  ldr d12,[sp, #0x40]
02c72318  ldp x24,x23,[sp, #0x90]
02c7231c  ldp x26,x25,[sp, #0x80]
02c72320  ldp x28,x27,[sp, #0x70]
02c72324  ldp d9,d8,[sp, #0x58]
02c72328  ldp d11,d10,[sp, #0x48]
02c7232c  add sp,sp,#0xc0
02c72330  ret
02c72334  mov x0,x19
02c72338  mov x1,xzr
02c7233c  bl 0x02c74964
02c72340  mov x0,x19
02c72344  mov x1,x20
02c72348  b 0x02c72304
02c7234c  mov x0,x19
02c72350  mov x1,x20
02c72354  b 0x02c722f8
02c72358  bl 0x029f5cfc
02c7235c  bl 0x029f5cfc
02c72360  bl 0x029f5cfc
02c72364  bl 0x029f5cfc
02c72368  bl 0x029f5cfc
