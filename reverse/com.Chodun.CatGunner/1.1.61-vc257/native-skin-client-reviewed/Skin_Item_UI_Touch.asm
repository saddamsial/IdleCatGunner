02ca8604  stp x30,x21,[sp, #-0x20]!
02ca8608  stp x20,x19,[sp, #0x10]
02ca860c  adrp x20,0x625c000
02ca8610  adrp x21,0x5e5d000
02ca8614  mov x19,x0
02ca8618  ldrb w8,[x20, #0x4ed]
02ca861c  ldr x21,[x21, #0x4e0]
02ca8620  tbnz w8,#0x0,0x02ca8638
02ca8624  adrp x0,0x5e5d000
02ca8628  ldr x0,[x0, #0x4e0]
02ca862c  bl 0x029f5a50
02ca8630  mov w8,#0x1
02ca8634  strb w8,[x20, #0x4ed]
02ca8638  ldr x8,[x21]
02ca863c  ldr x8,[x8, #0xb8]
02ca8640  ldr x8,[x8, #0x10]
02ca8644  cbz x8,0x02ca8660
02ca8648  ldr x0,[x8, #0x70]
02ca864c  cbz x0,0x02ca8660
02ca8650  ldr w1,[x19, #0x20]
02ca8654  ldp x20,x19,[sp, #0x10]
02ca8658  ldp x30,x21,[sp], #0x20
02ca865c  b 0x02ca7f64
02ca8660  bl 0x029f5cfc
