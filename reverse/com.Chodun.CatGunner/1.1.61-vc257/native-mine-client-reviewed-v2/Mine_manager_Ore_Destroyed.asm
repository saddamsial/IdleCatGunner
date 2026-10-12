02c4a66c  str x30,[sp, #-0x30]!
02c4a670  stp x22,x21,[sp, #0x10]
02c4a674  stp x20,x19,[sp, #0x20]
02c4a678  adrp x22,0x625c000
02c4a67c  adrp x21,0x5e5d000
02c4a680  mov x20,x1
02c4a684  ldrb w8,[x22, #0x119]
02c4a688  ldr x21,[x21, #0x338]
02c4a68c  mov x19,x0
02c4a690  tbnz w8,#0x0,0x02c4a6a8
02c4a694  adrp x0,0x5e5d000
02c4a698  ldr x0,[x0, #0x338]
02c4a69c  bl 0x029f5a50
02c4a6a0  mov w8,#0x1
02c4a6a4  strb w8,[x22, #0x119]
02c4a6a8  ldr x0,[x21]
02c4a6ac  ldr w8,[x0, #0xe4]
02c4a6b0  cbnz w8,0x02c4a6bc
02c4a6b4  bl 0x029f5bd0
02c4a6b8  ldr x0,[x21]
02c4a6bc  ldr x8,[x0, #0xb8]
02c4a6c0  ldrb w8,[x8]
02c4a6c4  cbz w8,0x02c4a730
02c4a6c8  ldr w8,[x19, #0x6c]
02c4a6cc  sub w8,w8,#0x1
02c4a6d0  str w8,[x19, #0x6c]
02c4a6d4  cbz x20,0x02c4a754
02c4a6d8  ldr w10,[x19, #0x64]
02c4a6dc  ldr w11,[x20, #0x20]
02c4a6e0  ldr x9,[x19, #0x98]
02c4a6e4  add w10,w11,w10
02c4a6e8  str w10,[x19, #0x64]
02c4a6ec  cbz x9,0x02c4a754
02c4a6f0  ldr x0,[x9, #0x20]
02c4a6f4  cbz x0,0x02c4a754
02c4a6f8  ldr w9,[x19, #0x70]
02c4a6fc  mov x1,xzr
02c4a700  sub w8,w9,w8
02c4a704  scvtf s1,w9
02c4a708  scvtf s0,w8
02c4a70c  fdiv s0,s0,s1
02c4a710  bl 0x02c28290
02c4a714  ldr x0,[x19, #0x98]
02c4a718  cbz x0,0x02c4a754
02c4a71c  ldr w1,[x19, #0x64]
02c4a720  bl 0x02c49cf0
02c4a724  ldr w8,[x19, #0x6c]
02c4a728  cmp w8,#0x0
02c4a72c  b.le 0x02c4a740
02c4a730  ldp x20,x19,[sp, #0x20]
02c4a734  ldp x22,x21,[sp, #0x10]
02c4a738  ldr x30,[sp], #0x30
02c4a73c  ret
02c4a740  mov x0,x19
02c4a744  ldp x20,x19,[sp, #0x20]
02c4a748  ldp x22,x21,[sp, #0x10]
02c4a74c  ldr x30,[sp], #0x30
02c4a750  b 0x02c49be0
02c4a754  bl 0x029f5cfc
