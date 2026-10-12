02cb3754  str d8,[sp, #-0x30]!
02cb3758  stp x30,x21,[sp, #0x10]
02cb375c  stp x20,x19,[sp, #0x20]
02cb3760  adrp x19,0x625c000
02cb3764  adrp x20,0x5e5d000
02cb3768  ldrb w8,[x19, #0x56d]
02cb376c  ldr x20,[x20, #0x4e8]
02cb3770  tbnz w8,#0x0,0x02cb37ac
02cb3774  adrp x0,0x5e5d000
02cb3778  ldr x0,[x0, #0x910]
02cb377c  bl 0x029f5a50
02cb3780  adrp x0,0x5e59000
02cb3784  ldr x0,[x0, #0x1c0]
02cb3788  bl 0x029f5a50
02cb378c  adrp x0,0x5e5d000
02cb3790  ldr x0,[x0, #0x920]
02cb3794  bl 0x029f5a50
02cb3798  adrp x0,0x5e5d000
02cb379c  ldr x0,[x0, #0x4e8]
02cb37a0  bl 0x029f5a50
02cb37a4  mov w8,#0x1
02cb37a8  strb w8,[x19, #0x56d]
02cb37ac  ldr x0,[x20]
02cb37b0  ldr w8,[x0, #0xe4]
02cb37b4  cbnz w8,0x02cb37c0
02cb37b8  bl 0x029f5bd0
02cb37bc  ldr x0,[x20]
02cb37c0  ldr x8,[x0, #0xb8]
02cb37c4  ldr s0,[x8, #0x10]
02cb37c8  fcmp s0,#0.0
02cb37cc  b.ls 0x02cb37f8
02cb37d0  adrp x19,0x5e5d000
02cb37d4  ldr x19,[x19, #0x920]
02cb37d8  ldr x0,[x19]
02cb37dc  ldr w8,[x0, #0xe4]
02cb37e0  cbnz w8,0x02cb37ec
02cb37e4  bl 0x029f5bd0
02cb37e8  ldr x0,[x19]
02cb37ec  ldr x8,[x0, #0xb8]
02cb37f0  ldrb w8,[x8, #0xa]
02cb37f4  cbz w8,0x02cb3808
02cb37f8  ldp x20,x19,[sp, #0x20]
02cb37fc  ldp x30,x21,[sp, #0x10]
02cb3800  ldr d8,[sp], #0x30
02cb3804  ret
02cb3808  adrp x21,0x5e5d000
02cb380c  adrp x8,0x5e59000
02cb3810  ldr x21,[x21, #0x910]
02cb3814  ldr x8,[x8, #0x1c0]
02cb3818  ldr x9,[x21]
02cb381c  ldr x0,[x8]
02cb3820  ldr x8,[x9, #0xb8]
02cb3824  ldr w9,[x0, #0xe4]
02cb3828  ldr x19,[x8]
02cb382c  cbnz w9,0x02cb3834
02cb3830  bl 0x029f5bd0
02cb3834  mov x0,x19
02cb3838  mov x1,xzr
02cb383c  mov x2,xzr
02cb3840  bl 0x057dfa70
02cb3844  tbz w0,#0x0,0x02cb3864
02cb3848  ldr x8,[x21]
02cb384c  ldr x8,[x8, #0xb8]
02cb3850  ldr x0,[x8]
02cb3854  cbz x0,0x02cb38f4
02cb3858  mov x1,xzr
02cb385c  bl 0x02b89a90
02cb3860  tbnz w0,#0x0,0x02cb37f8
02cb3864  ldr x0,[x20]
02cb3868  ldr w8,[x0, #0xe4]
02cb386c  cbnz w8,0x02cb3878
02cb3870  bl 0x029f5bd0
02cb3874  ldr x0,[x20]
02cb3878  ldr x8,[x0, #0xb8]
02cb387c  mov x0,xzr
02cb3880  ldr s8,[x8, #0x10]
02cb3884  bl 0x057ebabc
02cb3888  fmov s1,0x3f000000
02cb388c  ldr x0,[x20]
02cb3890  ldr x8,[x0, #0xb8]
02cb3894  fminnm s0,s0,s1
02cb3898  fsub s0,s8,s0
02cb389c  fcmp s0,#0.0
02cb38a0  str s0,[x8, #0x10]
02cb38a4  b.hi 0x02cb37f8
02cb38a8  ldr w9,[x0, #0xe4]
02cb38ac  cbnz w9,0x02cb38bc
02cb38b0  bl 0x029f5bd0
02cb38b4  ldr x8,[x20]
02cb38b8  ldr x8,[x8, #0xb8]
02cb38bc  mov x0,xzr
02cb38c0  str wzr,[x8, #0x10]
02cb38c4  bl 0x02c0faf8
02cb38c8  ldr x8,[x20]
02cb38cc  ldr x8,[x8, #0xb8]
02cb38d0  ldr x8,[x8, #0x18]
02cb38d4  cbz x8,0x02cb37f8
02cb38d8  ldp x20,x19,[sp, #0x20]
02cb38dc  ldr x0,[x8, #0x40]
02cb38e0  ldp x30,x21,[sp, #0x10]
02cb38e4  ldr x1,[x8, #0x28]
02cb38e8  ldr x2,[x8, #0x18]
02cb38ec  ldr d8,[sp], #0x30
02cb38f0  br x2
02cb38f4  bl 0x029f5cfc
