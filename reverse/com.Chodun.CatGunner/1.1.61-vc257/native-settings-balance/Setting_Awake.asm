02c1ffc0  stp x30,x21,[sp, #-0x20]!
02c1ffc4  stp x20,x19,[sp, #0x10]
02c1ffc8  adrp x20,0x625b000
02c1ffcc  adrp x21,0x5e62000
02c1ffd0  mov x19,x0
02c1ffd4  ldrb w8,[x20, #0xf51]
02c1ffd8  ldr x21,[x21, #0x670]
02c1ffdc  tbnz w8,#0x0,0x02c1fff4
02c1ffe0  adrp x0,0x5e62000
02c1ffe4  ldr x0,[x0, #0x670]
02c1ffe8  bl 0x029f5a50
02c1ffec  mov w8,#0x1
02c1fff0  strb w8,[x20, #0xf51]
02c1fff4  ldr x8,[x21]
02c1fff8  mov x1,x19
02c1fffc  ldr x0,[x8, #0xb8]
02c20000  str x19,[x0, #0x8]!
02c20004  ldp x20,x19,[sp, #0x10]
02c20008  ldp x30,x21,[sp], #0x20
02c2000c  b 0x029f59f4
