02c30464  stp d9,d8,[sp, #-0x40]!
02c30468  str x30,[sp, #0x10]
02c3046c  stp x22,x21,[sp, #0x20]
02c30470  stp x20,x19,[sp, #0x30]
02c30474  cbz x1,0x02c305b8
02c30478  ldr x8,[x1, #0x18]
02c3047c  mov x22,x1
02c30480  cbz x8,0x02c305b8
02c30484  mov x20,x0
02c30488  mov x19,x0
02c3048c  ldr x1,[x20, #0x80]!
02c30490  cbz x1,0x02c304b0
02c30494  mov x0,x19
02c30498  mov x2,xzr
02c3049c  bl 0x057e237c
02c304a0  mov x0,x20
02c304a4  mov x1,xzr
02c304a8  str xzr,[x19, #0x80]
02c304ac  bl 0x029f59f4
02c304b0  mov x21,x19
02c304b4  mov x1,x22
02c304b8  str x22,[x21, #0x68]!
02c304bc  mov x0,x21
02c304c0  bl 0x029f59f4
02c304c4  ldr x22,[x21]
02c304c8  str wzr,[x21, #0x8]
02c304cc  cbz x22,0x02c30654
02c304d0  mov x0,x19
02c304d4  bl 0x02c30434
02c304d8  ldr s0,[x22, #0x18]
02c304dc  scvtf s8,w0
02c304e0  adrp x22,0x625b000
02c304e4  ldrb w8,[x22, #0xaea]
02c304e8  scvtf s9,s0
02c304ec  cbnz w8,0x02c30504
02c304f0  adrp x0,0x5e59000
02c304f4  ldr x0,[x0]
02c304f8  bl 0x029f5a50
02c304fc  mov w8,#0x1
02c30500  strb w8,[x22, #0xaea]
02c30504  fdiv s8,s9,s8
02c30508  adrp x8,0x5e59000
02c3050c  ldr x8,[x8]
02c30510  ldr x0,[x8]
02c30514  ldr w8,[x0, #0xe4]
02c30518  cbnz w8,0x02c30520
02c3051c  bl 0x029f5bd0
02c30520  frintp s0,s8
02c30524  mov w8,#0x7f800000
02c30528  fcvtps w9,s8
02c3052c  fmov s1,w8
02c30530  mov w8,#0x80000000
02c30534  mov x0,x19
02c30538  mov x1,xzr
02c3053c  fcmp s0,s1
02c30540  csel w8,w8,w9,eq
02c30544  str w8,[x19, #0x74]
02c30548  bl 0x057dc1c8
02c3054c  cbz x0,0x02c30654
02c30550  mov w1,#0x1
02c30554  mov x2,xzr
02c30558  bl 0x057dff3c
02c3055c  ldr x0,[x19, #0x40]
02c30560  cbz x0,0x02c30654
02c30564  mov w1,wzr
02c30568  mov x2,xzr
02c3056c  bl 0x057dff3c
02c30570  ldr x0,[x19, #0x48]
02c30574  cbz x0,0x02c30654
02c30578  mov w1,wzr
02c3057c  mov x2,xzr
02c30580  bl 0x057dff3c
02c30584  ldr x0,[x19, #0x50]
02c30588  cbz x0,0x02c30654
02c3058c  mov w1,wzr
02c30590  mov x2,xzr
02c30594  bl 0x057dff3c
02c30598  ldr x8,[x21]
02c3059c  cbz x8,0x02c30654
02c305a0  ldr w9,[x8, #0x18]
02c305a4  cmp w9,#0x1
02c305a8  b.le 0x02c305cc
02c305ac  mov x0,x19
02c305b0  bl 0x02c306ec
02c305b4  b 0x02c305dc
02c305b8  ldp x20,x19,[sp, #0x30]
02c305bc  ldr x30,[sp, #0x10]
02c305c0  ldp x22,x21,[sp, #0x20]
02c305c4  ldp d9,d8,[sp], #0x40
02c305c8  ret
02c305cc  cbz w9,0x02c30658
02c305d0  ldr x1,[x8, #0x20]
02c305d4  mov x0,x19
02c305d8  bl 0x02c3065c
02c305dc  mov x1,x0
02c305e0  mov x0,x19
02c305e4  mov x2,xzr
02c305e8  bl 0x057e2120
02c305ec  mov x1,x0
02c305f0  str x0,[x19, #0x80]
02c305f4  mov x0,x20
02c305f8  bl 0x029f59f4
02c305fc  adrp x19,0x625b000
02c30600  ldrb w8,[x19, #0xa57]
02c30604  cbnz w8,0x02c3061c
02c30608  adrp x0,0x5e5d000
02c3060c  ldr x0,[x0, #0xd70]
02c30610  bl 0x029f5a50
02c30614  mov w8,#0x1
02c30618  strb w8,[x19, #0xa57]
02c3061c  adrp x8,0x5e5d000
02c30620  ldr x8,[x8, #0xd70]
02c30624  ldr x8,[x8]
02c30628  ldr x8,[x8, #0xb8]
02c3062c  ldr x0,[x8]
02c30630  cbz x0,0x02c30654
02c30634  ldp x20,x19,[sp, #0x30]
02c30638  fmov s0,0x3f800000
02c3063c  ldp x22,x21,[sp, #0x20]
02c30640  mov w1,#0x7
02c30644  ldr x30,[sp, #0x10]
02c30648  mov x2,xzr
02c3064c  ldp d9,d8,[sp], #0x40
02c30650  b 0x02c1f10c
02c30654  bl 0x029f5cfc
02c30658  bl 0x029f5d04
