02ca3218  stp x30,x23,[sp, #-0x30]!
02ca321c  stp x22,x21,[sp, #0x10]
02ca3220  stp x20,x19,[sp, #0x20]
02ca3224  adrp x20,0x625c000
02ca3228  mov x19,x0
02ca322c  ldrb w8,[x20, #0x4b1]
02ca3230  tbnz w8,#0x0,0x02ca3254
02ca3234  adrp x0,0x5e59000
02ca3238  ldr x0,[x0, #0x1c0]
02ca323c  bl 0x029f5a50
02ca3240  adrp x0,0x5e5e000
02ca3244  ldr x0,[x0, #0x4b8]
02ca3248  bl 0x029f5a50
02ca324c  mov w8,#0x1
02ca3250  strb w8,[x20, #0x4b1]
02ca3254  mov x0,x19
02ca3258  mov x1,xzr
02ca325c  bl 0x057dc1c8
02ca3260  cbz x0,0x02ca340c
02ca3264  adrp x22,0x5e5e000
02ca3268  adrp x21,0x5e59000
02ca326c  mov w1,#0x1
02ca3270  ldr x22,[x22, #0x4b8]
02ca3274  ldr x21,[x21, #0x1c0]
02ca3278  mov x2,xzr
02ca327c  bl 0x057dff3c
02ca3280  ldr x0,[x22]
02ca3284  ldr w8,[x0, #0xe4]
02ca3288  cbnz w8,0x02ca3294
02ca328c  bl 0x029f5bd0
02ca3290  ldr x0,[x22]
02ca3294  ldr x8,[x21]
02ca3298  ldr x9,[x0, #0xb8]
02ca329c  ldr w10,[x8, #0xe4]
02ca32a0  ldr x20,[x9]
02ca32a4  cbnz w10,0x02ca32b0
02ca32a8  mov x0,x8
02ca32ac  bl 0x029f5bd0
02ca32b0  mov x0,x20
02ca32b4  mov x1,xzr
02ca32b8  mov x2,xzr
02ca32bc  bl 0x057dfa70
02ca32c0  tbz w0,#0x0,0x02ca32e8
02ca32c4  ldr x0,[x22]
02ca32c8  ldr w8,[x0, #0xe4]
02ca32cc  cbnz w8,0x02ca32d8
02ca32d0  bl 0x029f5bd0
02ca32d4  ldr x0,[x22]
02ca32d8  ldr x8,[x0, #0xb8]
02ca32dc  ldr x0,[x8]
02ca32e0  cbz x0,0x02ca340c
02ca32e4  bl 0x02ca284c
02ca32e8  ldrb w8,[x19, #0x30]
02ca32ec  cbz w8,0x02ca3384
02ca32f0  mov x0,x19
02ca32f4  bl 0x02ca4bec
02ca32f8  ldr x8,[x19, #0x28]
02ca32fc  cbz x8,0x02ca340c
02ca3300  mov w22,#0x4
02ca3304  ldr w9,[x8, #0x18]
02ca3308  sub x23,x22,#0x4
02ca330c  cmp x23,w9, SXTW 
02ca3310  b.ge 0x02ca3374
02ca3314  cmp x23,x9
02ca3318  b.cs 0x02ca3410
02ca331c  ldr x0,[x21]
02ca3320  ldr x20,[x8, x22, LSL #0x3]
02ca3324  ldr w9,[x0, #0xe4]
02ca3328  cbnz w9,0x02ca3330
02ca332c  bl 0x029f5bd0
02ca3330  mov x0,x20
02ca3334  mov x1,xzr
02ca3338  mov x2,xzr
02ca333c  bl 0x057dfa70
02ca3340  tbz w0,#0x0,0x02ca3364
02ca3344  ldr x8,[x19, #0x28]
02ca3348  cbz x8,0x02ca340c
02ca334c  ldr w9,[x8, #0x18]
02ca3350  cmp x23,x9
02ca3354  b.cs 0x02ca3410
02ca3358  ldr x0,[x8, x22, LSL #0x3]
02ca335c  cbz x0,0x02ca340c
02ca3360  bl 0x02ca480c
02ca3364  ldr x8,[x19, #0x28]
02ca3368  add x22,x22,#0x1
02ca336c  cbnz x8,0x02ca3304
02ca3370  b 0x02ca340c
02ca3374  ldp x20,x19,[sp, #0x20]
02ca3378  ldp x22,x21,[sp, #0x10]
02ca337c  ldp x30,x23,[sp], #0x30
02ca3380  ret
02ca3384  ldr x8,[x19, #0x28]
02ca3388  mov w9,#0x1
02ca338c  strb w9,[x19, #0x30]
02ca3390  cbz x8,0x02ca340c
02ca3394  mov x22,xzr
02ca3398  ldr w9,[x8, #0x18]
02ca339c  cmp x22,w9, SXTW 
02ca33a0  b.ge 0x02ca32f0
02ca33a4  cmp x22,x9
02ca33a8  b.cs 0x02ca3410
02ca33ac  ldr x0,[x21]
02ca33b0  add x8,x8,x22, LSL #0x3
02ca33b4  ldr w9,[x0, #0xe4]
02ca33b8  ldr x20,[x8, #0x20]
02ca33bc  cbnz w9,0x02ca33c4
02ca33c0  bl 0x029f5bd0
02ca33c4  mov x0,x20
02ca33c8  mov x1,xzr
02ca33cc  mov x2,xzr
02ca33d0  bl 0x057e14b4
02ca33d4  tbnz w0,#0x0,0x02ca3400
02ca33d8  ldr x8,[x19, #0x28]
02ca33dc  cbz x8,0x02ca340c
02ca33e0  ldr w9,[x8, #0x18]
02ca33e4  cmp x22,x9
02ca33e8  b.cs 0x02ca3410
02ca33ec  add x8,x8,x22, LSL #0x3
02ca33f0  ldr x0,[x8, #0x20]
02ca33f4  cbz x0,0x02ca340c
02ca33f8  str w22,[x0, #0x20]
02ca33fc  bl 0x02ca45e0
02ca3400  ldr x8,[x19, #0x28]
02ca3404  add x22,x22,#0x1
02ca3408  cbnz x8,0x02ca3398
02ca340c  bl 0x029f5cfc
02ca3410  bl 0x029f5d04
