02ca06e0  stp x30,x21,[sp, #-0x20]!
02ca06e4  stp x20,x19,[sp, #0x10]
02ca06e8  adrp x21,0x625c000
02ca06ec  adrp x20,0x5e5e000
02ca06f0  mov x19,x0
02ca06f4  ldrb w8,[x21, #0x47a]
02ca06f8  ldr x20,[x20, #0x3e0]
02ca06fc  tbnz w8,#0x0,0x02ca0714
02ca0700  adrp x0,0x5e5e000
02ca0704  ldr x0,[x0, #0x3e0]
02ca0708  bl 0x029f5a50
02ca070c  mov w8,#0x1
02ca0710  strb w8,[x21, #0x47a]
02ca0714  ldr x0,[x20]
02ca0718  ldr w8,[x0, #0xe4]
02ca071c  cbnz w8,0x02ca0728
02ca0720  bl 0x029f5bd0
02ca0724  ldr x0,[x20]
02ca0728  ldr x8,[x0, #0xb8]
02ca072c  mov x1,x19
02ca0730  str x19,[x8]
02ca0734  ldr x8,[x20]
02ca0738  ldp x20,x19,[sp, #0x10]
02ca073c  ldr x0,[x8, #0xb8]
02ca0740  ldp x30,x21,[sp], #0x20
02ca0744  b 0x029f59f4
