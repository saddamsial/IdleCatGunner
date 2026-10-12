02c567e8  stp x30,x21,[sp, #-0x20]!
02c567ec  stp x20,x19,[sp, #0x10]
02c567f0  adrp x21,0x625c000
02c567f4  adrp x20,0x5e5e000
02c567f8  mov x19,x0
02c567fc  ldrb w8,[x21, #0x196]
02c56800  ldr x20,[x20, #0x70]
02c56804  tbnz w8,#0x0,0x02c5681c
02c56808  adrp x0,0x5e5e000
02c5680c  ldr x0,[x0, #0x70]
02c56810  bl 0x029f5a50
02c56814  mov w8,#0x1
02c56818  strb w8,[x21, #0x196]
02c5681c  ldr x0,[x20]
02c56820  ldr w8,[x0, #0xe4]
02c56824  cbnz w8,0x02c56830
02c56828  bl 0x029f5bd0
02c5682c  ldr x0,[x20]
02c56830  ldr x8,[x0, #0xb8]
02c56834  mov x1,x19
02c56838  str x19,[x8]
02c5683c  ldr x8,[x20]
02c56840  ldp x20,x19,[sp, #0x10]
02c56844  ldr x0,[x8, #0xb8]
02c56848  ldp x30,x21,[sp], #0x20
02c5684c  b 0x029f59f4
