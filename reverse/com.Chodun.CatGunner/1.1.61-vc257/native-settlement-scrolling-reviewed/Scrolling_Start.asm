02c27404  stp x30,x21,[sp, #-0x20]!
02c27408  stp x20,x19,[sp, #0x10]
02c2740c  adrp x20,0x625b000
02c27410  adrp x21,0x5e62000
02c27414  mov x19,x0
02c27418  ldrb w8,[x20, #0xfbb]
02c2741c  ldr x21,[x21, #0xd58]
02c27420  tbnz w8,#0x0,0x02c27438
02c27424  adrp x0,0x5e62000
02c27428  ldr x0,[x0, #0xd58]
02c2742c  bl 0x029f5a50
02c27430  mov w8,#0x1
02c27434  strb w8,[x20, #0xfbb]
02c27438  ldr x1,[x21]
02c2743c  mov x0,x19
02c27440  bl 0x02fe5f2c
02c27444  str x0,[x19, #0x28]!
02c27448  mov x1,x0
02c2744c  mov x0,x19
02c27450  ldp x20,x19,[sp, #0x10]
02c27454  ldp x30,x21,[sp], #0x20
02c27458  b 0x029f59f4
