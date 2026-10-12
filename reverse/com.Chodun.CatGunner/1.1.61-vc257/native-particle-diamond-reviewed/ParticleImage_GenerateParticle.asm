049c21ec  sub sp,sp,#0xf0
049c21f0  stp d15,d14,[sp, #0x70]
049c21f4  stp d13,d12,[sp, #0x80]
049c21f8  stp d11,d10,[sp, #0x90]
049c21fc  stp d9,d8,[sp, #0xa0]
049c2200  stp x30,x25,[sp, #0xb0]
049c2204  stp x24,x23,[sp, #0xc0]
049c2208  stp x22,x21,[sp, #0xd0]
049c220c  stp x20,x19,[sp, #0xe0]
049c2210  fmov s15,s1
049c2214  fmov s14,s0
049c2218  cmp w2,#0x1
049c221c  movi d10,#0x0
049c2220  mov x19,x0
049c2224  str s2,[sp, #0x54]
049c2228  b.gt 0x049c2240
049c222c  cbz w2,0x049c2274
049c2230  cmp w2,#0x1
049c2234  b.ne 0x049c22a4
049c2238  ldr s0,[x19, #0x3120]
049c223c  b 0x049c2254
049c2240  cmp w2,#0x2
049c2244  b.eq 0x049c2284
049c2248  cmp w2,#0x3
049c224c  b.ne 0x049c22a4
049c2250  ldr s0,[x19, #0x3128]
049c2254  mov w8,#0x43b40000
049c2258  fmov s1,w8
049c225c  fdiv s0,s1,s0
049c2260  scvtf s1,w1
049c2264  fmul s0,s0,s1
049c2268  ldr s1,[x19, #0x170]
049c226c  fdiv s0,s0,s1
049c2270  b 0x049c229c
049c2274  cbz x3,0x049c2ce4
049c2278  ldr s0,[x3, #0x14]
049c227c  scvtf s0,s0
049c2280  b 0x049c2288
049c2284  ldr s0,[x19, #0x3124]
049c2288  mov w8,#0x43b40000
049c228c  fmov s1,w8
049c2290  fdiv s0,s1,s0
049c2294  scvtf s1,w1
049c2298  fmul s0,s0,s1
049c229c  ldr s1,[x19, #0x148]
049c22a0  fmul s10,s1,s0
049c22a4  adrp x22,0x625b000
049c22a8  ldrb w8,[x22, #0x271]
049c22ac  cbnz w8,0x049c22c4
049c22b0  adrp x0,0x5e59000
049c22b4  ldr x0,[x0, #0x608]
049c22b8  bl 0x029f5a50
049c22bc  mov w8,#0x1
049c22c0  strb w8,[x22, #0x271]
049c22c4  adrp x20,0x5e59000
049c22c8  adrp x21,0x5e58000
049c22cc  adrp x23,0x625b000
049c22d0  ldr x20,[x20, #0x608]
049c22d4  ldr x8,[x20]
049c22d8  ldr x24,[x8, #0xb8]
049c22dc  ldr w8,[x19, #0x140]
049c22e0  ldp s12,s11,[x24]
049c22e4  ldr x21,[x21, #0xbf8]
049c22e8  cmp w8,#0x2
049c22ec  b.gt 0x049c23a8
049c22f0  cmp w8,#0x1
049c22f4  b.eq 0x049c23e4
049c22f8  cmp w8,#0x2
049c22fc  b.ne 0x049c276c
049c2300  ldrb w8,[x19, #0x165]
049c2304  cbz w8,0x049c24cc
049c2308  ldr w8,[x19, #0x144]
049c230c  ldr s8,[x19, #0x154]
049c2310  cmp w8,#0x1
049c2314  b.ne 0x049c2628
049c2318  adrp x8,0x116c000
049c231c  ldr s9,[x19, #0x158]
049c2320  add x0,sp,#0x6c
049c2324  ldr s0,[x8, #0x26c]
049c2328  add x1,sp,#0x68
049c232c  fmul s0,s10,s0
049c2330  bl 0x05afb270
049c2334  ldp s4,s0,[sp, #0x68]
049c2338  fmov s1,0xbf000000
049c233c  fmov s2,0x3f000000
049c2340  adrp x25,0x625b000
049c2344  ldrb w8,[x25, #0x278]
049c2348  fcmp s0,#0.0
049c234c  fcsel s3,s2,s1,gt
049c2350  fcmp s4,#0.0
049c2354  fcsel s1,s2,s1,gt
049c2358  fmul s3,s3,s9
049c235c  fmul s1,s1,s8
049c2360  fmul s5,s4,s3
049c2364  fdiv s2,s5,s0
049c2368  fmul s0,s0,s1
049c236c  fabs s5,s5
049c2370  fdiv s4,s0,s4
049c2374  fabs s0,s0
049c2378  fcmp s0,s5
049c237c  fcsel s8,s2,s1,pl
049c2380  fcsel s9,s3,s4,pl
049c2384  cbnz w8,0x049c23a0
049c2388  mov x0,x20
049c238c  bl 0x029f5a50
049c2390  ldr x8,[x20]
049c2394  mov w9,#0x1
049c2398  strb w9,[x25, #0x278]
049c239c  ldr x24,[x8, #0xb8]
049c23a0  ldp s11,s12,[x24, #0x8]
049c23a4  b 0x049c2734
049c23a8  cmp w8,#0x3
049c23ac  b.eq 0x049c243c
049c23b0  cmp w8,#0x4
049c23b4  b.ne 0x049c276c
049c23b8  ldrb w8,[x23, #0x26f]
049c23bc  cbnz w8,0x049c23d4
049c23c0  adrp x0,0x5e58000
049c23c4  ldr x0,[x0, #0xbf8]
049c23c8  bl 0x029f5a50
049c23cc  mov w8,#0x1
049c23d0  strb w8,[x23, #0x26f]
049c23d4  ldr x8,[x21]
049c23d8  ldr x8,[x8, #0xb8]
049c23dc  ldp s12,s11,[x8]
049c23e0  b 0x049c276c
049c23e4  ldrb w9,[x19, #0x165]
049c23e8  ldr w8,[x19, #0x144]
049c23ec  cbz w9,0x049c25c8
049c23f0  cbz w8,0x049c2664
049c23f4  movi d0,#0x0
049c23f8  fmov s1,0x3f800000
049c23fc  mov x0,xzr
049c2400  bl 0x057d55d4
049c2404  adrp x8,0x116c000
049c2408  fmov s8,s0
049c240c  movi d0,#0x0
049c2410  ldr s1,[x8, #0x26c]
049c2414  mov x0,xzr
049c2418  fmul s2,s10,s1
049c241c  movi d1,#0x0
049c2420  bl 0x057cd67c
049c2424  movi d4,#0x0
049c2428  movi d6,#0x0
049c242c  mov x0,xzr
049c2430  fmov s5,s8
049c2434  bl 0x057cdb04
049c2438  b 0x049c266c
049c243c  ldr w8,[x19, #0x144]
049c2440  cmp w8,#0x1
049c2444  b.ne 0x049c24a4
049c2448  adrp x8,0x116c000
049c244c  fmov s3,0x3f000000
049c2450  ldr s4,[x19, #0x160]
049c2454  ldr s0,[x8, #0x138]
049c2458  mov w8,#0x43b40000
049c245c  movi d11,#0x0
049c2460  fmov s2,w8
049c2464  fdiv s1,s10,s0
049c2468  fmul s3,s4,s3
049c246c  frintm s1,s1
049c2470  fmul s1,s1,s0
049c2474  fsub s1,s10,s1
049c2478  fcmp s1,s0
049c247c  fcsel s0,s0,s1,gt
049c2480  fcmp s1,#0.0
049c2484  fdiv s0,s0,s2
049c2488  fmov s2,0xbf000000
049c248c  fmul s2,s4,s2
049c2490  fsub s1,s3,s2
049c2494  fcsel s0,s11,s0,mi
049c2498  fmul s0,s0,s1
049c249c  fadd s12,s2,s0
049c24a0  b 0x049c276c
049c24a4  fmov s0,0xbf000000
049c24a8  fmov s1,0x3f000000
049c24ac  ldr s2,[x19, #0x160]
049c24b0  mov x0,xzr
049c24b4  fmul s0,s2,s0
049c24b8  fmul s1,s2,s1
049c24bc  bl 0x057d55d4
049c24c0  movi d11,#0x0
049c24c4  fmov s12,s0
049c24c8  b 0x049c276c
049c24cc  movi d0,#0x0
049c24d0  mov w8,#0x43b40000
049c24d4  mov x0,xzr
049c24d8  fmov s1,w8
049c24dc  movi d8,#0x0
049c24e0  bl 0x057d55d4
049c24e4  ldr w8,[x19, #0x144]
049c24e8  ldr s9,[x19, #0x154]
049c24ec  add x0,sp,#0x64
049c24f0  ldr s11,[x19, #0x158]
049c24f4  add x1,sp,#0x60
049c24f8  cmp w8,#0x1
049c24fc  adrp x8,0x116c000
049c2500  fcsel s0,s10,s0,eq
049c2504  ldr s1,[x8, #0x26c]
049c2508  fmul s0,s0,s1
049c250c  bl 0x05afb270
049c2510  ldp s5,s0,[sp, #0x60]
049c2514  fmov s1,0xbf000000
049c2518  fmov s2,0x3f000000
049c251c  ldr s16,[x19, #0x168]
049c2520  mov x0,xzr
049c2524  fcmp s0,#0.0
049c2528  fsub s18,s11,s16
049c252c  fsub s16,s9,s16
049c2530  fcsel s3,s2,s1,gt
049c2534  fcmp s5,#0.0
049c2538  fcsel s1,s2,s1,gt
049c253c  fmul s4,s11,s3
049c2540  fmul s3,s3,s18
049c2544  fmul s7,s9,s1
049c2548  fmul s1,s1,s16
049c254c  fmul s6,s5,s4
049c2550  fmul s18,s5,s3
049c2554  fmul s17,s0,s7
049c2558  fdiv s2,s6,s0
049c255c  fabs s6,s6
049c2560  fabs s16,s17
049c2564  fcmp s16,s6
049c2568  fdiv s20,s18,s0
049c256c  fmul s0,s0,s1
049c2570  fcsel s9,s2,s7,pl
049c2574  fdiv s19,s17,s5
049c2578  fabs s17,s18
049c257c  fdiv s5,s0,s5
049c2580  fabs s0,s0
049c2584  fcsel s11,s4,s19,pl
049c2588  fcmp s0,s17
049c258c  fcsel s12,s20,s1,pl
049c2590  fcsel s13,s3,s5,pl
049c2594  bl 0x057d569c
049c2598  fmov s1,0x3f800000
049c259c  fsub s2,s13,s11
049c25a0  fcmp s0,s1
049c25a4  fcsel s1,s1,s0,gt
049c25a8  fcmp s0,#0.0
049c25ac  fcsel s0,s8,s1,mi
049c25b0  fsub s1,s12,s9
049c25b4  fmul s1,s1,s0
049c25b8  fmul s0,s2,s0
049c25bc  fadd s12,s9,s1
049c25c0  fadd s11,s11,s0
049c25c4  b 0x049c276c
049c25c8  cbz w8,0x049c267c
049c25cc  adrp x8,0x116c000
049c25d0  movi d1,#0x0
049c25d4  mov x0,xzr
049c25d8  ldr s0,[x8, #0x26c]
049c25dc  fmul s2,s10,s0
049c25e0  movi d0,#0x0
049c25e4  bl 0x057cd67c
049c25e8  movi d4,#0x0
049c25ec  movi d6,#0x0
049c25f0  mov x0,xzr
049c25f4  fmov s5,0x3f800000
049c25f8  bl 0x057cdb04
049c25fc  fmov s8,s0
049c2600  ldr s0,[x19, #0x150]
049c2604  ldr s2,[x19, #0x168]
049c2608  fmov s9,s1
049c260c  mov x0,xzr
049c2610  fsub s2,s0,s2
049c2614  fmov s1,s2
049c2618  bl 0x057d55d4
049c261c  fmul s12,s8,s0
049c2620  fmul s11,s9,s0
049c2624  b 0x049c276c
049c2628  fmov s9,0xbf000000
049c262c  fmov s11,0x3f000000
049c2630  mov x0,xzr
049c2634  fmul s0,s8,s9
049c2638  fmul s1,s8,s11
049c263c  bl 0x057d55d4
049c2640  ldr s1,[x19, #0x158]
049c2644  fmov s12,s0
049c2648  mov x0,xzr
049c264c  fmul s2,s1,s9
049c2650  fmul s1,s1,s11
049c2654  fmov s0,s2
049c2658  bl 0x057d55d4
049c265c  fmov s11,s0
049c2660  b 0x049c276c
049c2664  mov x0,xzr
049c2668  bl 0x057d5788
049c266c  ldr s2,[x19, #0x150]
049c2670  fmul s12,s0,s2
049c2674  fmul s11,s1,s2
049c2678  b 0x049c276c
049c267c  mov x0,xzr
049c2680  bl 0x057d5788
049c2684  fmov s8,s0
049c2688  fmov s9,s1
049c268c  adrp x24,0x625b000
049c2690  ldrb w8,[x24, #0x52c]
049c2694  cbnz w8,0x049c26ac
049c2698  adrp x0,0x5e59000
049c269c  ldr x0,[x0]
049c26a0  bl 0x029f5a50
049c26a4  mov w8,#0x1
049c26a8  strb w8,[x24, #0x52c]
049c26ac  adrp x8,0x5e59000
049c26b0  ldr x8,[x8]
049c26b4  ldr x0,[x8]
049c26b8  ldr w8,[x0, #0xe4]
049c26bc  cbnz w8,0x049c26c4
049c26c0  bl 0x029f5bd0
049c26c4  fmul s0,s8,s8
049c26c8  fmul s1,s9,s9
049c26cc  adrp x8,0x116c000
049c26d0  fadd s0,s0,s1
049c26d4  fsqrt s1,s0
049c26d8  ldr s0,[x8, #0x240]
049c26dc  fcmp s1,s0
049c26e0  b.le 0x049c26f0
049c26e4  fdiv s0,s8,s1
049c26e8  fdiv s1,s9,s1
049c26ec  b 0x049c2718
049c26f0  ldrb w8,[x22, #0x271]
049c26f4  cbnz w8,0x049c270c
049c26f8  adrp x0,0x5e59000
049c26fc  ldr x0,[x0, #0x608]
049c2700  bl 0x029f5a50
049c2704  mov w8,#0x1
049c2708  strb w8,[x22, #0x271]
049c270c  ldr x8,[x20]
049c2710  ldr x8,[x8, #0xb8]
049c2714  ldp s0,s1,[x8]
049c2718  ldr s2,[x19, #0x150]
049c271c  ldr s3,[x19, #0x168]
049c2720  fsub s3,s2,s3
049c2724  fmul s8,s0,s2
049c2728  fmul s9,s1,s2
049c272c  fmul s11,s0,s3
049c2730  fmul s12,s1,s3
049c2734  mov x0,xzr
049c2738  bl 0x057d569c
049c273c  fmov s1,0x3f800000
049c2740  movi d2,#0x0
049c2744  fcmp s0,s1
049c2748  fcsel s1,s1,s0,gt
049c274c  fcmp s0,#0.0
049c2750  fcsel s0,s2,s1,mi
049c2754  fsub s1,s11,s8
049c2758  fsub s2,s12,s9
049c275c  fmul s1,s1,s0
049c2760  fmul s0,s2,s0
049c2764  fadd s12,s8,s1
049c2768  fadd s11,s9,s0
049c276c  ldrb w8,[x23, #0x26f]
049c2770  cbnz w8,0x049c2788
049c2774  adrp x0,0x5e58000
049c2778  ldr x0,[x0, #0xbf8]
049c277c  bl 0x029f5a50
049c2780  mov w8,#0x1
049c2784  strb w8,[x23, #0x26f]
049c2788  ldr x8,[x21]
049c278c  ldr w9,[x19, #0x140]
049c2790  ldr x8,[x8, #0xb8]
049c2794  cmp w9,#0x1
049c2798  ldp s1,s0,[x8]
049c279c  b.le 0x049c283c
049c27a0  cmp w9,#0x2
049c27a4  b.eq 0x049c2848
049c27a8  cmp w9,#0x3
049c27ac  b.eq 0x049c28ac
049c27b0  cmp w9,#0x4
049c27b4  b.ne 0x049c2b78
049c27b8  ldr w9,[x19, #0x128]
049c27bc  ldr w8,[x19, #0x144]
049c27c0  cmp w9,#0x1
049c27c4  b.ne 0x049c2a44
049c27c8  ldr s8,[x19, #0x15c]
049c27cc  cmp w8,#0x1
049c27d0  b.ne 0x049c2ad4
049c27d4  mov x0,x19
049c27d8  mov x1,xzr
049c27dc  bl 0x057dc0f8
049c27e0  cbz x0,0x049c2ce4
049c27e4  adrp x8,0x116c000
049c27e8  fmov s3,0xbf000000
049c27ec  movi d4,#0x0
049c27f0  ldr s0,[x8, #0x138]
049c27f4  mov w8,#0x43b40000
049c27f8  fmov s2,w8
049c27fc  fdiv s1,s10,s0
049c2800  fmul s3,s8,s3
049c2804  frintm s1,s1
049c2808  fmul s1,s1,s0
049c280c  fsub s1,s10,s1
049c2810  fcmp s1,s0
049c2814  fcsel s0,s0,s1,gt
049c2818  fcmp s1,#0.0
049c281c  fdiv s0,s0,s2
049c2820  fmov s2,0x3f000000
049c2824  fmul s2,s8,s2
049c2828  fsub s1,s2,s3
049c282c  fcsel s0,s4,s0,mi
049c2830  fmul s0,s0,s1
049c2834  fadd s8,s3,s0
049c2838  b 0x049c2b00
049c283c  cbz w9,0x049c2930
049c2840  cmp w9,#0x1
049c2844  b.ne 0x049c2b78
049c2848  adrp x21,0x625b000
049c284c  ldrb w8,[x21, #0x52c]
049c2850  cbnz w8,0x049c2868
049c2854  adrp x0,0x5e59000
049c2858  ldr x0,[x0]
049c285c  bl 0x029f5a50
049c2860  mov w8,#0x1
049c2864  strb w8,[x21, #0x52c]
049c2868  adrp x8,0x5e59000
049c286c  ldr x8,[x8]
049c2870  ldr x0,[x8]
049c2874  ldr w8,[x0, #0xe4]
049c2878  cbnz w8,0x049c2880
049c287c  bl 0x029f5bd0
049c2880  fmul s0,s12,s12
049c2884  fmul s1,s11,s11
049c2888  adrp x8,0x116c000
049c288c  fadd s0,s1,s0
049c2890  ldr s1,[x8, #0x240]
049c2894  fsqrt s0,s0
049c2898  fcmp s0,s1
049c289c  b.le 0x049c28d4
049c28a0  fdiv s9,s12,s0
049c28a4  fdiv s10,s11,s0
049c28a8  b 0x049c28fc
049c28ac  ldr w9,[x19, #0x128]
049c28b0  cmp w9,#0x1
049c28b4  b.ne 0x049c2978
049c28b8  mov x0,x19
049c28bc  mov x1,xzr
049c28c0  bl 0x057dc0f8
049c28c4  cbz x0,0x049c2ce4
049c28c8  mov x1,xzr
049c28cc  bl 0x057ef354
049c28d0  b 0x049c296c
049c28d4  ldrb w8,[x22, #0x271]
049c28d8  cbnz w8,0x049c28f0
049c28dc  adrp x0,0x5e59000
049c28e0  ldr x0,[x0, #0x608]
049c28e4  bl 0x029f5a50
049c28e8  mov w8,#0x1
049c28ec  strb w8,[x22, #0x271]
049c28f0  ldr x8,[x20]
049c28f4  ldr x8,[x8, #0xb8]
049c28f8  ldp s9,s10,[x8]
049c28fc  mov x0,xzr
049c2900  bl 0x057d569c
049c2904  mov x0,xzr
049c2908  fmov s8,s0
049c290c  bl 0x057d569c
049c2910  fmov s1,s0
049c2914  fmov s0,s8
049c2918  add x0,x19,#0x258
049c291c  mov x1,xzr
049c2920  bl 0x058623c8
049c2924  fmul s1,s9,s0
049c2928  fmul s0,s10,s0
049c292c  b 0x049c2b78
049c2930  ldr w8,[x19, #0x144]
049c2934  cmp w8,#0x1
049c2938  b.ne 0x049c29d0
049c293c  adrp x8,0x116c000
049c2940  movi d1,#0x0
049c2944  mov x0,xzr
049c2948  ldr s0,[x8, #0x26c]
049c294c  fmul s2,s10,s0
049c2950  movi d0,#0x0
049c2954  bl 0x057cd67c
049c2958  movi d4,#0x0
049c295c  movi d6,#0x0
049c2960  mov x0,xzr
049c2964  fmov s5,0x3f800000
049c2968  bl 0x057cdb04
049c296c  fmov s8,s0
049c2970  fmov s9,s1
049c2974  b 0x049c29a0
049c2978  adrp x20,0x625b000
049c297c  ldrb w9,[x20, #0x61d]
049c2980  cbnz w9,0x049c299c
049c2984  mov x0,x21
049c2988  bl 0x029f5a50
049c298c  ldr x8,[x21]
049c2990  mov w9,#0x1
049c2994  strb w9,[x20, #0x61d]
049c2998  ldr x8,[x8, #0xb8]
049c299c  ldp s8,s9,[x8, #0x18]
049c29a0  mov x0,xzr
049c29a4  bl 0x057d569c
049c29a8  mov x0,xzr
049c29ac  fmov s10,s0
049c29b0  bl 0x057d569c
049c29b4  fmov s1,s0
049c29b8  fmov s0,s10
049c29bc  add x0,x19,#0x258
049c29c0  mov x1,xzr
049c29c4  bl 0x058623c8
049c29c8  fmul s1,s8,s0
049c29cc  b 0x049c2b74
049c29d0  mov x0,xzr
049c29d4  bl 0x057d5788
049c29d8  fmov s8,s0
049c29dc  fmov s9,s1
049c29e0  adrp x21,0x625b000
049c29e4  ldrb w8,[x21, #0x52c]
049c29e8  cbnz w8,0x049c2a00
049c29ec  adrp x0,0x5e59000
049c29f0  ldr x0,[x0]
049c29f4  bl 0x029f5a50
049c29f8  mov w8,#0x1
049c29fc  strb w8,[x21, #0x52c]
049c2a00  adrp x8,0x5e59000
049c2a04  ldr x8,[x8]
049c2a08  ldr x0,[x8]
049c2a0c  ldr w8,[x0, #0xe4]
049c2a10  cbnz w8,0x049c2a18
049c2a14  bl 0x029f5bd0
049c2a18  fmul s0,s8,s8
049c2a1c  fmul s1,s9,s9
049c2a20  adrp x8,0x116c000
049c2a24  fadd s0,s0,s1
049c2a28  ldr s1,[x8, #0x240]
049c2a2c  fsqrt s0,s0
049c2a30  fcmp s0,s1
049c2a34  b.le 0x049c2aa8
049c2a38  fdiv s10,s8,s0
049c2a3c  fdiv s9,s9,s0
049c2a40  b 0x049c2b48
049c2a44  cmp w8,#0x1
049c2a48  b.ne 0x049c2b10
049c2a4c  adrp x8,0x116c000
049c2a50  fmov s3,0x3f000000
049c2a54  ldr s4,[x19, #0x15c]
049c2a58  ldr s0,[x8, #0x138]
049c2a5c  mov w8,#0x43b40000
049c2a60  fmov s2,w8
049c2a64  fdiv s1,s10,s0
049c2a68  fmul s3,s4,s3
049c2a6c  frintm s1,s1
049c2a70  fmul s1,s1,s0
049c2a74  fsub s1,s10,s1
049c2a78  fcmp s1,s0
049c2a7c  fcsel s0,s0,s1,gt
049c2a80  fcmp s1,#0.0
049c2a84  fdiv s0,s0,s2
049c2a88  fmov s2,0xbf000000
049c2a8c  fmul s2,s4,s2
049c2a90  movi d4,#0x0
049c2a94  fsub s1,s3,s2
049c2a98  fcsel s0,s4,s0,mi
049c2a9c  fmul s0,s0,s1
049c2aa0  fadd s0,s2,s0
049c2aa4  b 0x049c2b2c
049c2aa8  ldrb w8,[x22, #0x271]
049c2aac  cbnz w8,0x049c2ac4
049c2ab0  adrp x0,0x5e59000
049c2ab4  ldr x0,[x0, #0x608]
049c2ab8  bl 0x029f5a50
049c2abc  mov w8,#0x1
049c2ac0  strb w8,[x22, #0x271]
049c2ac4  ldr x8,[x20]
049c2ac8  ldr x8,[x8, #0xb8]
049c2acc  ldp s10,s9,[x8]
049c2ad0  b 0x049c2b48
049c2ad4  fmov s0,0xbf000000
049c2ad8  fmov s1,0x3f000000
049c2adc  mov x0,xzr
049c2ae0  fmul s0,s8,s0
049c2ae4  fmul s1,s8,s1
049c2ae8  bl 0x057d55d4
049c2aec  mov x0,x19
049c2af0  mov x1,xzr
049c2af4  fmov s8,s0
049c2af8  bl 0x057dc0f8
049c2afc  cbz x0,0x049c2ce4
049c2b00  mov x1,xzr
049c2b04  bl 0x057eefd0
049c2b08  fsub s0,s8,s2
049c2b0c  b 0x049c2b2c
049c2b10  fmov s0,0xbf000000
049c2b14  fmov s1,0x3f000000
049c2b18  ldr s2,[x19, #0x15c]
049c2b1c  mov x0,xzr
049c2b20  fmul s0,s2,s0
049c2b24  fmul s1,s2,s1
049c2b28  bl 0x057d55d4
049c2b2c  adrp x8,0x116c000
049c2b30  add x0,sp,#0x5c
049c2b34  add x1,sp,#0x58
049c2b38  ldr s1,[x8, #0x26c]
049c2b3c  fmul s0,s0,s1
049c2b40  bl 0x05afb270
049c2b44  ldp s9,s10,[sp, #0x58]
049c2b48  mov x0,xzr
049c2b4c  bl 0x057d569c
049c2b50  mov x0,xzr
049c2b54  fmov s8,s0
049c2b58  bl 0x057d569c
049c2b5c  fmov s1,s0
049c2b60  fmov s0,s8
049c2b64  add x0,x19,#0x258
049c2b68  mov x1,xzr
049c2b6c  bl 0x058623c8
049c2b70  fmul s1,s10,s0
049c2b74  fmul s0,s9,s0
049c2b78  mov x0,x19
049c2b7c  stp s0,s1,[sp, #0x3c]
049c2b80  stp s11,s12,[sp, #0x44]
049c2b84  stp s15,s14,[sp, #0x4c]
049c2b88  bl 0x049bc0e0
049c2b8c  cbz x0,0x049c2ce4
049c2b90  mov x1,xzr
049c2b94  bl 0x049ce790
049c2b98  mov x20,x0
049c2b9c  mov x0,xzr
049c2ba0  bl 0x057d569c
049c2ba4  mov x0,xzr
049c2ba8  fmov s8,s0
049c2bac  bl 0x057d569c
049c2bb0  fmov s1,s0
049c2bb4  ldrb w8,[x19, #0x409]
049c2bb8  fmov s0,s8
049c2bbc  add x9,x19,#0x410
049c2bc0  add x10,x19,#0x470
049c2bc4  mov x1,xzr
049c2bc8  cmp w8,#0x0
049c2bcc  csel x0,x9,x10,eq
049c2bd0  bl 0x058623c8
049c2bd4  mov x0,xzr
049c2bd8  str s0,[sp, #0x38]
049c2bdc  bl 0x057d569c
049c2be0  mov x0,xzr
049c2be4  fmov s8,s0
049c2be8  bl 0x057d569c
049c2bec  fmov s1,s0
049c2bf0  fmov s0,s8
049c2bf4  add x0,x19,#0x200
049c2bf8  mov x1,xzr
049c2bfc  bl 0x058626a4
049c2c00  mov x0,xzr
049c2c04  fmov s10,s0
049c2c08  fmov s11,s1
049c2c0c  fmov s9,s2
049c2c10  fmov s8,s3
049c2c14  bl 0x057d569c
049c2c18  mov x0,xzr
049c2c1c  fmov s12,s0
049c2c20  bl 0x057d569c
049c2c24  fmov s1,s0
049c2c28  fmov s0,s12
049c2c2c  add x0,x19,#0x178
049c2c30  bl 0x049bae18
049c2c34  mov x0,xzr
049c2c38  fmov s13,s0
049c2c3c  fmov s14,s1
049c2c40  fmov s12,s2
049c2c44  bl 0x057d569c
049c2c48  mov x0,xzr
049c2c4c  fmov s15,s0
049c2c50  bl 0x057d569c
049c2c54  fmov s1,s0
049c2c58  fmov s0,s15
049c2c5c  add x0,x19,#0x238
049c2c60  mov x1,xzr
049c2c64  bl 0x058623c8
049c2c68  cbz x20,0x049c2ce4
049c2c6c  ldp s2,s3,[sp, #0x44]
049c2c70  movi d4,#0x0
049c2c74  ldr s1,[sp, #0x54]
049c2c78  str s0,[sp, #0x20]
049c2c7c  movi d5,#0x0
049c2c80  ldr s6,[sp, #0x38]
049c2c84  mov x0,x20
049c2c88  stp s13,s14,[sp, #0x10]
049c2c8c  fadd s1,s1,s2
049c2c90  ldr s2,[sp, #0x4c]
049c2c94  stp s10,s11,[sp]
049c2c98  str s12,[sp, #0x18]
049c2c9c  fadd s2,s2,s3
049c2ca0  ldr s3,[sp, #0x50]
049c2ca4  stp s9,s8,[sp, #0x8]
049c2ca8  str s3,[sp, #0x28]
049c2cac  fmov s0,s2
049c2cb0  ldp s3,s2,[sp, #0x3c]
049c2cb4  bl 0x049b8834
049c2cb8  mov x0,x20
049c2cbc  ldp x20,x19,[sp, #0xe0]
049c2cc0  ldp x22,x21,[sp, #0xd0]
049c2cc4  ldp x24,x23,[sp, #0xc0]
049c2cc8  ldp x30,x25,[sp, #0xb0]
049c2ccc  ldp d9,d8,[sp, #0xa0]
049c2cd0  ldp d11,d10,[sp, #0x90]
049c2cd4  ldp d13,d12,[sp, #0x80]
049c2cd8  ldp d15,d14,[sp, #0x70]
049c2cdc  add sp,sp,#0xf0
049c2ce0  ret
049c2ce4  bl 0x029f5cfc
