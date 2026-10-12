02c33604  sub sp,sp,#0xa0
02c33608  stp x29,x30,[sp, #0x40]
02c3360c  stp x28,x27,[sp, #0x50]
02c33610  stp x26,x25,[sp, #0x60]
02c33614  stp x24,x23,[sp, #0x70]
02c33618  stp x22,x21,[sp, #0x80]
02c3361c  stp x20,x19,[sp, #0x90]
02c33620  adrp x20,0x625c000
02c33624  mov x19,x0
02c33628  ldrb w8,[x20, #0x4c]
02c3362c  tbnz w8,#0x0,0x02c336bc
02c33630  adrp x0,0x5e5d000
02c33634  ldr x0,[x0, #0xd28]
02c33638  bl 0x029f5a50
02c3363c  adrp x0,0x5e62000
02c33640  ldr x0,[x0, #0xfa0]
02c33644  bl 0x029f5a50
02c33648  adrp x0,0x5e62000
02c3364c  ldr x0,[x0, #0xfa8]
02c33650  bl 0x029f5a50
02c33654  adrp x0,0x5e62000
02c33658  ldr x0,[x0, #0xfb0]
02c3365c  bl 0x029f5a50
02c33660  adrp x0,0x5e63000
02c33664  ldr x0,[x0, #0x108]
02c33668  bl 0x029f5a50
02c3366c  adrp x0,0x5e62000
02c33670  ldr x0,[x0, #0xfc0]
02c33674  bl 0x029f5a50
02c33678  adrp x0,0x5e62000
02c3367c  ldr x0,[x0, #0x680]
02c33680  bl 0x029f5a50
02c33684  adrp x0,0x5e62000
02c33688  ldr x0,[x0, #0xfd0]
02c3368c  bl 0x029f5a50
02c33690  adrp x0,0x5e63000
02c33694  ldr x0,[x0, #0x100]
02c33698  bl 0x029f5a50
02c3369c  adrp x0,0x5e62000
02c336a0  ldr x0,[x0, #0x628]
02c336a4  bl 0x029f5a50
02c336a8  adrp x0,0x5e63000
02c336ac  ldr x0,[x0, #0x110]
02c336b0  bl 0x029f5a50
02c336b4  mov w8,#0x1
02c336b8  strb w8,[x20, #0x4c]
02c336bc  ldr x8,[x19, #0xc0]
02c336c0  str wzr,[sp, #0x3c]
02c336c4  stp xzr,xzr,[sp, #0x20]
02c336c8  str xzr,[sp, #0x30]
02c336cc  str wzr,[sp, #0x1c]
02c336d0  cbz x8,0x02c337ac
02c336d4  adrp x22,0x5e63000
02c336d8  adrp x29,0x5e62000
02c336dc  adrp x28,0x5e62000
02c336e0  adrp x27,0x5e62000
02c336e4  adrp x25,0x5e62000
02c336e8  adrp x26,0x5e63000
02c336ec  adrp x23,0x5e5d000
02c336f0  adrp x24,0x5e62000
02c336f4  ldr x22,[x22, #0x100]
02c336f8  ldr x29,[x29, #0x628]
02c336fc  ldr x28,[x28, #0x680]
02c33700  ldr x27,[x27, #0xfc0]
02c33704  ldr x25,[x25, #0xfa8]
02c33708  ldr x26,[x26, #0x108]
02c3370c  ldr x23,[x23, #0xd28]
02c33710  ldr x24,[x24, #0xfa0]
02c33714  mov x20,xzr
02c33718  ldr w9,[x8, #0x18]
02c3371c  cmp x20,w9, SXTW 
02c33720  b.ge 0x02c337b0
02c33724  cmp x20,x9
02c33728  b.cs 0x02c33a80
02c3372c  add x8,x8,x20, LSL #0x3
02c33730  ldrsw x9,[x19, #0xd0]
02c33734  ldr x21,[x8, #0x20]
02c33738  cmp x20,x9
02c3373c  b.ge 0x02c3377c
02c33740  ldr x0,[x19, #0xc8]
02c33744  cbz x0,0x02c337ac
02c33748  ldrsw x8,[x0, #0x18]
02c3374c  cmp x20,x8
02c33750  b.ge 0x02c3378c
02c33754  ldr x2,[x22]
02c33758  mov w1,w20
02c3375c  bl 0x045c12a4
02c33760  mov x1,x0
02c33764  bl 0x02c33adc
02c33768  cbz x21,0x02c337ac
02c3376c  mov w2,w0
02c33770  mov x0,x21
02c33774  mov w1,wzr
02c33778  b 0x02c3379c
02c3377c  cbz x21,0x02c337ac
02c33780  mov x0,x21
02c33784  mov w1,#0x2
02c33788  b 0x02c33798
02c3378c  cbz x21,0x02c337ac
02c33790  mov x0,x21
02c33794  mov w1,#0x1
02c33798  mov w2,#0xffffffff
02c3379c  bl 0x02c33b78
02c337a0  ldr x8,[x19, #0xc0]
02c337a4  add x20,x20,#0x1
02c337a8  cbnz x8,0x02c33718
02c337ac  bl 0x029f5cfc
02c337b0  ldr x0,[x29]
02c337b4  bl 0x029f5cec
02c337b8  ldr x1,[x28]
02c337bc  mov x20,x0
02c337c0  bl 0x044f7180
02c337c4  ldr x0,[x19, #0xc8]
02c337c8  cbz x0,0x02c337ac
02c337cc  ldr x1,[x27]
02c337d0  mov x8,sp
02c337d4  bl 0x045c2058
02c337d8  ldr x8,[sp, #0x10]
02c337dc  ldr q0,[sp]
02c337e0  str x8,[sp, #0x30]
02c337e4  add x8,sp,#0x20
02c337e8  str q0,[sp, #0x20]
02c337ec  stp xzr,x8,[sp]
02c337f0  ldr x1,[x25]
02c337f4  add x0,sp,#0x20
02c337f8  bl 0x03fd486c
02c337fc  tbz w0,#0x0,0x02c33864
02c33800  ldr x1,[sp, #0x30]
02c33804  bl 0x02c33adc
02c33808  mov w1,w0
02c3380c  cbz x20,0x02c33a7c
02c33810  ldr w10,[x20, #0x1c]
02c33814  ldr x8,[x20, #0x10]
02c33818  ldr x9,[x26]
02c3381c  add w10,w10,#0x1
02c33820  str w10,[x20, #0x1c]
02c33824  cbz x8,0x02c33a7c
02c33828  ldrsw x10,[x20, #0x18]
02c3382c  ldr w11,[x8, #0x18]
02c33830  cmp w10,w11
02c33834  b.cs 0x02c3384c
02c33838  add x8,x8,x10, LSL #0x2
02c3383c  add w9,w10,#0x1
02c33840  str w9,[x20, #0x18]
02c33844  str w1,[x8, #0x20]
02c33848  b 0x02c337f0
02c3384c  ldr x8,[x9, #0x20]
02c33850  ldr x8,[x8, #0xc0]
02c33854  ldr x2,[x8, #0x70]
02c33858  mov x0,x20
02c3385c  bl 0x044f7a10
02c33860  b 0x02c337f0
02c33864  ldr x1,[x24]
02c33868  add x0,sp,#0x20
02c3386c  bl 0x03fd4868
02c33870  ldr x0,[x23]
02c33874  ldr w8,[x0, #0xe4]
02c33878  cbnz w8,0x02c33884
02c3387c  bl 0x029f5bd0
02c33880  ldr x0,[x23]
02c33884  ldr x8,[x0, #0xb8]
02c33888  ldr x0,[x8, #0x10]
02c3388c  cbz x0,0x02c337ac
02c33890  ldr w2,[x19, #0x24]
02c33894  mov x1,x20
02c33898  mov x3,xzr
02c3389c  bl 0x02c2e128
02c338a0  ldr x20,[x19, #0x48]
02c338a4  str w0,[sp, #0x3c]
02c338a8  add x0,sp,#0x3c
02c338ac  mov x1,xzr
02c338b0  bl 0x0484e6a4
02c338b4  cbz x20,0x02c337ac
02c338b8  ldr x8,[x20]
02c338bc  mov x1,x0
02c338c0  mov x0,x20
02c338c4  ldr x9,[x8, #0x558]
02c338c8  ldr x2,[x8, #0x560]
02c338cc  blr x9
02c338d0  ldr x8,[x23]
02c338d4  ldr x8,[x8, #0xb8]
02c338d8  ldr x0,[x8, #0x10]
02c338dc  cbz x0,0x02c337ac
02c338e0  ldr w1,[x19, #0x24]
02c338e4  ldr x20,[x19, #0x40]
02c338e8  mov x2,xzr
02c338ec  bl 0x02c2e2ec
02c338f0  ldr x8,[x19, #0xc8]
02c338f4  cbz x8,0x02c337ac
02c338f8  ldr w8,[x8, #0x18]
02c338fc  mov x1,xzr
02c33900  mul w8,w8,w0
02c33904  add x0,sp,#0x1c
02c33908  str w8,[sp, #0x1c]
02c3390c  bl 0x0484e6a4
02c33910  cbz x20,0x02c337ac
02c33914  ldr x8,[x20]
02c33918  mov x1,x0
02c3391c  mov x0,x20
02c33920  ldr x9,[x8, #0x558]
02c33924  ldr x2,[x8, #0x560]
02c33928  blr x9
02c3392c  ldr x8,[x23]
02c33930  ldr x8,[x8, #0xb8]
02c33934  ldr x8,[x8, #0x10]
02c33938  cbz x8,0x02c337ac
02c3393c  ldr x9,[x19, #0xc8]
02c33940  cbz x9,0x02c337ac
02c33944  adrp x10,0x5e58000
02c33948  mov x1,sp
02c3394c  ldr x10,[x10, #0xa10]
02c33950  ldr w21,[x9, #0x18]
02c33954  ldr w22,[x8, #0x58]
02c33958  ldr x20,[x19, #0x68]
02c3395c  ldr x0,[x10, #0x48]
02c33960  str w21,[sp]
02c33964  bl 0x029f5bd8
02c33968  adrp x8,0x5e63000
02c3396c  mov x1,x0
02c33970  mov x2,xzr
02c33974  ldr x8,[x8, #0x110]
02c33978  ldr x8,[x8]
02c3397c  mov x0,x8
02c33980  bl 0x046b6c0c
02c33984  cbz x20,0x02c337ac
02c33988  ldr x8,[x20]
02c3398c  mov x1,x0
02c33990  mov x0,x20
02c33994  ldr x9,[x8, #0x558]
02c33998  ldr x2,[x8, #0x560]
02c3399c  blr x9
02c339a0  ldr x0,[x19, #0x68]
02c339a4  cmp w22,w21
02c339a8  b.ge 0x02c339c0
02c339ac  add x8,x19,#0x90
02c339b0  add x9,x19,#0x94
02c339b4  add x10,x19,#0x98
02c339b8  add x11,x19,#0x9c
02c339bc  b 0x02c339d0
02c339c0  add x8,x19,#0x80
02c339c4  add x9,x19,#0x84
02c339c8  add x10,x19,#0x88
02c339cc  add x11,x19,#0x8c
02c339d0  cbz x0,0x02c337ac
02c339d4  ldr x12,[x0]
02c339d8  ldr s3,[x11]
02c339dc  ldr s2,[x10]
02c339e0  ldr s1,[x9]
02c339e4  ldr s0,[x8]
02c339e8  ldr x8,[x12, #0x2a8]
02c339ec  ldr x1,[x12, #0x2b0]
02c339f0  blr x8
02c339f4  ldr x0,[x19, #0x70]
02c339f8  cmp w22,w21
02c339fc  b.lt 0x02c33a28
02c33a00  ldr x8,[x19, #0xc8]
02c33a04  cbz x8,0x02c337ac
02c33a08  ldr w8,[x8, #0x18]
02c33a0c  cmp w8,#0x0
02c33a10  b.le 0x02c33a28
02c33a14  add x8,x19,#0xa0
02c33a18  add x9,x19,#0xa4
02c33a1c  add x10,x19,#0xa8
02c33a20  add x11,x19,#0xac
02c33a24  b 0x02c33a38
02c33a28  add x8,x19,#0xb0
02c33a2c  add x9,x19,#0xb4
02c33a30  add x10,x19,#0xb8
02c33a34  add x11,x19,#0xbc
02c33a38  cbz x0,0x02c337ac
02c33a3c  ldr x12,[x0]
02c33a40  ldr s3,[x11]
02c33a44  ldr s2,[x10]
02c33a48  ldr s1,[x9]
02c33a4c  ldr s0,[x8]
02c33a50  ldr x8,[x12, #0x2a8]
02c33a54  ldr x1,[x12, #0x2b0]
02c33a58  blr x8
02c33a5c  ldp x20,x19,[sp, #0x90]
02c33a60  ldp x22,x21,[sp, #0x80]
02c33a64  ldp x24,x23,[sp, #0x70]
02c33a68  ldp x26,x25,[sp, #0x60]
02c33a6c  ldp x28,x27,[sp, #0x50]
02c33a70  ldp x29,x30,[sp, #0x40]
02c33a74  add sp,sp,#0xa0
02c33a78  ret
02c33a7c  bl 0x029f5cfc
02c33a80  bl 0x029f5d04
