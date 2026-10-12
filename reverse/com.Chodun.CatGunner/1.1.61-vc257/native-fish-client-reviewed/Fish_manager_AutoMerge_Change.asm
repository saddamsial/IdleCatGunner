02c5e3bc  str x30,[sp, #-0x20]!
02c5e3c0  stp x20,x19,[sp, #0x10]
02c5e3c4  adrp x20,0x625c000
02c5e3c8  mov x19,x0
02c5e3cc  ldrb w8,[x20, #0x201]
02c5e3d0  tbnz w8,#0x0,0x02c5e3f4
02c5e3d4  adrp x0,0x5e63000
02c5e3d8  ldr x0,[x0, #0x828]
02c5e3dc  bl 0x029f5a50
02c5e3e0  adrp x0,0x5e63000
02c5e3e4  ldr x0,[x0, #0x830]
02c5e3e8  bl 0x029f5a50
02c5e3ec  mov w8,#0x1
02c5e3f0  strb w8,[x20, #0x201]
02c5e3f4  bl 0x02c5e1e0
02c5e3f8  tbz w0,#0x0,0x02c5e418
02c5e3fc  ldrb w8,[x19, #0xb0]
02c5e400  mov x0,x19
02c5e404  ldp x20,x19,[sp, #0x10]
02c5e408  cmp w8,#0x0
02c5e40c  cset w1,eq
02c5e410  ldr x30,[sp], #0x20
02c5e414  b 0x02c5e260
02c5e418  adrp x20,0x5e63000
02c5e41c  mov x0,x19
02c5e420  ldr x20,[x20, #0x828]
02c5e424  strb wzr,[x19, #0xb0]
02c5e428  bl 0x02c5db28
02c5e42c  ldr x8,[x20]
02c5e430  ldr x8,[x8, #0xb8]
02c5e434  ldr x0,[x8]
02c5e438  cbz x0,0x02c5e458
02c5e43c  adrp x8,0x5e63000
02c5e440  mov x2,xzr
02c5e444  ldr x8,[x8, #0x830]
02c5e448  ldp x20,x19,[sp, #0x10]
02c5e44c  ldr x1,[x8]
02c5e450  ldr x30,[sp], #0x20
02c5e454  b 0x02ca7100
02c5e458  bl 0x029f5cfc
