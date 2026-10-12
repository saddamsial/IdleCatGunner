02c506c4  str d8,[sp, #-0x30]!
02c506c8  stp x30,x21,[sp, #0x10]
02c506cc  stp x20,x19,[sp, #0x20]
02c506d0  adrp x20,0x625c000
02c506d4  mov x19,x0
02c506d8  ldrb w8,[x20, #0x154]
02c506dc  tbnz w8,#0x0,0x02c50718
02c506e0  adrp x0,0x5e5d000
02c506e4  ldr x0,[x0, #0x338]
02c506e8  bl 0x029f5a50
02c506ec  adrp x0,0x5e63000
02c506f0  ldr x0,[x0, #0x538]
02c506f4  bl 0x029f5a50
02c506f8  adrp x0,0x5e5d000
02c506fc  ldr x0,[x0, #0xd58]
02c50700  bl 0x029f5a50
02c50704  adrp x0,0x5e5a000
02c50708  ldr x0,[x0, #0x710]
02c5070c  bl 0x029f5a50
02c50710  mov w8,#0x1
02c50714  strb w8,[x20, #0x154]
02c50718  ldr w8,[x19, #0x10]
02c5071c  ldr x20,[x19, #0x20]
02c50720  sub w9,w8,#0x1
02c50724  cmp w9,#0x2
02c50728  b.cs 0x02c50740
02c5072c  mov w8,#0xffffffff
02c50730  str w8,[x19, #0x10]
02c50734  cbz x20,0x02c50918
02c50738  ldr w8,[x19, #0x28]
02c5073c  b 0x02c50794
02c50740  cbnz w8,0x02c5080c
02c50744  adrp x21,0x5e5d000
02c50748  mov w9,#0xffffffff
02c5074c  ldr x21,[x21, #0xd58]
02c50750  str w9,[x19, #0x10]
02c50754  ldr x0,[x21]
02c50758  ldr w8,[x0, #0xe4]
02c5075c  cbnz w8,0x02c50768
02c50760  bl 0x029f5bd0
02c50764  ldr x0,[x21]
02c50768  cbz x20,0x02c50918
02c5076c  ldr x8,[x0, #0xb8]
02c50770  ldr x8,[x8, #0x10]
02c50774  cbz x8,0x02c50918
02c50778  ldrsw x9,[x20, #0x24]
02c5077c  ldr w10,[x8, #0x18]
02c50780  cmp w9,w10
02c50784  b.cs 0x02c5091c
02c50788  add x8,x8,x9, LSL #0x2
02c5078c  ldr w8,[x8, #0x20]
02c50790  stp w8,wzr,[x19, #0x28]
02c50794  adrp x21,0x5e5d000
02c50798  ldr x21,[x21, #0x338]
02c5079c  ldr w10,[x20, #0xd0]
02c507a0  ldr x0,[x21]
02c507a4  cmp w10,w8
02c507a8  ldr w9,[x0, #0xe4]
02c507ac  b.ge 0x02c507ec
02c507b0  cbnz w9,0x02c507bc
02c507b4  bl 0x029f5bd0
02c507b8  ldr x0,[x21]
02c507bc  ldr x8,[x0, #0xb8]
02c507c0  ldrb w8,[x8]
02c507c4  cbz w8,0x02c5080c
02c507c8  ldp w10,w9,[x19, #0x28]
02c507cc  ldr w8,[x20, #0xd4]
02c507d0  cmp w9,w10
02c507d4  b.ge 0x02c50820
02c507d8  cmp w8,#0x1
02c507dc  b.ge 0x02c50828
02c507e0  add w8,w9,#0x1
02c507e4  str w8,[x19, #0x2c]
02c507e8  b 0x02c50830
02c507ec  cbnz w9,0x02c507f8
02c507f0  bl 0x029f5bd0
02c507f4  ldr x0,[x21]
02c507f8  ldr x8,[x0, #0xb8]
02c507fc  ldrb w8,[x8]
02c50800  cbz w8,0x02c5080c
02c50804  mov x0,x20
02c50808  bl 0x02c4de0c
02c5080c  mov w0,wzr
02c50810  ldp x20,x19,[sp, #0x20]
02c50814  ldp x30,x21,[sp, #0x10]
02c50818  ldr d8,[sp], #0x30
02c5081c  ret
02c50820  cmp w8,#0x1
02c50824  b.lt 0x02c508d4
02c50828  sub w8,w8,#0x1
02c5082c  str w8,[x20, #0xd4]
02c50830  mov x0,x20
02c50834  bl 0x02c4fbf0
02c50838  ldr x8,[x20, #0x178]
02c5083c  cbz x8,0x02c50918
02c50840  ldr w8,[x8, #0x18]
02c50844  cmp w8,#0x3
02c50848  b.ge 0x02c50858
02c5084c  adrp x8,0x116c000
02c50850  ldr s8,[x8, #0x280]
02c50854  b 0x02c50898
02c50858  adrp x21,0x5e5d000
02c5085c  ldr x21,[x21, #0xd58]
02c50860  ldr x0,[x21]
02c50864  ldr w8,[x0, #0xe4]
02c50868  cbnz w8,0x02c50874
02c5086c  bl 0x029f5bd0
02c50870  ldr x0,[x21]
02c50874  ldr x8,[x0, #0xb8]
02c50878  ldr x8,[x8, #0x18]
02c5087c  cbz x8,0x02c50918
02c50880  ldrsw x9,[x20, #0x24]
02c50884  ldr w10,[x8, #0x18]
02c50888  cmp w9,w10
02c5088c  b.cs 0x02c5091c
02c50890  add x8,x8,x9, LSL #0x2
02c50894  ldr s8,[x8, #0x20]
02c50898  adrp x8,0x5e5a000
02c5089c  ldr x8,[x8, #0x710]
02c508a0  ldr x0,[x8]
02c508a4  bl 0x029f5cec
02c508a8  fmov s0,s8
02c508ac  mov x1,xzr
02c508b0  mov x20,x0
02c508b4  bl 0x057e84e0
02c508b8  str x20,[x19, #0x18]!
02c508bc  mov x0,x19
02c508c0  mov x1,x20
02c508c4  bl 0x029f59f4
02c508c8  mov w0,#0x1
02c508cc  stur w0,[x19, #-0x8]
02c508d0  b 0x02c50810
02c508d4  adrp x8,0x5e5a000
02c508d8  ldr x8,[x8, #0x710]
02c508dc  ldr x0,[x8]
02c508e0  bl 0x029f5cec
02c508e4  adrp x8,0x116c000
02c508e8  mov x1,xzr
02c508ec  mov x20,x0
02c508f0  ldr s0,[x8, #0x174]
02c508f4  bl 0x057e84e0
02c508f8  str x20,[x19, #0x18]!
02c508fc  mov x0,x19
02c50900  mov x1,x20
02c50904  bl 0x029f59f4
02c50908  mov w8,#0x2
02c5090c  mov w0,#0x1
02c50910  stur w8,[x19, #-0x8]
02c50914  b 0x02c50810
02c50918  bl 0x029f5cfc
02c5091c  bl 0x029f5d04
