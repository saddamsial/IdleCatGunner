02c44ac8  str x30,[sp, #-0x20]!
02c44acc  stp x20,x19,[sp, #0x10]
02c44ad0  adrp x19,0x625c000
02c44ad4  adrp x20,0x5e5d000
02c44ad8  ldrb w8,[x19, #0xcd]
02c44adc  ldr x20,[x20, #0x5b0]
02c44ae0  tbnz w8,#0x0,0x02c44af8
02c44ae4  adrp x0,0x5e5d000
02c44ae8  ldr x0,[x0, #0x5b0]
02c44aec  bl 0x029f5a50
02c44af0  mov w8,#0x1
02c44af4  strb w8,[x19, #0xcd]
02c44af8  ldr x8,[x20]
02c44afc  ldp x20,x19,[sp, #0x10]
02c44b00  mov w9,#0x1
02c44b04  ldr x8,[x8, #0xb8]
02c44b08  strb w9,[x8]
02c44b0c  ldr x30,[sp], #0x20
02c44b10  ret
