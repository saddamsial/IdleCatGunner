02c73494  sub sp,sp,#0x70
02c73498  stp x29,x30,[sp, #0x10]
02c7349c  stp x28,x27,[sp, #0x20]
02c734a0  stp x26,x25,[sp, #0x30]
02c734a4  stp x24,x23,[sp, #0x40]
02c734a8  stp x22,x21,[sp, #0x50]
02c734ac  stp x20,x19,[sp, #0x60]
02c734b0  adrp x22,0x625c000
02c734b4  adrp x25,0x5e59000
02c734b8  mov x21,x2
02c734bc  ldrb w8,[x22, #0x2f0]
02c734c0  ldr x25,[x25, #0x1c0]
02c734c4  mov x20,x1
02c734c8  mov x19,x0
02c734cc  tbnz w8,#0x0,0x02c73538
02c734d0  adrp x0,0x5e58000
02c734d4  ldr x0,[x0, #0xf08]
02c734d8  bl 0x029f5a50
02c734dc  adrp x0,0x5e63000
02c734e0  ldr x0,[x0, #0xaa8]
02c734e4  bl 0x029f5a50
02c734e8  adrp x0,0x5e5d000
02c734ec  ldr x0,[x0, #0xd40]
02c734f0  bl 0x029f5a50
02c734f4  adrp x0,0x5e59000
02c734f8  ldr x0,[x0, #0x1c0]
02c734fc  bl 0x029f5a50
02c73500  adrp x0,0x5e63000
02c73504  ldr x0,[x0, #0xc00]
02c73508  bl 0x029f5a50
02c7350c  adrp x0,0x5e63000
02c73510  ldr x0,[x0, #0xc08]
02c73514  bl 0x029f5a50
02c73518  adrp x0,0x5e63000
02c7351c  ldr x0,[x0, #0xc10]
02c73520  bl 0x029f5a50
02c73524  adrp x0,0x5e63000
02c73528  ldr x0,[x0, #0xc18]
02c7352c  bl 0x029f5a50
02c73530  mov w8,#0x1
02c73534  strb w8,[x22, #0x2f0]
02c73538  ldr x0,[x25]
02c7353c  ldr w8,[x0, #0xe4]
02c73540  cbnz w8,0x02c73548
02c73544  bl 0x029f5bd0
02c73548  adrp x26,0x5e5d000
02c7354c  mov x0,x20
02c73550  mov x1,xzr
02c73554  ldr x26,[x26, #0xd40]
02c73558  mov x2,xzr
02c7355c  bl 0x057dfa70
02c73560  tbz w0,#0x0,0x02c73570
02c73564  cbz x20,0x02c73b1c
02c73568  ldrb w8,[x20, #0x70]
02c7356c  cbnz w8,0x02c735a0
02c73570  ldr x0,[x25]
02c73574  ldr w8,[x0, #0xe4]
02c73578  cbnz w8,0x02c73580
02c7357c  bl 0x029f5bd0
02c73580  mov x0,x21
02c73584  mov x1,xzr
02c73588  mov x2,xzr
02c7358c  bl 0x057dfa70
02c73590  tbz w0,#0x0,0x02c735dc
02c73594  cbz x21,0x02c73b1c
02c73598  ldrb w8,[x21, #0x70]
02c7359c  cbz w8,0x02c735dc
02c735a0  mov x0,x19
02c735a4  bl 0x02c73c20
02c735a8  ldr x8,[x26]
02c735ac  ldr x8,[x8, #0xb8]
02c735b0  ldr x0,[x8]
02c735b4  cbz x0,0x02c73b1c
02c735b8  ldp x20,x19,[sp, #0x60]
02c735bc  mov x1,xzr
02c735c0  ldp x22,x21,[sp, #0x50]
02c735c4  ldp x24,x23,[sp, #0x40]
02c735c8  ldp x26,x25,[sp, #0x30]
02c735cc  ldp x28,x27,[sp, #0x20]
02c735d0  ldp x29,x30,[sp, #0x10]
02c735d4  add sp,sp,#0x70
02c735d8  b 0x02c6a910
02c735dc  adrp x24,0x5e63000
02c735e0  ldr x24,[x24, #0xaa8]
02c735e4  ldr x8,[x24]
02c735e8  ldr x8,[x8, #0xb8]
02c735ec  ldrb w8,[x8, #0x8]
02c735f0  cbz w8,0x02c73618
02c735f4  adrp x8,0x5e58000
02c735f8  ldr x8,[x8, #0xf08]
02c735fc  ldr x0,[x8]
02c73600  ldr w8,[x0, #0xe4]
02c73604  cbnz w8,0x02c7360c
02c73608  bl 0x029f5bd0
02c7360c  adrp x8,0x5e63000
02c73610  ldr x8,[x8, #0xc10]
02c73614  b 0x02c73780
02c73618  ldr x8,[x26]
02c7361c  ldr x8,[x8, #0xb8]
02c73620  ldr x8,[x8]
02c73624  cbz x8,0x02c73b1c
02c73628  ldr x0,[x25]
02c7362c  ldr x29,[x8, #0x40]
02c73630  ldr w9,[x0, #0xe4]
02c73634  cbnz w9,0x02c7363c
02c73638  bl 0x029f5bd0
02c7363c  mov x0,x20
02c73640  mov x1,xzr
02c73644  mov x2,xzr
02c73648  bl 0x057dfa70
02c7364c  tbz w0,#0x0,0x02c736a0
02c73650  cbz x20,0x02c73b1c
02c73654  mov x0,x20
02c73658  mov x1,xzr
02c7365c  bl 0x057dc1c8
02c73660  cbz x0,0x02c73b1c
02c73664  mov x1,xzr
02c73668  bl 0x057e0000
02c7366c  tbz w0,#0x0,0x02c736a0
02c73670  ldr w8,[x20, #0x90]
02c73674  tbnz w8,#0x1f,0x02c736a0
02c73678  cbz x29,0x02c73b1c
02c7367c  ldr w9,[x29, #0x18]
02c73680  cmp w8,w9
02c73684  b.ge 0x02c736a0
02c73688  add x8,x29,x8, LSL #0x2
02c7368c  ldr w9,[x20, #0x8c]
02c73690  ldr w8,[x8, #0x20]
02c73694  cmp w8,w9
02c73698  cset w22,eq
02c7369c  b 0x02c736a4
02c736a0  mov w22,wzr
02c736a4  ldr x0,[x25]
02c736a8  ldr w8,[x0, #0xe4]
02c736ac  cbnz w8,0x02c736b4
02c736b0  bl 0x029f5bd0
02c736b4  mov x0,x21
02c736b8  mov x1,xzr
02c736bc  mov x2,xzr
02c736c0  bl 0x057dfa70
02c736c4  tbz w0,#0x0,0x02c73760
02c736c8  cbz x21,0x02c73b1c
02c736cc  mov x0,x21
02c736d0  mov x1,xzr
02c736d4  bl 0x057dc1c8
02c736d8  cbz x0,0x02c73b1c
02c736dc  mov x1,xzr
02c736e0  bl 0x057e0000
02c736e4  tbz w0,#0x0,0x02c73760
02c736e8  ldr w2,[x21, #0x90]
02c736ec  tbnz w2,#0x1f,0x02c73760
02c736f0  cbz x29,0x02c73b1c
02c736f4  ldr w8,[x29, #0x18]
02c736f8  cmp w2,w8
02c736fc  b.ge 0x02c73760
02c73700  cbz w22,0x02c73760
02c73704  add x8,x29,x2, LSL #0x2
02c73708  ldr w9,[x21, #0x8c]
02c7370c  ldr w8,[x8, #0x20]
02c73710  cmp w8,w9
02c73714  b.ne 0x02c73760
02c73718  cbz x20,0x02c73b1c
02c7371c  ldr x8,[x26]
02c73720  ldr x8,[x8, #0xb8]
02c73724  ldr x0,[x8]
02c73728  cbz x0,0x02c73b1c
02c7372c  ldr w1,[x20, #0x90]
02c73730  mov x3,xzr
02c73734  bl 0x02c68364
02c73738  tbz w0,#0x0,0x02c737b0
02c7373c  adrp x8,0x5e58000
02c73740  ldr x8,[x8, #0xf08]
02c73744  ldr x0,[x8]
02c73748  ldr w8,[x0, #0xe4]
02c7374c  cbnz w8,0x02c73754
02c73750  bl 0x029f5bd0
02c73754  adrp x8,0x5e63000
02c73758  ldr x8,[x8, #0xc08]
02c7375c  b 0x02c73780
02c73760  adrp x8,0x5e58000
02c73764  ldr x8,[x8, #0xf08]
02c73768  ldr x0,[x8]
02c7376c  ldr w8,[x0, #0xe4]
02c73770  cbnz w8,0x02c73778
02c73774  bl 0x029f5bd0
02c73778  adrp x8,0x5e63000
02c7377c  ldr x8,[x8, #0xc18]
02c73780  ldr x0,[x8]
02c73784  mov x1,xzr
02c73788  bl 0x0579a8d0
02c7378c  mov x0,x19
02c73790  ldp x20,x19,[sp, #0x60]
02c73794  ldp x22,x21,[sp, #0x50]
02c73798  ldp x24,x23,[sp, #0x40]
02c7379c  ldp x26,x25,[sp, #0x30]
02c737a0  ldp x28,x27,[sp, #0x20]
02c737a4  ldp x29,x30,[sp, #0x10]
02c737a8  add sp,sp,#0x70
02c737ac  b 0x02c73c20
02c737b0  mov x8,x19
02c737b4  ldr w9,[x8, #0x50]!
02c737b8  cmn w9,#0x1
02c737bc  b.eq 0x02c737e0
02c737c0  ldr w11,[x20, #0x90]
02c737c4  cmp w9,w11
02c737c8  b.eq 0x02c737d8
02c737cc  ldr w10,[x19, #0x58]
02c737d0  cmp w10,w11
02c737d4  b.ne 0x02c73b04
02c737d8  mov x9,#-0x1
02c737dc  stp x9,x9,[x8]
02c737e0  ldr x8,[x26]
02c737e4  ldr x9,[x24]
02c737e8  mov w10,#0x1
02c737ec  ldr x8,[x8, #0xb8]
02c737f0  ldr x9,[x9, #0xb8]
02c737f4  ldr x8,[x8]
02c737f8  strb w10,[x9, #0x8]
02c737fc  cbz x8,0x02c73b20
02c73800  ldr x8,[x8, #0x48]
02c73804  cbz x8,0x02c73b24
02c73808  ldrsw x9,[x20, #0x8c]
02c7380c  mov w10,#0x6667
02c73810  ldr w8,[x8, #0x18]
02c73814  movk w10,#0x6666, LSL #16
02c73818  smull x9,w9,w10
02c7381c  lsr x10,x9,#0x3f
02c73820  asr x9,x9,#0x21
02c73824  add w28,w9,w10
02c73828  add w27,w28,#0x1
02c7382c  add w0,w27,w27, LSL #0x2
02c73830  cmp w0,w8
02c73834  b.ge 0x02c73ac0
02c73838  add w9,w0,#0x4
02c7383c  sub w10,w8,#0x1
02c73840  cmp w9,w8
02c73844  csel w8,w9,w10,lt
02c73848  add w1,w8,#0x1
02c7384c  mov x2,xzr
02c73850  bl 0x057d5614
02c73854  ldrsw x9,[x20, #0x90]
02c73858  ldr w8,[x29, #0x18]
02c7385c  cmp w9,w8
02c73860  b.cs 0x02c73b28
02c73864  add x10,x29,x9, LSL #0x2
02c73868  mov w9,#0xffffffff
02c7386c  ldrsw x23,[x21, #0x90]
02c73870  str w9,[x10, #0x20]
02c73874  ldrsw x10,[x21, #0x90]
02c73878  cmp w10,w8
02c7387c  b.cs 0x02c73b2c
02c73880  add x10,x29,x10, LSL #0x2
02c73884  cmp w23,w8
02c73888  str w9,[x10, #0x20]
02c7388c  b.cs 0x02c73b30
02c73890  ldr x8,[x26]
02c73894  mov w22,w0
02c73898  add x9,x29,x23, LSL #0x2
02c7389c  ldr x8,[x8, #0xb8]
02c738a0  str w22,[x9, #0x20]
02c738a4  ldr x0,[x8]
02c738a8  cbz x0,0x02c73b34
02c738ac  ldr w1,[x20, #0x90]
02c738b0  mov w2,wzr
02c738b4  mov x3,xzr
02c738b8  bl 0x02c6802c
02c738bc  ldr x8,[x26]
02c738c0  ldr x8,[x8, #0xb8]
02c738c4  ldr x0,[x8]
02c738c8  cbz x0,0x02c73b38
02c738cc  mov w1,w23
02c738d0  mov w2,wzr
02c738d4  mov x3,xzr
02c738d8  bl 0x02c6802c
02c738dc  ldr x8,[x26]
02c738e0  ldr x8,[x8, #0xb8]
02c738e4  ldr x8,[x8]
02c738e8  cbz x8,0x02c73b3c
02c738ec  ldr x0,[x25]
02c738f0  ldr x20,[x8, #0xe0]
02c738f4  mov w10,#0x1
02c738f8  strb w10,[x8, #0xe8]
02c738fc  ldr w9,[x0, #0xe4]
02c73900  cbnz w9,0x02c73908
02c73904  bl 0x029f5bd0
02c73908  mov x0,x20
02c7390c  mov x1,xzr
02c73910  mov x2,xzr
02c73914  bl 0x057dfa70
02c73918  tbz w0,#0x0,0x02c7393c
02c7391c  ldr x8,[x26]
02c73920  ldr x8,[x8, #0xb8]
02c73924  ldr x8,[x8]
02c73928  cbz x8,0x02c73b50
02c7392c  ldr x0,[x8, #0xe0]
02c73930  cbz x0,0x02c73b54
02c73934  mov x1,xzr
02c73938  bl 0x02c6b0a4
02c7393c  ldr x8,[x26]
02c73940  ldr x8,[x8, #0xb8]
02c73944  ldr x0,[x8]
02c73948  cbz x0,0x02c73b40
02c7394c  mov w1,w22
02c73950  mov x2,xzr
02c73954  bl 0x02c68ac8
02c73958  mov x0,x19
02c7395c  bl 0x02c73c20
02c73960  ldr x8,[x26]
02c73964  ldr x8,[x8, #0xb8]
02c73968  ldr x0,[x8]
02c7396c  cbz x0,0x02c73b44
02c73970  mov w1,w22
02c73974  mov x2,xzr
02c73978  bl 0x02c68918
02c7397c  ldr x8,[x26]
02c73980  ldr x8,[x8, #0xb8]
02c73984  ldr x0,[x8]
02c73988  cbz x0,0x02c73b48
02c7398c  mov x1,xzr
02c73990  bl 0x02c6ab84
02c73994  mov x0,x19
02c73998  mov w1,w23
02c7399c  bl 0x02c7607c
02c739a0  mov x20,x0
02c739a4  ldr x0,[x25]
02c739a8  ldr w8,[x0, #0xe4]
02c739ac  cbnz w8,0x02c739b4
02c739b0  bl 0x029f5bd0
02c739b4  mov x0,x20
02c739b8  mov x1,xzr
02c739bc  mov x2,xzr
02c739c0  bl 0x057dfa70
02c739c4  tbz w0,#0x0,0x02c739d4
02c739c8  cbz x20,0x02c73b58
02c739cc  mov x0,x20
02c739d0  bl 0x02c71b70
02c739d4  adrp x20,0x625b000
02c739d8  ldrb w8,[x20, #0xa57]
02c739dc  cbnz w8,0x02c739f4
02c739e0  adrp x0,0x5e5d000
02c739e4  ldr x0,[x0, #0xd70]
02c739e8  bl 0x029f5a50
02c739ec  mov w8,#0x1
02c739f0  strb w8,[x20, #0xa57]
02c739f4  adrp x8,0x5e5d000
02c739f8  ldr x8,[x8, #0xd70]
02c739fc  ldr x8,[x8]
02c73a00  ldr x8,[x8, #0xb8]
02c73a04  ldr x0,[x8]
02c73a08  cbz x0,0x02c73b4c
02c73a0c  fmov s0,0x3f800000
02c73a10  mov w1,#0x3
02c73a14  mov x2,xzr
02c73a18  mov x3,xzr
02c73a1c  bl 0x02c1f10c
02c73a20  adrp x23,0x5e58000
02c73a24  ldr x23,[x23, #0xa10]
02c73a28  str w28,[sp, #0xc]
02c73a2c  ldr x0,[x23, #0x48]
02c73a30  add x1,sp,#0xc
02c73a34  bl 0x029f5bd8
02c73a38  mov x20,x0
02c73a3c  ldr x0,[x23, #0x48]
02c73a40  str w27,[sp, #0x8]
02c73a44  add x1,sp,#0x8
02c73a48  bl 0x029f5bd8
02c73a4c  mov x21,x0
02c73a50  ldr x0,[x23, #0x48]
02c73a54  str w22,[sp, #0x4]
02c73a58  add x1,sp,#0x4
02c73a5c  bl 0x029f5bd8
02c73a60  adrp x8,0x5e63000
02c73a64  mov x3,x0
02c73a68  ldr x8,[x8, #0xc00]
02c73a6c  ldr x0,[x8]
02c73a70  mov x1,x20
02c73a74  mov x2,x21
02c73a78  mov x4,xzr
02c73a7c  bl 0x046c1d58
02c73a80  adrp x8,0x5e58000
02c73a84  mov x20,x0
02c73a88  ldr x8,[x8, #0xf08]
02c73a8c  ldr x0,[x8]
02c73a90  ldr w8,[x0, #0xe4]
02c73a94  cbnz w8,0x02c73a9c
02c73a98  bl 0x029f5bd0
02c73a9c  mov x0,x20
02c73aa0  mov x1,xzr
02c73aa4  bl 0x05799e30
02c73aa8  ldr x8,[x24]
02c73aac  ldr x8,[x8, #0xb8]
02c73ab0  strb wzr,[x8, #0x8]
02c73ab4  mov x0,x19
02c73ab8  bl 0x02c75d6c
02c73abc  b 0x02c73ae4
02c73ac0  mov x0,xzr
02c73ac4  bl 0x02bdfc08
02c73ac8  mov x1,xzr
02c73acc  bl 0x02c1dd54
02c73ad0  mov x0,x19
02c73ad4  bl 0x02c73c20
02c73ad8  ldr x8,[x24]
02c73adc  ldr x8,[x8, #0xb8]
02c73ae0  strb wzr,[x8, #0x8]
02c73ae4  ldp x20,x19,[sp, #0x60]
02c73ae8  ldp x22,x21,[sp, #0x50]
02c73aec  ldp x24,x23,[sp, #0x40]
02c73af0  ldp x26,x25,[sp, #0x30]
02c73af4  ldp x28,x27,[sp, #0x20]
02c73af8  ldp x29,x30,[sp, #0x10]
02c73afc  add sp,sp,#0x70
02c73b00  ret
02c73b04  ldr w11,[x21, #0x90]
02c73b08  cmp w9,w11
02c73b0c  b.eq 0x02c737d8
02c73b10  cmp w10,w11
02c73b14  b.ne 0x02c737e0
02c73b18  b 0x02c737d8
02c73b1c  bl 0x029f5cfc
02c73b20  bl 0x029f5cfc
02c73b24  bl 0x029f5cfc
02c73b28  bl 0x029f5d04
02c73b2c  bl 0x029f5d04
02c73b30  bl 0x029f5d04
02c73b34  bl 0x029f5cfc
02c73b38  bl 0x029f5cfc
02c73b3c  bl 0x029f5cfc
02c73b40  bl 0x029f5cfc
02c73b44  bl 0x029f5cfc
02c73b48  bl 0x029f5cfc
02c73b4c  bl 0x029f5cfc
02c73b50  bl 0x029f5cfc
02c73b54  bl 0x029f5cfc
02c73b58  bl 0x029f5cfc
