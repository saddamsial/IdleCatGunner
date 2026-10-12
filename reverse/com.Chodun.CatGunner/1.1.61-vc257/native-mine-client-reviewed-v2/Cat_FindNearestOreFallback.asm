02c3f6fc  stp d11,d10,[sp, #-0x60]!
02c3f700  stp d9,d8,[sp, #0x10]
02c3f704  str x30,[sp, #0x20]
02c3f708  stp x24,x23,[sp, #0x30]
02c3f70c  stp x22,x21,[sp, #0x40]
02c3f710  stp x20,x19,[sp, #0x50]
02c3f714  adrp x21,0x625c000
02c3f718  mov x20,x1
02c3f71c  mov x19,x0
02c3f720  ldrb w8,[x21, #0x98]
02c3f724  tbnz w8,#0x0,0x02c3f73c
02c3f728  adrp x0,0x5e59000
02c3f72c  ldr x0,[x0, #0x1c0]
02c3f730  bl 0x029f5a50
02c3f734  mov w8,#0x1
02c3f738  strb w8,[x21, #0x98]
02c3f73c  cbz x20,0x02c3f86c
02c3f740  ldr x21,[x20, #0x20]
02c3f744  cbz x21,0x02c3f848
02c3f748  ldr x8,[x21, #0x18]
02c3f74c  cbz x8,0x02c3f848
02c3f750  mov x0,x19
02c3f754  mov x1,xzr
02c3f758  bl 0x057dc0f8
02c3f75c  cbz x0,0x02c3f86c
02c3f760  mov x1,xzr
02c3f764  bl 0x057eed98
02c3f768  ldr x8,[x21, #0x18]
02c3f76c  cmp w8,#0x1
02c3f770  b.lt 0x02c3f848
02c3f774  fmov s8,s0
02c3f778  fmov s9,s2
02c3f77c  mov w9,#0x7f7fffff
02c3f780  adrp x23,0x5e59000
02c3f784  fmov s10,w9
02c3f788  mov x22,xzr
02c3f78c  ldr x23,[x23, #0x1c0]
02c3f790  mov x19,xzr
02c3f794  and x8,x8,#0xffffffff
02c3f798  add x24,x21,#0x20
02c3f79c  cmp x22,w8, UXTW 
02c3f7a0  b.cs 0x02c3f870
02c3f7a4  ldr x0,[x23]
02c3f7a8  ldr x20,[x24, x22, LSL #0x3]
02c3f7ac  ldr w8,[x0, #0xe4]
02c3f7b0  cbnz w8,0x02c3f7b8
02c3f7b4  bl 0x029f5bd0
02c3f7b8  mov x0,x20
02c3f7bc  mov x1,xzr
02c3f7c0  mov x2,xzr
02c3f7c4  bl 0x057e14b4
02c3f7c8  tbnz w0,#0x0,0x02c3f834
02c3f7cc  cbz x20,0x02c3f86c
02c3f7d0  mov x0,x20
02c3f7d4  mov x1,xzr
02c3f7d8  bl 0x057dc1c8
02c3f7dc  cbz x0,0x02c3f86c
02c3f7e0  mov x1,xzr
02c3f7e4  bl 0x057e00b4
02c3f7e8  tbz w0,#0x0,0x02c3f834
02c3f7ec  mov x0,x20
02c3f7f0  mov x1,xzr
02c3f7f4  bl 0x057dc0f8
02c3f7f8  cbz x0,0x02c3f86c
02c3f7fc  mov x1,xzr
02c3f800  bl 0x057eed98
02c3f804  fsub s0,s0,s8
02c3f808  fsub s1,s2,s9
02c3f80c  fmul s0,s0,s0
02c3f810  fmul s1,s1,s1
02c3f814  fadd s11,s0,s1
02c3f818  fcmp s11,s10
02c3f81c  b.pl 0x02c3f834
02c3f820  mov x0,x20
02c3f824  mov x1,xzr
02c3f828  bl 0x057dc0f8
02c3f82c  fmov s10,s11
02c3f830  mov x19,x0
02c3f834  ldr w8,[x21, #0x18]
02c3f838  add x22,x22,#0x1
02c3f83c  cmp x22,w8, SXTW 
02c3f840  b.lt 0x02c3f79c
02c3f844  b 0x02c3f84c
02c3f848  mov x19,xzr
02c3f84c  mov x0,x19
02c3f850  ldp x20,x19,[sp, #0x50]
02c3f854  ldp x22,x21,[sp, #0x40]
02c3f858  ldr x30,[sp, #0x20]
02c3f85c  ldp x24,x23,[sp, #0x30]
02c3f860  ldp d9,d8,[sp, #0x10]
02c3f864  ldp d11,d10,[sp], #0x60
02c3f868  ret
02c3f86c  bl 0x029f5cfc
02c3f870  bl 0x029f5d04
