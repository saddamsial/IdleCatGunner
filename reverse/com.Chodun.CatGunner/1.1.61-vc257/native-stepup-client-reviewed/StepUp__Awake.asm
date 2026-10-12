02ca27e4  stp x30,x21,[sp, #-0x20]!
02ca27e8  stp x20,x19,[sp, #0x10]
02ca27ec  adrp x21,0x625c000
02ca27f0  adrp x20,0x5e5e000
02ca27f4  mov x19,x0
02ca27f8  ldrb w8,[x21, #0x495]
02ca27fc  ldr x20,[x20, #0x4b8]
02ca2800  tbnz w8,#0x0,0x02ca2818
02ca2804  adrp x0,0x5e5e000
02ca2808  ldr x0,[x0, #0x4b8]
02ca280c  bl 0x029f5a50
02ca2810  mov w8,#0x1
02ca2814  strb w8,[x21, #0x495]
02ca2818  ldr x0,[x20]
02ca281c  ldr w8,[x0, #0xe4]
02ca2820  cbnz w8,0x02ca282c
02ca2824  bl 0x029f5bd0
02ca2828  ldr x0,[x20]
02ca282c  ldr x8,[x0, #0xb8]
02ca2830  mov x1,x19
02ca2834  str x19,[x8]
02ca2838  ldr x8,[x20]
02ca283c  ldp x20,x19,[sp, #0x10]
02ca2840  ldr x0,[x8, #0xb8]
02ca2844  ldp x30,x21,[sp], #0x20
02ca2848  b 0x029f59f4
