02ca260c  str x30,[sp, #-0x30]!
02ca2610  stp x22,x21,[sp, #0x10]
02ca2614  stp x20,x19,[sp, #0x20]
02ca2618  adrp x19,0x625c000
02ca261c  adrp x20,0x5e58000
02ca2620  ldrb w8,[x19, #0x493]
02ca2624  ldr x20,[x20, #0xa90]
02ca2628  tbnz w8,#0x0,0x02ca2688
02ca262c  adrp x0,0x5e5d000
02ca2630  ldr x0,[x0, #0x790]
02ca2634  bl 0x029f5a50
02ca2638  adrp x0,0x5e64000
02ca263c  ldr x0,[x0, #0x8b8]
02ca2640  bl 0x029f5a50
02ca2644  adrp x0,0x5e58000
02ca2648  ldr x0,[x0, #0xa90]
02ca264c  bl 0x029f5a50
02ca2650  adrp x0,0x5e64000
02ca2654  ldr x0,[x0, #0x8f0]
02ca2658  bl 0x029f5a50
02ca265c  adrp x0,0x5e64000
02ca2660  ldr x0,[x0, #0x8f8]
02ca2664  bl 0x029f5a50
02ca2668  adrp x0,0x5e64000
02ca266c  ldr x0,[x0, #0x900]
02ca2670  bl 0x029f5a50
02ca2674  adrp x0,0x5e64000
02ca2678  ldr x0,[x0, #0x908]
02ca267c  bl 0x029f5a50
02ca2680  mov w8,#0x1
02ca2684  strb w8,[x19, #0x493]
02ca2688  ldr x0,[x20]
02ca268c  mov w1,#0x3
02ca2690  bl 0x029f5b40
02ca2694  cbz x0,0x02ca2780
02ca2698  ldr w8,[x0, #0x18]
02ca269c  mov x19,x0
02ca26a0  cbz w8,0x02ca277c
02ca26a4  adrp x8,0x5e64000
02ca26a8  mov x20,x19
02ca26ac  ldr x8,[x8, #0x8f8]
02ca26b0  ldr x1,[x8]
02ca26b4  str x1,[x20, #0x20]!
02ca26b8  mov x0,x20
02ca26bc  bl 0x029f59f4
02ca26c0  ldur w8,[x20, #-0x8]
02ca26c4  tst w8,#0xfffffffe
02ca26c8  b.eq 0x02ca277c
02ca26cc  adrp x8,0x5e64000
02ca26d0  mov x20,x19
02ca26d4  ldr x8,[x8, #0x900]
02ca26d8  ldr x1,[x8]
02ca26dc  str x1,[x20, #0x28]!
02ca26e0  mov x0,x20
02ca26e4  bl 0x029f59f4
02ca26e8  ldur w8,[x20, #-0x10]
02ca26ec  cmp w8,#0x2
02ca26f0  b.ls 0x02ca277c
02ca26f4  adrp x8,0x5e64000
02ca26f8  adrp x20,0x5e64000
02ca26fc  adrp x21,0x5e5d000
02ca2700  ldr x8,[x8, #0x908]
02ca2704  ldr x20,[x20, #0x8b8]
02ca2708  ldr x21,[x21, #0x790]
02ca270c  adrp x22,0x5e64000
02ca2710  mov x0,x19
02ca2714  ldr x1,[x8]
02ca2718  ldr x22,[x22, #0x8f0]
02ca271c  str x1,[x0, #0x30]!
02ca2720  bl 0x029f59f4
02ca2724  ldr x8,[x20]
02ca2728  mov x1,x19
02ca272c  ldr x8,[x8, #0xb8]
02ca2730  str x19,[x8]
02ca2734  ldr x8,[x20]
02ca2738  ldr x0,[x8, #0xb8]
02ca273c  bl 0x029f59f4
02ca2740  ldr x0,[x21]
02ca2744  mov w1,#0x3
02ca2748  bl 0x029f5b40
02ca274c  ldr x1,[x22]
02ca2750  mov x2,xzr
02ca2754  mov x19,x0
02ca2758  bl 0x047779e0
02ca275c  ldr x8,[x20]
02ca2760  mov x1,x19
02ca2764  ldp x22,x21,[sp, #0x10]
02ca2768  ldr x0,[x8, #0xb8]
02ca276c  str x19,[x0, #0x8]!
02ca2770  ldp x20,x19,[sp, #0x20]
02ca2774  ldr x30,[sp], #0x30
02ca2778  b 0x029f59f4
02ca277c  bl 0x029f5d04
02ca2780  bl 0x029f5cfc
