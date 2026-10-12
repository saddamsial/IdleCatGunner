02c480e4  stp x30,x21,[sp, #-0x20]!
02c480e8  stp x20,x19,[sp, #0x10]
02c480ec  adrp x21,0x625c000
02c480f0  adrp x20,0x5e59000
02c480f4  mov x19,x0
02c480f8  ldrb w8,[x21, #0xf7]
02c480fc  ldr x20,[x20, #0x1c0]
02c48100  tbnz w8,#0x0,0x02c48124
02c48104  adrp x0,0x5e59000
02c48108  ldr x0,[x0, #0x1c0]
02c4810c  bl 0x029f5a50
02c48110  adrp x0,0x5e5e000
02c48114  ldr x0,[x0, #0xb8]
02c48118  bl 0x029f5a50
02c4811c  mov w8,#0x1
02c48120  strb w8,[x21, #0xf7]
02c48124  ldr x0,[x20]
02c48128  ldr x20,[x19, #0xb8]
02c4812c  ldr w8,[x0, #0xe4]
02c48130  cbnz w8,0x02c48138
02c48134  bl 0x029f5bd0
02c48138  mov x0,x20
02c4813c  mov x1,xzr
02c48140  mov x2,xzr
02c48144  bl 0x057dfa70
02c48148  tbz w0,#0x0,0x02c48190
02c4814c  adrp x8,0x5e5e000
02c48150  ldr x8,[x8, #0xb8]
02c48154  ldr x19,[x19, #0xb8]
02c48158  ldr x0,[x8]
02c4815c  ldr w8,[x0, #0xe4]
02c48160  cbnz w8,0x02c48168
02c48164  bl 0x029f5bd0
02c48168  mov w0,wzr
02c4816c  mov x1,xzr
02c48170  bl 0x02c9196c
02c48174  cbz x19,0x02c4819c
02c48178  and w1,w0,#0x1
02c4817c  mov x0,x19
02c48180  mov x2,xzr
02c48184  ldp x20,x19,[sp, #0x10]
02c48188  ldp x30,x21,[sp], #0x20
02c4818c  b 0x057dff3c
02c48190  ldp x20,x19,[sp, #0x10]
02c48194  ldp x30,x21,[sp], #0x20
02c48198  ret
02c4819c  bl 0x029f5cfc
