02c535b4  sub sp,sp,#0x50
02c535b8  stp x30,x25,[sp, #0x10]
02c535bc  stp x24,x23,[sp, #0x20]
02c535c0  stp x22,x21,[sp, #0x30]
02c535c4  stp x20,x19,[sp, #0x40]
02c535c8  adrp x20,0x625c000
02c535cc  mov w21,w1
02c535d0  mov x19,x0
02c535d4  ldrb w8,[x20, #0x17d]
02c535d8  tbnz w8,#0x0,0x02c5362c
02c535dc  adrp x0,0x5e58000
02c535e0  ldr x0,[x0, #0xf08]
02c535e4  bl 0x029f5a50
02c535e8  adrp x0,0x5e5d000
02c535ec  ldr x0,[x0, #0x338]
02c535f0  bl 0x029f5a50
02c535f4  adrp x0,0x5e59000
02c535f8  ldr x0,[x0, #0x768]
02c535fc  bl 0x029f5a50
02c53600  adrp x0,0x5e59000
02c53604  ldr x0,[x0, #0x1c0]
02c53608  bl 0x029f5a50
02c5360c  adrp x0,0x5e5e000
02c53610  ldr x0,[x0, #0x68]
02c53614  bl 0x029f5a50
02c53618  adrp x0,0x5e63000
02c5361c  ldr x0,[x0, #0x5e0]
02c53620  bl 0x029f5a50
02c53624  mov w8,#0x1
02c53628  strb w8,[x20, #0x17d]
02c5362c  adrp x23,0x5e59000
02c53630  mov x0,x19
02c53634  mov w1,w21
02c53638  ldr x23,[x23, #0x1c0]
02c5363c  bl 0x02c53078
02c53640  cmp w0,#0x2
02c53644  b.ne 0x02c53954
02c53648  ldrb w8,[x19, #0x48]
02c5364c  cbz w8,0x02c539f0
02c53650  ldr x8,[x19, #0x40]
02c53654  cbz x8,0x02c53a14
02c53658  ldr w9,[x8, #0x18]
02c5365c  cmp w9,w21
02c53660  b.ls 0x02c53a18
02c53664  sxtw x25,w21
02c53668  ldr x9,[x19, #0x20]
02c5366c  mov w10,#0x1
02c53670  add x8,x8,x25
02c53674  strb w10,[x8, #0x20]
02c53678  cbz x9,0x02c53a14
02c5367c  ldr w8,[x9, #0x18]
02c53680  cmp w8,w21
02c53684  b.ls 0x02c53a18
02c53688  add x8,x9,x25, LSL #0x3
02c5368c  ldr x8,[x8, #0x20]
02c53690  cbz x8,0x02c53a14
02c53694  adrp x9,0x5e5d000
02c53698  ldr x9,[x9, #0x338]
02c5369c  ldr w20,[x8, #0x18]
02c536a0  ldr x0,[x9]
02c536a4  ldr w9,[x0, #0xe4]
02c536a8  cbnz w9,0x02c536b0
02c536ac  bl 0x029f5bd0
02c536b0  mov w0,w20
02c536b4  mov x1,xzr
02c536b8  bl 0x02b7f834
02c536bc  mov x0,x19
02c536c0  mov w1,w21
02c536c4  mov w2,#0x1
02c536c8  bl 0x02c549f0
02c536cc  mov x0,xzr
02c536d0  bl 0x02c0faf8
02c536d4  adrp x8,0x5e59000
02c536d8  mov w1,#0x4
02c536dc  ldr x8,[x8, #0x768]
02c536e0  ldr x0,[x8]
02c536e4  bl 0x029f5b40
02c536e8  adrp x24,0x5e58000
02c536ec  mov x20,x0
02c536f0  add x1,sp,#0xc
02c536f4  ldr x24,[x24, #0xa10]
02c536f8  str w21,[sp, #0xc]
02c536fc  ldr x0,[x24, #0x48]
02c53700  bl 0x029f5bd8
02c53704  cbz x20,0x02c53a14
02c53708  mov x22,x0
02c5370c  cbz x0,0x02c53724
02c53710  ldr x8,[x20]
02c53714  mov x0,x22
02c53718  ldr x1,[x8, #0x40]
02c5371c  bl 0x029f5bd4
02c53720  cbz x0,0x02c53a1c
02c53724  ldr w8,[x20, #0x18]
02c53728  cbz w8,0x02c53a18
02c5372c  mov x0,x20
02c53730  mov x1,x22
02c53734  str x22,[x0, #0x20]!
02c53738  bl 0x029f59f4
02c5373c  ldr x8,[x19, #0x20]
02c53740  cbz x8,0x02c53a14
02c53744  ldr w9,[x8, #0x18]
02c53748  cmp w9,w21
02c5374c  b.ls 0x02c53a18
02c53750  add x8,x8,x25, LSL #0x3
02c53754  ldr x8,[x8, #0x20]
02c53758  cbz x8,0x02c53a14
02c5375c  ldr w8,[x8, #0x18]
02c53760  ldr x0,[x24, #0x48]
02c53764  add x1,sp,#0x8
02c53768  str w8,[sp, #0x8]
02c5376c  bl 0x029f5bd8
02c53770  mov x21,x0
02c53774  cbz x0,0x02c5378c
02c53778  ldr x8,[x20]
02c5377c  mov x0,x21
02c53780  ldr x1,[x8, #0x40]
02c53784  bl 0x029f5bd4
02c53788  cbz x0,0x02c53a1c
02c5378c  ldr w8,[x20, #0x18]
02c53790  tst w8,#0xfffffffe
02c53794  b.eq 0x02c53a18
02c53798  mov x0,x20
02c5379c  mov x1,x21
02c537a0  str x21,[x0, #0x28]!
02c537a4  bl 0x029f59f4
02c537a8  mov x0,x19
02c537ac  bl 0x02c54650
02c537b0  ldr x8,[x24, #0x48]
02c537b4  str w0,[sp, #0x4]
02c537b8  add x1,sp,#0x4
02c537bc  mov x0,x8
02c537c0  bl 0x029f5bd8
02c537c4  mov x19,x0
02c537c8  cbz x0,0x02c537e0
02c537cc  ldr x8,[x20]
02c537d0  mov x0,x19
02c537d4  ldr x1,[x8, #0x40]
02c537d8  bl 0x029f5bd4
02c537dc  cbz x0,0x02c53a1c
02c537e0  ldr w8,[x20, #0x18]
02c537e4  cmp w8,#0x2
02c537e8  b.ls 0x02c53a18
02c537ec  mov x0,x20
02c537f0  mov x1,x19
02c537f4  str x19,[x0, #0x30]!
02c537f8  bl 0x029f59f4
02c537fc  ldr x0,[x24, #0x48]
02c53800  mov w8,#0x8
02c53804  mov x1,sp
02c53808  str w8,[sp]
02c5380c  bl 0x029f5bd8
02c53810  mov x19,x0
02c53814  cbz x0,0x02c5382c
02c53818  ldr x8,[x20]
02c5381c  mov x0,x19
02c53820  ldr x1,[x8, #0x40]
02c53824  bl 0x029f5bd4
02c53828  cbz x0,0x02c53a1c
02c5382c  ldr w8,[x20, #0x18]
02c53830  tst w8,#0xfffffffc
02c53834  b.eq 0x02c53a18
02c53838  mov x0,x20
02c5383c  mov x1,x19
02c53840  str x19,[x0, #0x38]!
02c53844  bl 0x029f59f4
02c53848  adrp x8,0x5e63000
02c5384c  mov x1,x20
02c53850  mov x2,xzr
02c53854  ldr x8,[x8, #0x5e0]
02c53858  ldr x0,[x8]
02c5385c  bl 0x046c1d9c
02c53860  adrp x8,0x5e58000
02c53864  mov x19,x0
02c53868  ldr x8,[x8, #0xf08]
02c5386c  ldr x8,[x8]
02c53870  ldr w9,[x8, #0xe4]
02c53874  cbnz w9,0x02c53880
02c53878  mov x0,x8
02c5387c  bl 0x029f5bd0
02c53880  mov x0,x19
02c53884  mov x1,xzr
02c53888  bl 0x05799e30
02c5388c  adrp x20,0x625b000
02c53890  ldrb w8,[x20, #0xa57]
02c53894  cbnz w8,0x02c538ac
02c53898  adrp x0,0x5e5d000
02c5389c  ldr x0,[x0, #0xd70]
02c538a0  bl 0x029f5a50
02c538a4  mov w8,#0x1
02c538a8  strb w8,[x20, #0xa57]
02c538ac  adrp x21,0x5e5d000
02c538b0  ldr x21,[x21, #0xd70]
02c538b4  ldr x0,[x23]
02c538b8  ldr x8,[x21]
02c538bc  ldr w9,[x0, #0xe4]
02c538c0  ldr x8,[x8, #0xb8]
02c538c4  ldr x19,[x8]
02c538c8  cbnz w9,0x02c538d0
02c538cc  bl 0x029f5bd0
02c538d0  mov x0,x19
02c538d4  mov x1,xzr
02c538d8  mov x2,xzr
02c538dc  bl 0x057dfa70
02c538e0  tbz w0,#0x0,0x02c53924
02c538e4  ldrb w8,[x20, #0xa57]
02c538e8  cbnz w8,0x02c53900
02c538ec  adrp x0,0x5e5d000
02c538f0  ldr x0,[x0, #0xd70]
02c538f4  bl 0x029f5a50
02c538f8  mov w8,#0x1
02c538fc  strb w8,[x20, #0xa57]
02c53900  ldr x8,[x21]
02c53904  ldr x8,[x8, #0xb8]
02c53908  ldr x0,[x8]
02c5390c  cbz x0,0x02c53a14
02c53910  fmov s0,0x3f800000
02c53914  mov w1,#0x7
02c53918  mov x2,xzr
02c5391c  mov x3,xzr
02c53920  bl 0x02c1f10c
02c53924  adrp x8,0x5e5e000
02c53928  ldr x8,[x8, #0x68]
02c5392c  ldr x8,[x8]
02c53930  ldr x8,[x8, #0xb8]
02c53934  ldr x8,[x8, #0x8]
02c53938  cbz x8,0x02c5394c
02c5393c  ldr x9,[x8, #0x18]
02c53940  ldr x0,[x8, #0x40]
02c53944  ldr x1,[x8, #0x28]
02c53948  blr x9
02c5394c  mov w0,#0x1
02c53950  b 0x02c539fc
02c53954  adrp x20,0x625b000
02c53958  ldrb w8,[x20, #0xa57]
02c5395c  cbnz w8,0x02c53974
02c53960  adrp x0,0x5e5d000
02c53964  ldr x0,[x0, #0xd70]
02c53968  bl 0x029f5a50
02c5396c  mov w8,#0x1
02c53970  strb w8,[x20, #0xa57]
02c53974  adrp x21,0x5e5d000
02c53978  ldr x21,[x21, #0xd70]
02c5397c  ldr x0,[x23]
02c53980  ldr x8,[x21]
02c53984  ldr w9,[x0, #0xe4]
02c53988  ldr x8,[x8, #0xb8]
02c5398c  ldr x19,[x8]
02c53990  cbnz w9,0x02c53998
02c53994  bl 0x029f5bd0
02c53998  mov x0,x19
02c5399c  mov x1,xzr
02c539a0  mov x2,xzr
02c539a4  bl 0x057dfa70
02c539a8  tbz w0,#0x0,0x02c539f8
02c539ac  ldrb w8,[x20, #0xa57]
02c539b0  cbnz w8,0x02c539c8
02c539b4  adrp x0,0x5e5d000
02c539b8  ldr x0,[x0, #0xd70]
02c539bc  bl 0x029f5a50
02c539c0  mov w8,#0x1
02c539c4  strb w8,[x20, #0xa57]
02c539c8  ldr x8,[x21]
02c539cc  ldr x8,[x8, #0xb8]
02c539d0  ldr x0,[x8]
02c539d4  cbz x0,0x02c53a14
02c539d8  fmov s0,0x3f800000
02c539dc  mov w1,#0x5
02c539e0  mov x2,xzr
02c539e4  mov x3,xzr
02c539e8  bl 0x02c1f10c
02c539ec  b 0x02c539f8
02c539f0  mov x0,x19
02c539f4  bl 0x02c53f28
02c539f8  mov w0,wzr
02c539fc  ldp x20,x19,[sp, #0x40]
02c53a00  ldp x22,x21,[sp, #0x30]
02c53a04  ldp x24,x23,[sp, #0x20]
02c53a08  ldp x30,x25,[sp, #0x10]
02c53a0c  add sp,sp,#0x50
02c53a10  ret
02c53a14  bl 0x029f5cfc
02c53a18  bl 0x029f5d04
02c53a1c  bl 0x029f5d20
02c53a20  mov x1,xzr
02c53a24  bl 0x029f5bc0
