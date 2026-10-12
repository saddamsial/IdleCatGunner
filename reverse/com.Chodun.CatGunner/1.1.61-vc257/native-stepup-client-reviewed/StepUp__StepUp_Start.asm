02ca284c  str x30,[sp, #-0x20]!
02ca2850  stp x20,x19,[sp, #0x10]
02ca2854  adrp x20,0x625c000
02ca2858  mov x19,x0
02ca285c  ldrb w8,[x20, #0x496]
02ca2860  tbnz w8,#0x0,0x02ca2878
02ca2864  adrp x0,0x5e5d000
02ca2868  ldr x0,[x0, #0x3c0]
02ca286c  bl 0x029f5a50
02ca2870  mov w8,#0x1
02ca2874  strb w8,[x20, #0x496]
02ca2878  mov x0,x19
02ca287c  bl 0x02ca2784
02ca2880  tbz w0,#0x0,0x02ca2890
02ca2884  ldp x20,x19,[sp, #0x10]
02ca2888  ldr x30,[sp], #0x20
02ca288c  ret
02ca2890  adrp x8,0x5e5d000
02ca2894  ldr x8,[x8, #0x3c0]
02ca2898  ldr x0,[x8]
02ca289c  ldr w8,[x0, #0xe4]
02ca28a0  cbnz w8,0x02ca28a8
02ca28a4  bl 0x029f5bd0
02ca28a8  mov x0,xzr
02ca28ac  bl 0x02c1a570
02ca28b0  mov x8,x0
02ca28b4  mov x0,xzr
02ca28b8  str x8,[x19, #0x40]
02ca28bc  ldp x20,x19,[sp, #0x10]
02ca28c0  ldr x30,[sp], #0x20
02ca28c4  b 0x02c0faf8
