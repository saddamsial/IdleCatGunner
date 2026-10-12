02c4a454  str x30,[sp, #-0x20]!
02c4a458  stp x20,x19,[sp, #0x10]
02c4a45c  adrp x19,0x625c000
02c4a460  adrp x20,0x5e5d000
02c4a464  ldrb w8,[x19, #0x115]
02c4a468  ldr x20,[x20, #0x910]
02c4a46c  tbnz w8,#0x0,0x02c4a484
02c4a470  adrp x0,0x5e5d000
02c4a474  ldr x0,[x0, #0x910]
02c4a478  bl 0x029f5a50
02c4a47c  mov w8,#0x1
02c4a480  strb w8,[x19, #0x115]
02c4a484  ldr x8,[x20]
02c4a488  ldr x8,[x8, #0xb8]
02c4a48c  ldr x0,[x8]
02c4a490  cbz x0,0x02c4a4a8
02c4a494  ldp x20,x19,[sp, #0x10]
02c4a498  mov w1,#0x3
02c4a49c  mov x2,xzr
02c4a4a0  ldr x30,[sp], #0x20
02c4a4a4  b 0x02b89ab0
02c4a4a8  bl 0x029f5cfc
