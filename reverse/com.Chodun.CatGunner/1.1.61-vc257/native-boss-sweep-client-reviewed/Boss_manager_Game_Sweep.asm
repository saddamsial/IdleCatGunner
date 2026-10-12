02c47180  str x30,[sp, #-0x30]!
02c47184  stp x22,x21,[sp, #0x10]
02c47188  stp x20,x19,[sp, #0x20]
02c4718c  adrp x20,0x625c000
02c47190  mov x19,x0
02c47194  ldrb w8,[x20, #0xe9]
02c47198  tbnz w8,#0x0,0x02c471e0
02c4719c  adrp x0,0x5e5d000
02c471a0  ldr x0,[x0, #0xd30]
02c471a4  bl 0x029f5a50
02c471a8  adrp x0,0x5e5d000
02c471ac  ldr x0,[x0, #0x338]
02c471b0  bl 0x029f5a50
02c471b4  adrp x0,0x5e5e000
02c471b8  ldr x0,[x0, #0xb8]
02c471bc  bl 0x029f5a50
02c471c0  adrp x0,0x5e5d000
02c471c4  ldr x0,[x0, #0x498]
02c471c8  bl 0x029f5a50
02c471cc  adrp x0,0x5e5d000
02c471d0  ldr x0,[x0, #0x920]
02c471d4  bl 0x029f5a50
02c471d8  mov w8,#0x1
02c471dc  strb w8,[x20, #0xe9]
02c471e0  mov x0,x19
02c471e4  str wzr,[sp, #0xc]
02c471e8  bl 0x02c46ef8
02c471ec  tbz w0,#0x0,0x02c47418
02c471f0  adrp x21,0x5e5d000
02c471f4  adrp x20,0x5e5e000
02c471f8  mov w9,#0x1
02c471fc  ldr x21,[x21, #0xd30]
02c47200  ldr w8,[x19, #0x20]
02c47204  strh wzr,[x19, #0x7c]
02c47208  ldr x20,[x20, #0xb8]
02c4720c  mov x0,x19
02c47210  mov w1,#0x1
02c47214  strb wzr,[x19, #0x7e]
02c47218  str w8,[x19, #0x78]
02c4721c  strb w9,[x19, #0x108]
02c47220  bl 0x02c45dc4
02c47224  ldr x0,[x21]
02c47228  ldr w8,[x19, #0x20]
02c4722c  ldr w9,[x0, #0xe4]
02c47230  add w8,w8,#0x1
02c47234  str w8,[x19, #0x20]
02c47238  cbnz w9,0x02c47244
02c4723c  bl 0x029f5bd0
02c47240  ldr x0,[x21]
02c47244  ldr x8,[x20]
02c47248  ldr x9,[x0, #0xb8]
02c4724c  adrp x20,0x5e5d000
02c47250  ldr w10,[x8, #0xe4]
02c47254  ldr x20,[x20, #0x920]
02c47258  ldr w21,[x9]
02c4725c  cbnz w10,0x02c47268
02c47260  mov x0,x8
02c47264  bl 0x029f5bd0
02c47268  adrp x22,0x5e5d000
02c4726c  mov x0,xzr
02c47270  ldr x22,[x22, #0x338]
02c47274  bl 0x02c908b0
02c47278  scvtf s1,w21
02c4727c  mov w8,#0x7f800000
02c47280  ldr x0,[x20]
02c47284  mov x20,x19
02c47288  ldr w10,[x0, #0xe4]
02c4728c  fmul s0,s0,s1
02c47290  fmov s1,w8
02c47294  mov w8,#0x80000000
02c47298  fcvtzs w9,s0
02c4729c  fcmp s0,s1
02c472a0  csel w8,w8,w9,eq
02c472a4  add w9,w8,w8, LSL #0x1
02c472a8  str w8,[x20, #0xd0]!
02c472ac  str w9,[sp, #0xc]
02c472b0  cbnz w10,0x02c472b8
02c472b4  bl 0x029f5bd0
02c472b8  mov x0,xzr
02c472bc  bl 0x02c92704
02c472c0  mov w21,w0
02c472c4  ldr x0,[x22]
02c472c8  add x8,sp,#0xc
02c472cc  tst w21,#0x1
02c472d0  csel x8,x8,x20,ne
02c472d4  ldr w9,[x0, #0xe4]
02c472d8  ldr w22,[x8]
02c472dc  cbnz w9,0x02c472e4
02c472e0  bl 0x029f5bd0
02c472e4  mov w0,w22
02c472e8  mov x1,xzr
02c472ec  bl 0x02b7ed10
02c472f0  ldr x0,[x19, #0xf0]
02c472f4  cbz x0,0x02c47428
02c472f8  eor w22,w21,#0x1
02c472fc  mov x2,xzr
02c47300  and w1,w22,#0x1
02c47304  bl 0x057dff3c
02c47308  ldr x0,[x19, #0xe0]
02c4730c  cbz x0,0x02c47428
02c47310  and w1,w22,#0x1
02c47314  mov x2,xzr
02c47318  bl 0x057dff3c
02c4731c  ldr x0,[x19, #0xe8]
02c47320  cbz x0,0x02c47428
02c47324  and w1,w21,#0x1
02c47328  mov x2,xzr
02c4732c  bl 0x057dff3c
02c47330  ldr x21,[x19, #0xf8]
02c47334  mov x0,x20
02c47338  mov x1,xzr
02c4733c  bl 0x0484e6a4
02c47340  cbz x21,0x02c47428
02c47344  ldr x8,[x21]
02c47348  mov x1,x0
02c4734c  mov x0,x21
02c47350  ldr x9,[x8, #0x558]
02c47354  ldr x2,[x8, #0x560]
02c47358  blr x9
02c4735c  ldr x20,[x19, #0x100]
02c47360  add x0,sp,#0xc
02c47364  mov x1,xzr
02c47368  bl 0x0484e6a4
02c4736c  cbz x20,0x02c47428
02c47370  ldr x8,[x20]
02c47374  mov x1,x0
02c47378  mov x0,x20
02c4737c  ldr x9,[x8, #0x558]
02c47380  ldr x2,[x8, #0x560]
02c47384  blr x9
02c47388  adrp x20,0x625b000
02c4738c  ldrb w8,[x20, #0xa57]
02c47390  cbnz w8,0x02c473a8
02c47394  adrp x0,0x5e5d000
02c47398  ldr x0,[x0, #0xd70]
02c4739c  bl 0x029f5a50
02c473a0  mov w8,#0x1
02c473a4  strb w8,[x20, #0xa57]
02c473a8  adrp x8,0x5e5d000
02c473ac  ldr x8,[x8, #0xd70]
02c473b0  ldr x8,[x8]
02c473b4  ldr x8,[x8, #0xb8]
02c473b8  ldr x0,[x8]
02c473bc  cbz x0,0x02c47428
02c473c0  fmov s0,0x3f800000
02c473c4  mov w1,#0xb
02c473c8  mov x2,xzr
02c473cc  mov x3,xzr
02c473d0  bl 0x02c1f10c
02c473d4  adrp x8,0x5e5d000
02c473d8  ldr x8,[x8, #0x498]
02c473dc  ldr x8,[x8]
02c473e0  ldr x8,[x8, #0xb8]
02c473e4  ldr x0,[x8]
02c473e8  cbz x0,0x02c47428
02c473ec  ldr w1,[x19, #0x20]
02c473f0  mov x2,xzr
02c473f4  bl 0x02c0ce00
02c473f8  ldr x0,[x19, #0xd8]
02c473fc  cbz x0,0x02c47428
02c47400  mov w1,#0x1
02c47404  mov x2,xzr
02c47408  bl 0x057dff3c
02c4740c  ldr x0,[x19, #0x50]
02c47410  cbz x0,0x02c47428
02c47414  bl 0x02c4742c
02c47418  ldp x20,x19,[sp, #0x20]
02c4741c  ldp x22,x21,[sp, #0x10]
02c47420  ldr x30,[sp], #0x30
02c47424  ret
02c47428  bl 0x029f5cfc
