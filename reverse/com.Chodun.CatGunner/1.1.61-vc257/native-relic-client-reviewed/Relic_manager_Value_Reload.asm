02c31f8c  sub sp,sp,#0x130
02c31f90  str x29,[sp, #0xe0]
02c31f94  stp x30,x25,[sp, #0xf0]
02c31f98  stp x24,x23,[sp, #0x100]
02c31f9c  stp x22,x21,[sp, #0x110]
02c31fa0  stp x20,x19,[sp, #0x120]
02c31fa4  adrp x20,0x625c000
02c31fa8  adrp x21,0x5e5d000
02c31fac  mov x19,x0
02c31fb0  ldrb w8,[x20, #0x40]
02c31fb4  ldr x21,[x21, #0x4d8]
02c31fb8  tbnz w8,#0x0,0x02c31fe8
02c31fbc  adrp x0,0x5e5d000
02c31fc0  ldr x0,[x0, #0x5b0]
02c31fc4  bl 0x029f5a50
02c31fc8  adrp x0,0x5e5d000
02c31fcc  ldr x0,[x0, #0x338]
02c31fd0  bl 0x029f5a50
02c31fd4  adrp x0,0x5e5d000
02c31fd8  ldr x0,[x0, #0x4d8]
02c31fdc  bl 0x029f5a50
02c31fe0  mov w8,#0x1
02c31fe4  strb w8,[x20, #0x40]
02c31fe8  movi v0.2D,#0x0
02c31fec  ldr x0,[x21]
02c31ff0  ldr w8,[x0, #0xe4]
02c31ff4  stp q0,q0,[sp, #0x60]
02c31ff8  stp q0,q0,[sp, #0x80]
02c31ffc  stp q0,q0,[sp, #0xa0]
02c32000  stp q0,q0,[sp, #0xc0]
02c32004  cbnz w8,0x02c32010
02c32008  bl 0x029f5bd0
02c3200c  ldr x0,[x21]
02c32010  ldr x8,[x0, #0xb8]
02c32014  mov w0,#0x64
02c32018  mov x1,xzr
02c3201c  ldp q0,q1,[x8]
02c32020  ldr w22,[x8, #0x60]
02c32024  stp q0,q1,[sp, #0xc0]
02c32028  ldp q0,q2,[x8, #0x40]
02c3202c  stp q0,q2,[sp, #0xa0]
02c32030  ldp q1,q0,[x8, #0x20]
02c32034  add x8,sp,#0x40
02c32038  stp q1,q0,[sp, #0x80]
02c3203c  bl 0x046544b8
02c32040  ldr x8,[x21]
02c32044  ldp q0,q1,[sp, #0x40]
02c32048  mov x1,xzr
02c3204c  ldr x8,[x8, #0xb8]
02c32050  stp q0,q1,[x8]
02c32054  ldr x8,[x21]
02c32058  ldr x0,[x8, #0xb8]
02c3205c  bl 0x029f59f4
02c32060  add x8,sp,#0x20
02c32064  mov w0,#0x64
02c32068  mov x1,xzr
02c3206c  bl 0x046544b8
02c32070  ldr x8,[x21]
02c32074  ldp q0,q1,[sp, #0x20]
02c32078  mov x1,xzr
02c3207c  ldr x9,[x8, #0xb8]
02c32080  stp q0,q1,[x9, #0x20]
02c32084  ldr x8,[x8, #0xb8]
02c32088  add x0,x8,#0x20
02c3208c  bl 0x029f59f4
02c32090  mov x8,sp
02c32094  mov w0,#0x64
02c32098  mov x1,xzr
02c3209c  bl 0x046544b8
02c320a0  ldr x8,[x21]
02c320a4  ldp q0,q1,[sp]
02c320a8  mov x1,xzr
02c320ac  ldr x9,[x8, #0xb8]
02c320b0  stp q0,q1,[x9, #0x40]
02c320b4  ldr x8,[x8, #0xb8]
02c320b8  add x0,x8,#0x40
02c320bc  bl 0x029f59f4
02c320c0  ldr x8,[x21]
02c320c4  adrp x9,0x116d000
02c320c8  ldr q0,[x9, #0x130]
02c320cc  ldr x8,[x8, #0xb8]
02c320d0  str q0,[x8, #0x60]
02c320d4  ldr x8,[x19, #0x20]
02c320d8  cbz x8,0x02c324b4
02c320dc  adrp x23,0x5e5d000
02c320e0  mov w24,wzr
02c320e4  ldr x23,[x23, #0x5b0]
02c320e8  ldr w9,[x8, #0x18]
02c320ec  cmp w24,w9
02c320f0  b.ge 0x02c323bc
02c320f4  b.cs 0x02c324b8
02c320f8  add x8,x8,w24, SXTW  #0x3
02c320fc  ldr x20,[x8, #0x20]
02c32100  cbz x20,0x02c324b4
02c32104  ldrb w8,[x20, #0x20]
02c32108  cbz w8,0x02c322ac
02c3210c  ldr w8,[x20, #0x10]
02c32110  cmp w8,#0x5
02c32114  b.le 0x02c32188
02c32118  cmp w8,#0x9
02c3211c  b.lt 0x02c321f4
02c32120  cmp w8,#0xa
02c32124  b.gt 0x02c322bc
02c32128  cmp w8,#0x9
02c3212c  b.eq 0x02c3231c
02c32130  cmp w8,#0xa
02c32134  b.ne 0x02c322ac
02c32138  ldr x0,[x21]
02c3213c  ldr w8,[x0, #0xe4]
02c32140  cbnz w8,0x02c3214c
02c32144  bl 0x029f5bd0
02c32148  ldr x0,[x21]
02c3214c  ldr x8,[x0, #0xb8]
02c32150  mov x0,x20
02c32154  ldr w25,[x8, #0x64]
02c32158  add x8,sp,#0x40
02c3215c  bl 0x02c3156c
02c32160  ldp q0,q1,[sp, #0x40]
02c32164  add x0,sp,#0x60
02c32168  mov x1,xzr
02c3216c  stp q0,q1,[sp, #0x60]
02c32170  bl 0x04657108
02c32174  ldr x8,[x21]
02c32178  add w9,w0,w25
02c3217c  ldr x8,[x8, #0xb8]
02c32180  str w9,[x8, #0x64]
02c32184  b 0x02c322ac
02c32188  subs w8,w8,#0x3
02c3218c  b.cc 0x02c32250
02c32190  cmp w8,#0x3
02c32194  b.cs 0x02c322ac
02c32198  ldr x0,[x21]
02c3219c  ldr w8,[x0, #0xe4]
02c321a0  cbnz w8,0x02c321a8
02c321a4  bl 0x029f5bd0
02c321a8  add x8,sp,#0x40
02c321ac  mov x0,x20
02c321b0  bl 0x02c3156c
02c321b4  ldr x8,[x21]
02c321b8  ldp q0,q1,[sp, #0x40]
02c321bc  add x1,sp,#0x60
02c321c0  mov x2,xzr
02c321c4  ldr x9,[x8, #0xb8]
02c321c8  add x8,sp,#0x20
02c321cc  stp q0,q1,[sp, #0x60]
02c321d0  add x0,x9,#0x20
02c321d4  bl 0x04658020
02c321d8  ldr x8,[x21]
02c321dc  ldp q0,q1,[sp, #0x20]
02c321e0  ldr x9,[x8, #0xb8]
02c321e4  stp q0,q1,[x9, #0x20]
02c321e8  ldr x8,[x8, #0xb8]
02c321ec  add x0,x8,#0x20
02c321f0  b 0x02c322a4
02c321f4  ldr x0,[x21]
02c321f8  ldr w8,[x0, #0xe4]
02c321fc  cbnz w8,0x02c32204
02c32200  bl 0x029f5bd0
02c32204  add x8,sp,#0x40
02c32208  mov x0,x20
02c3220c  bl 0x02c3156c
02c32210  ldr x8,[x21]
02c32214  ldp q0,q1,[sp, #0x40]
02c32218  add x1,sp,#0x60
02c3221c  mov x2,xzr
02c32220  ldr x9,[x8, #0xb8]
02c32224  add x8,sp,#0x20
02c32228  stp q0,q1,[sp, #0x60]
02c3222c  add x0,x9,#0x40
02c32230  bl 0x04658020
02c32234  ldr x8,[x21]
02c32238  ldp q0,q1,[sp, #0x20]
02c3223c  ldr x9,[x8, #0xb8]
02c32240  stp q0,q1,[x9, #0x40]
02c32244  ldr x8,[x8, #0xb8]
02c32248  add x0,x8,#0x40
02c3224c  b 0x02c322a4
02c32250  ldr x0,[x21]
02c32254  ldr w8,[x0, #0xe4]
02c32258  cbnz w8,0x02c32260
02c3225c  bl 0x029f5bd0
02c32260  add x8,sp,#0x40
02c32264  mov x0,x20
02c32268  bl 0x02c3156c
02c3226c  ldr x8,[x21]
02c32270  ldp q0,q1,[sp, #0x40]
02c32274  add x1,sp,#0x60
02c32278  mov x2,xzr
02c3227c  ldr x0,[x8, #0xb8]
02c32280  add x8,sp,#0x20
02c32284  stp q0,q1,[sp, #0x60]
02c32288  bl 0x04658020
02c3228c  ldr x8,[x21]
02c32290  ldp q0,q1,[sp, #0x20]
02c32294  ldr x8,[x8, #0xb8]
02c32298  stp q0,q1,[x8]
02c3229c  ldr x8,[x21]
02c322a0  ldr x0,[x8, #0xb8]
02c322a4  mov x1,xzr
02c322a8  bl 0x029f59f4
02c322ac  ldr x8,[x19, #0x20]
02c322b0  add w24,w24,#0x1
02c322b4  cbnz x8,0x02c320e8
02c322b8  b 0x02c324b4
02c322bc  cmp w8,#0xb
02c322c0  b.eq 0x02c3236c
02c322c4  cmp w8,#0xc
02c322c8  b.ne 0x02c322ac
02c322cc  ldr x0,[x21]
02c322d0  ldr w8,[x0, #0xe4]
02c322d4  cbnz w8,0x02c322e0
02c322d8  bl 0x029f5bd0
02c322dc  ldr x0,[x21]
02c322e0  ldr x8,[x0, #0xb8]
02c322e4  mov x0,x20
02c322e8  ldr w25,[x8, #0x6c]
02c322ec  add x8,sp,#0x40
02c322f0  bl 0x02c3156c
02c322f4  ldp q0,q1,[sp, #0x40]
02c322f8  add x0,sp,#0x60
02c322fc  mov x1,xzr
02c32300  stp q0,q1,[sp, #0x60]
02c32304  bl 0x04657108
02c32308  ldr x8,[x21]
02c3230c  add w9,w0,w25
02c32310  ldr x8,[x8, #0xb8]
02c32314  str w9,[x8, #0x6c]
02c32318  b 0x02c322ac
02c3231c  ldr x0,[x21]
02c32320  ldr w8,[x0, #0xe4]
02c32324  cbnz w8,0x02c32330
02c32328  bl 0x029f5bd0
02c3232c  ldr x0,[x21]
02c32330  ldr x8,[x0, #0xb8]
02c32334  mov x0,x20
02c32338  ldr w25,[x8, #0x60]
02c3233c  add x8,sp,#0x40
02c32340  bl 0x02c3156c
02c32344  ldp q0,q1,[sp, #0x40]
02c32348  add x0,sp,#0x60
02c3234c  mov x1,xzr
02c32350  stp q0,q1,[sp, #0x60]
02c32354  bl 0x04657108
02c32358  ldr x8,[x21]
02c3235c  add w9,w0,w25
02c32360  ldr x8,[x8, #0xb8]
02c32364  str w9,[x8, #0x60]
02c32368  b 0x02c322ac
02c3236c  ldr x0,[x21]
02c32370  ldr w8,[x0, #0xe4]
02c32374  cbnz w8,0x02c32380
02c32378  bl 0x029f5bd0
02c3237c  ldr x0,[x21]
02c32380  ldr x8,[x0, #0xb8]
02c32384  mov x0,x20
02c32388  ldr w25,[x8, #0x68]
02c3238c  add x8,sp,#0x40
02c32390  bl 0x02c3156c
02c32394  ldp q0,q1,[sp, #0x40]
02c32398  add x0,sp,#0x60
02c3239c  mov x1,xzr
02c323a0  stp q0,q1,[sp, #0x60]
02c323a4  bl 0x04657108
02c323a8  ldr x8,[x21]
02c323ac  add w9,w0,w25
02c323b0  ldr x8,[x8, #0xb8]
02c323b4  str w9,[x8, #0x68]
02c323b8  b 0x02c322ac
02c323bc  ldr x0,[x21]
02c323c0  ldr w8,[x0, #0xe4]
02c323c4  cbnz w8,0x02c323d0
02c323c8  bl 0x029f5bd0
02c323cc  ldr x0,[x21]
02c323d0  ldr x0,[x0, #0xb8]
02c323d4  add x1,sp,#0xc0
02c323d8  mov x2,xzr
02c323dc  bl 0x0465947c
02c323e0  tbnz w0,#0x0,0x02c32434
02c323e4  ldr x0,[x21]
02c323e8  ldr w8,[x0, #0xe4]
02c323ec  cbnz w8,0x02c323f8
02c323f0  bl 0x029f5bd0
02c323f4  ldr x0,[x21]
02c323f8  ldr x8,[x0, #0xb8]
02c323fc  add x1,sp,#0xa0
02c32400  mov x2,xzr
02c32404  add x0,x8,#0x40
02c32408  bl 0x0465947c
02c3240c  tbnz w0,#0x0,0x02c32434
02c32410  ldr x0,[x21]
02c32414  ldr w8,[x0, #0xe4]
02c32418  cbnz w8,0x02c32424
02c3241c  bl 0x029f5bd0
02c32420  ldr x0,[x21]
02c32424  ldr x8,[x0, #0xb8]
02c32428  ldr w8,[x8, #0x60]
02c3242c  cmp w8,w22
02c32430  b.eq 0x02c32450
02c32434  ldr x8,[x23]
02c32438  ldr x8,[x8, #0xb8]
02c3243c  ldr x0,[x8, #0x8]
02c32440  cbz x0,0x02c324b4
02c32444  mov x1,xzr
02c32448  bl 0x02c43744
02c3244c  ldr x0,[x21]
02c32450  ldr w8,[x0, #0xe4]
02c32454  cbnz w8,0x02c32460
02c32458  bl 0x029f5bd0
02c3245c  ldr x0,[x21]
02c32460  ldr x8,[x0, #0xb8]
02c32464  add x1,sp,#0x80
02c32468  mov x2,xzr
02c3246c  add x0,x8,#0x20
02c32470  bl 0x0465947c
02c32474  tbz w0,#0x0,0x02c32498
02c32478  adrp x8,0x5e5d000
02c3247c  ldr x8,[x8, #0x338]
02c32480  ldr x0,[x8]
02c32484  ldr w8,[x0, #0xe4]
02c32488  cbnz w8,0x02c32490
02c3248c  bl 0x029f5bd0
02c32490  mov x0,xzr
02c32494  bl 0x02b7dcfc
02c32498  ldp x20,x19,[sp, #0x120]
02c3249c  ldr x29,[sp, #0xe0]
02c324a0  ldp x22,x21,[sp, #0x110]
02c324a4  ldp x24,x23,[sp, #0x100]
02c324a8  ldp x30,x25,[sp, #0xf0]
02c324ac  add sp,sp,#0x130
02c324b0  ret
02c324b4  bl 0x029f5cfc
02c324b8  bl 0x029f5d04
