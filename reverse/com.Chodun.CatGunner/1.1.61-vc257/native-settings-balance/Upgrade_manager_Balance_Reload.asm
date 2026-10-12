02cb24dc  sub sp,sp,#0x120
02cb24e0  stp d9,d8,[sp, #0xc0]
02cb24e4  stp x29,x30,[sp, #0xd0]
02cb24e8  stp x26,x25,[sp, #0xe0]
02cb24ec  stp x24,x23,[sp, #0xf0]
02cb24f0  stp x22,x21,[sp, #0x100]
02cb24f4  stp x20,x19,[sp, #0x110]
02cb24f8  adrp x20,0x625c000
02cb24fc  adrp x21,0x5e63000
02cb2500  mov x19,x0
02cb2504  ldrb w8,[x20, #0x554]
02cb2508  ldr x21,[x21, #0x90]
02cb250c  tbnz w8,#0x0,0x02cb2530
02cb2510  adrp x0,0x5e63000
02cb2514  ldr x0,[x0, #0x90]
02cb2518  bl 0x029f5a50
02cb251c  adrp x0,0x5e5d000
02cb2520  ldr x0,[x0, #0x790]
02cb2524  bl 0x029f5a50
02cb2528  mov w8,#0x1
02cb252c  strb w8,[x20, #0x554]
02cb2530  movi v0.2D,#0x0
02cb2534  ldr x0,[x21]
02cb2538  mov w1,#0x2711
02cb253c  stp q0,q0,[sp, #0x60]
02cb2540  stp q0,q0,[sp, #0x80]
02cb2544  stp q0,q0,[sp, #0xa0]
02cb2548  bl 0x029f5b40
02cb254c  mov x20,x19
02cb2550  mov x1,x0
02cb2554  str x0,[x20, #0x38]!
02cb2558  mov x0,x20
02cb255c  bl 0x029f59f4
02cb2560  ldr x23,[x20]
02cb2564  add x8,sp,#0x40
02cb2568  mov w0,#0x64
02cb256c  mov x1,xzr
02cb2570  bl 0x046544b8
02cb2574  cbz x23,0x02cb2920
02cb2578  ldr w8,[x23, #0x18]
02cb257c  cbz w8,0x02cb291c
02cb2580  ldp q0,q1,[sp, #0x40]
02cb2584  adrp x22,0x5e5d000
02cb2588  ldr x22,[x22, #0x790]
02cb258c  add x0,x23,#0x20
02cb2590  mov x1,xzr
02cb2594  stp q0,q1,[x23, #0x20]
02cb2598  bl 0x029f59f4
02cb259c  adrp x8,0x116f000
02cb25a0  mov w23,#0x1
02cb25a4  mov w24,#0x2711
02cb25a8  ldr d8,[x8, #0xff8]
02cb25ac  ldr x25,[x20]
02cb25b0  cbz x25,0x02cb2920
02cb25b4  fmov d0,d8
02cb25b8  add x8,sp,#0x40
02cb25bc  mov x0,xzr
02cb25c0  bl 0x04656c9c
02cb25c4  ldp q0,q1,[sp, #0x40]
02cb25c8  sub x8,x23,#0x1
02cb25cc  stp q0,q1,[sp, #0x80]
02cb25d0  ldr w9,[x25, #0x18]
02cb25d4  cmp x8,x9
02cb25d8  b.cs 0x02cb291c
02cb25dc  add x26,x25,#0x20
02cb25e0  add x1,sp,#0x80
02cb25e4  mov x2,xzr
02cb25e8  add x0,x26,x8, LSL #0x5
02cb25ec  add x8,sp,#0x20
02cb25f0  bl 0x04658538
02cb25f4  ldr w8,[x25, #0x18]
02cb25f8  cmp x23,x8
02cb25fc  b.cs 0x02cb291c
02cb2600  ldp q1,q0,[sp, #0x20]
02cb2604  add x8,x25,x23, LSL #0x5
02cb2608  add x0,x26,x23, LSL #0x5
02cb260c  mov x1,xzr
02cb2610  stp q1,q0,[x8, #0x20]
02cb2614  bl 0x029f59f4
02cb2618  ldr x26,[x20]
02cb261c  cbz x26,0x02cb2920
02cb2620  ldr w8,[x26, #0x18]
02cb2624  cmp x23,x8
02cb2628  b.cs 0x02cb291c
02cb262c  add x25,x26,x23, LSL #0x5
02cb2630  mov x8,sp
02cb2634  mov w1,#0x3
02cb2638  mov x2,xzr
02cb263c  add x0,x25,#0x20
02cb2640  bl 0x04658464
02cb2644  ldr w8,[x26, #0x18]
02cb2648  cmp x23,x8
02cb264c  b.cs 0x02cb291c
02cb2650  ldp q1,q0,[sp]
02cb2654  add x0,x25,#0x20
02cb2658  mov x1,xzr
02cb265c  stp q1,q0,[x25, #0x20]
02cb2660  bl 0x029f59f4
02cb2664  add x23,x23,#0x1
02cb2668  cmp x23,x24
02cb266c  b.ne 0x02cb25ac
02cb2670  ldr x0,[x22]
02cb2674  mov w1,#0x2711
02cb2678  bl 0x029f5b40
02cb267c  mov x20,x19
02cb2680  mov x1,x0
02cb2684  str x0,[x20, #0x48]!
02cb2688  mov x0,x20
02cb268c  bl 0x029f59f4
02cb2690  ldr x10,[x20]
02cb2694  cbz x10,0x02cb2920
02cb2698  ldr w9,[x10, #0x18]
02cb269c  cbz x9,0x02cb291c
02cb26a0  mov w11,#0x64
02cb26a4  lsl x9,x9,#0x3
02cb26a8  mov x8,xzr
02cb26ac  str w11,[x10, #0x20]
02cb26b0  mov w11,#0x3880
02cb26b4  add x10,x10,#0x24
02cb26b8  sub x9,x9,#0x8
02cb26bc  movk w11,#0x1, LSL #16
02cb26c0  cmp x9,x8
02cb26c4  b.eq 0x02cb291c
02cb26c8  add w12,w8,#0x6c
02cb26cc  add x8,x8,#0x8
02cb26d0  cmp x8,x11
02cb26d4  str w12,[x10], #0x4
02cb26d8  b.ne 0x02cb26c0
02cb26dc  ldr x0,[x21]
02cb26e0  mov w1,#0x2711
02cb26e4  bl 0x029f5b40
02cb26e8  mov x20,x19
02cb26ec  mov x1,x0
02cb26f0  str x0,[x20, #0x40]!
02cb26f4  mov x0,x20
02cb26f8  bl 0x029f59f4
02cb26fc  ldr x22,[x20]
02cb2700  add x8,sp,#0x40
02cb2704  mov w0,#0x64
02cb2708  mov x1,xzr
02cb270c  bl 0x046544b8
02cb2710  cbz x22,0x02cb2920
02cb2714  ldr w8,[x22, #0x18]
02cb2718  cbz w8,0x02cb291c
02cb271c  ldp q0,q1,[sp, #0x40]
02cb2720  add x0,x22,#0x20
02cb2724  mov x1,xzr
02cb2728  stp q0,q1,[x22, #0x20]
02cb272c  bl 0x029f59f4
02cb2730  mov w22,#0x1
02cb2734  mov w23,#0x2711
02cb2738  ldr x24,[x20]
02cb273c  cbz x24,0x02cb2920
02cb2740  fmov d0,d8
02cb2744  add x8,sp,#0x40
02cb2748  mov x0,xzr
02cb274c  bl 0x04656c9c
02cb2750  ldp q0,q1,[sp, #0x40]
02cb2754  sub x8,x22,#0x1
02cb2758  stp q0,q1,[sp, #0x80]
02cb275c  ldr w9,[x24, #0x18]
02cb2760  cmp x8,x9
02cb2764  b.cs 0x02cb291c
02cb2768  add x25,x24,#0x20
02cb276c  add x1,sp,#0x80
02cb2770  mov x2,xzr
02cb2774  add x0,x25,x8, LSL #0x5
02cb2778  add x8,sp,#0x20
02cb277c  bl 0x04658538
02cb2780  ldr w8,[x24, #0x18]
02cb2784  cmp x22,x8
02cb2788  b.cs 0x02cb291c
02cb278c  ldp q1,q0,[sp, #0x20]
02cb2790  add x8,x24,x22, LSL #0x5
02cb2794  add x0,x25,x22, LSL #0x5
02cb2798  mov x1,xzr
02cb279c  stp q1,q0,[x8, #0x20]
02cb27a0  bl 0x029f59f4
02cb27a4  ldr x25,[x20]
02cb27a8  cbz x25,0x02cb2920
02cb27ac  ldr w8,[x25, #0x18]
02cb27b0  cmp x22,x8
02cb27b4  b.cs 0x02cb291c
02cb27b8  add x24,x25,x22, LSL #0x5
02cb27bc  mov x8,sp
02cb27c0  mov w1,#0x3
02cb27c4  mov x2,xzr
02cb27c8  add x0,x24,#0x20
02cb27cc  bl 0x04658464
02cb27d0  ldr w8,[x25, #0x18]
02cb27d4  cmp x22,x8
02cb27d8  b.cs 0x02cb291c
02cb27dc  ldp q1,q0,[sp]
02cb27e0  add x0,x24,#0x20
02cb27e4  mov x1,xzr
02cb27e8  stp q1,q0,[x24, #0x20]
02cb27ec  bl 0x029f59f4
02cb27f0  add x22,x22,#0x1
02cb27f4  cmp x22,x23
02cb27f8  b.ne 0x02cb2738
02cb27fc  ldr x0,[x21]
02cb2800  mov w1,#0x2711
02cb2804  mov w20,#0x2711
02cb2808  bl 0x029f5b40
02cb280c  mov x1,x0
02cb2810  str x0,[x19, #0x30]!
02cb2814  mov x0,x19
02cb2818  bl 0x029f59f4
02cb281c  mov x8,#0x4049000000000000
02cb2820  mov x0,xzr
02cb2824  fmov d0,x8
02cb2828  add x8,sp,#0xa0
02cb282c  bl 0x04656c9c
02cb2830  adrp x8,0x116f000
02cb2834  fmov d8,0x4000000000000000
02cb2838  mov x21,xzr
02cb283c  ldr d9,[x8, #0x9f0]
02cb2840  ldr x22,[x19]
02cb2844  add x8,sp,#0x40
02cb2848  add x0,sp,#0xa0
02cb284c  mov x1,xzr
02cb2850  bl 0x0465a16c
02cb2854  ldp q0,q1,[sp, #0x40]
02cb2858  add x8,sp,#0x20
02cb285c  add x0,sp,#0x80
02cb2860  mov w1,#0x3
02cb2864  mov x2,xzr
02cb2868  stp q0,q1,[sp, #0x80]
02cb286c  bl 0x04658464
02cb2870  cbz x22,0x02cb2920
02cb2874  ldr w8,[x22, #0x18]
02cb2878  cmp x21,x8
02cb287c  b.cs 0x02cb291c
02cb2880  add x8,x22,x21, LSL #0x5
02cb2884  ldp q1,q0,[sp, #0x20]
02cb2888  mov x1,xzr
02cb288c  add x0,x8,#0x20
02cb2890  stp q1,q0,[x8, #0x20]
02cb2894  bl 0x029f59f4
02cb2898  lsr x8,x21,#0x3
02cb289c  mov x0,xzr
02cb28a0  cmp x8,#0x271
02cb28a4  add x8,sp,#0x40
02cb28a8  fcsel d0,d9,d8,cc
02cb28ac  bl 0x04656c9c
02cb28b0  ldp q0,q1,[sp, #0x40]
02cb28b4  add x8,sp,#0x20
02cb28b8  add x0,sp,#0xa0
02cb28bc  add x1,sp,#0x80
02cb28c0  mov x2,xzr
02cb28c4  stp q0,q1,[sp, #0x80]
02cb28c8  bl 0x04658538
02cb28cc  ldp q0,q1,[sp, #0x20]
02cb28d0  mov x8,sp
02cb28d4  add x0,sp,#0x60
02cb28d8  mov w1,#0x4
02cb28dc  mov x2,xzr
02cb28e0  stp q0,q1,[sp, #0x60]
02cb28e4  bl 0x04658464
02cb28e8  ldp q0,q1,[sp]
02cb28ec  add x21,x21,#0x1
02cb28f0  cmp x21,x20
02cb28f4  stp q0,q1,[sp, #0xa0]
02cb28f8  b.ne 0x02cb2840
02cb28fc  ldp x20,x19,[sp, #0x110]
02cb2900  ldp x22,x21,[sp, #0x100]
02cb2904  ldp x24,x23,[sp, #0xf0]
02cb2908  ldp x26,x25,[sp, #0xe0]
02cb290c  ldp x29,x30,[sp, #0xd0]
02cb2910  ldp d9,d8,[sp, #0xc0]
02cb2914  add sp,sp,#0x120
02cb2918  ret
02cb291c  bl 0x029f5d04
02cb2920  bl 0x029f5cfc
