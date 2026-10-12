02cb23e8  stp x30,x21,[sp, #-0x20]!
02cb23ec  stp x20,x19,[sp, #0x10]
02cb23f0  adrp x21,0x625c000
02cb23f4  adrp x20,0x5e5d000
02cb23f8  mov x19,x0
02cb23fc  ldrb w8,[x21, #0x553]
02cb2400  ldr x20,[x20, #0x338]
02cb2404  tbnz w8,#0x0,0x02cb241c
02cb2408  adrp x0,0x5e5d000
02cb240c  ldr x0,[x0, #0x338]
02cb2410  bl 0x029f5a50
02cb2414  mov w8,#0x1
02cb2418  strb w8,[x21, #0x553]
02cb241c  ldr x0,[x20]
02cb2420  ldr w8,[x0, #0xe4]
02cb2424  cbnz w8,0x02cb2430
02cb2428  bl 0x029f5bd0
02cb242c  ldr x0,[x20]
02cb2430  ldr x8,[x0, #0xb8]
02cb2434  ldr x1,[x8, #0xc8]
02cb2438  str x1,[x19, #0x50]!
02cb243c  mov x0,x19
02cb2440  bl 0x029f59f4
02cb2444  ldr x0,[x19, #0x8]
02cb2448  cbz x0,0x02cb2458
02cb244c  ldp x20,x19,[sp, #0x10]
02cb2450  ldp x30,x21,[sp], #0x20
02cb2454  b 0x02cb2310
02cb2458  bl 0x029f5cfc
