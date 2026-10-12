02c5f6f0  stp x30,x21,[sp, #-0x20]!
02c5f6f4  stp x20,x19,[sp, #0x10]
02c5f6f8  adrp x21,0x625c000
02c5f6fc  mov w20,w1
02c5f700  mov x19,x0
02c5f704  ldrb w8,[x21, #0x210]
02c5f708  tbnz w8,#0x0,0x02c5f738
02c5f70c  adrp x0,0x5e63000
02c5f710  ldr x0,[x0, #0x108]
02c5f714  bl 0x029f5a50
02c5f718  adrp x0,0x5e62000
02c5f71c  ldr x0,[x0, #0xfe8]
02c5f720  bl 0x029f5a50
02c5f724  adrp x0,0x5e59000
02c5f728  ldr x0,[x0, #0x1c0]
02c5f72c  bl 0x029f5a50
02c5f730  mov w8,#0x1
02c5f734  strb w8,[x21, #0x210]
02c5f738  ldr x0,[x19, #0x90]
02c5f73c  cbz x0,0x02c5f848
02c5f740  ldrsw x8,[x0, #0x18]
02c5f744  cmp w8,#0x14
02c5f748  b.ge 0x02c5f79c
02c5f74c  adrp x10,0x5e63000
02c5f750  cmp w20,#0xc
02c5f754  mov w12,#0xc
02c5f758  ldr x10,[x10, #0x108]
02c5f75c  ldr w11,[x0, #0x1c]
02c5f760  ldr x9,[x0, #0x10]
02c5f764  ldr x10,[x10]
02c5f768  add w13,w11,#0x1
02c5f76c  csel w11,w20,w12,lt
02c5f770  str w13,[x0, #0x1c]
02c5f774  cbz x9,0x02c5f848
02c5f778  ldr w12,[x9, #0x18]
02c5f77c  bic w20,w11,w11, ASR #0x1f
02c5f780  cmp w8,w12
02c5f784  b.cs 0x02c5f7b4
02c5f788  add w10,w8,#0x1
02c5f78c  add x8,x9,x8, LSL #0x2
02c5f790  str w10,[x0, #0x18]
02c5f794  str w20,[x8, #0x20]
02c5f798  b 0x02c5f7c8
02c5f79c  mov x0,xzr
02c5f7a0  bl 0x02bdfae8
02c5f7a4  ldp x20,x19,[sp, #0x10]
02c5f7a8  mov x1,xzr
02c5f7ac  ldp x30,x21,[sp], #0x20
02c5f7b0  b 0x02c1dd54
02c5f7b4  ldr x8,[x10, #0x20]
02c5f7b8  mov w1,w20
02c5f7bc  ldr x8,[x8, #0xc0]
02c5f7c0  ldr x2,[x8, #0x70]
02c5f7c4  bl 0x044f7a10
02c5f7c8  ldr x8,[x19, #0xa8]
02c5f7cc  cbz x8,0x02c5f7e0
02c5f7d0  ldr x9,[x8, #0x18]
02c5f7d4  ldr x0,[x8, #0x40]
02c5f7d8  ldr x1,[x8, #0x28]
02c5f7dc  blr x9
02c5f7e0  mov x0,x19
02c5f7e4  bl 0x02c5d820
02c5f7e8  bl 0x02c5e13c
02c5f7ec  adrp x8,0x5e59000
02c5f7f0  ldr x8,[x8, #0x1c0]
02c5f7f4  ldr x21,[x19, #0xa0]
02c5f7f8  ldr x0,[x8]
02c5f7fc  ldr w8,[x0, #0xe4]
02c5f800  cbnz w8,0x02c5f808
02c5f804  bl 0x029f5bd0
02c5f808  mov x0,x21
02c5f80c  mov x1,xzr
02c5f810  mov x2,xzr
02c5f814  bl 0x057dfa70
02c5f818  tbz w0,#0x0,0x02c5f82c
02c5f81c  ldr x0,[x19, #0xa0]
02c5f820  cbz x0,0x02c5f848
02c5f824  mov w1,w20
02c5f828  bl 0x02c5e88c
02c5f82c  mov x0,x19
02c5f830  mov w1,w20
02c5f834  bl 0x02c5ea14
02c5f838  mov x0,x19
02c5f83c  ldp x20,x19,[sp, #0x10]
02c5f840  ldp x30,x21,[sp], #0x20
02c5f844  b 0x02c5dcbc
02c5f848  bl 0x029f5cfc
