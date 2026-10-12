02c6b3f4  stp x30,x21,[sp, #-0x20]!
02c6b3f8  stp x20,x19,[sp, #0x10]
02c6b3fc  adrp x21,0x625c000
02c6b400  adrp x20,0x5e62000
02c6b404  adrp x19,0x5e59000
02c6b408  ldrb w8,[x21, #0x28a]
02c6b40c  ldr x20,[x20, #0x648]
02c6b410  ldr x19,[x19, #0x1c0]
02c6b414  tbnz w8,#0x0,0x02c6b438
02c6b418  adrp x0,0x5e59000
02c6b41c  ldr x0,[x0, #0x1c0]
02c6b420  bl 0x029f5a50
02c6b424  adrp x0,0x5e62000
02c6b428  ldr x0,[x0, #0x648]
02c6b42c  bl 0x029f5a50
02c6b430  mov w8,#0x1
02c6b434  strb w8,[x21, #0x28a]
02c6b438  ldr x8,[x20]
02c6b43c  ldr x0,[x19]
02c6b440  ldr x8,[x8, #0xb8]
02c6b444  ldr w9,[x0, #0xe4]
02c6b448  ldr x19,[x8]
02c6b44c  cbnz w9,0x02c6b454
02c6b450  bl 0x029f5bd0
02c6b454  mov x0,x19
02c6b458  mov x1,xzr
02c6b45c  mov x2,xzr
02c6b460  bl 0x057dfa70
02c6b464  tbz w0,#0x0,0x02c6b484
02c6b468  ldr x8,[x20]
02c6b46c  ldr x8,[x8, #0xb8]
02c6b470  ldr x8,[x8]
02c6b474  cbz x8,0x02c6b494
02c6b478  ldp x20,x19,[sp, #0x10]
02c6b47c  ldp x30,x21,[sp], #0x20
02c6b480  b 0x02c6b498
02c6b484  ldp x20,x19,[sp, #0x10]
02c6b488  mov w0,wzr
02c6b48c  ldp x30,x21,[sp], #0x20
02c6b490  ret
02c6b494  bl 0x029f5cfc
