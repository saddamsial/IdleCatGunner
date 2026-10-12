02c79470  sub sp,sp,#0x50
02c79474  stp x30,x25,[sp, #0x10]
02c79478  stp x24,x23,[sp, #0x20]
02c7947c  stp x22,x21,[sp, #0x30]
02c79480  stp x20,x19,[sp, #0x40]
02c79484  adrp x20,0x625c000
02c79488  adrp x21,0x5e5d000
02c7948c  mov x19,x0
02c79490  ldrb w8,[x20, #0x30d]
02c79494  ldr x21,[x21, #0xd40]
02c79498  tbnz w8,#0x0,0x02c79510
02c7949c  adrp x0,0x5e5d000
02c794a0  ldr x0,[x0, #0x5b0]
02c794a4  bl 0x029f5a50
02c794a8  adrp x0,0x5e58000
02c794ac  ldr x0,[x0, #0xf08]
02c794b0  bl 0x029f5a50
02c794b4  adrp x0,0x5e63000
02c794b8  ldr x0,[x0, #0xaa8]
02c794bc  bl 0x029f5a50
02c794c0  adrp x0,0x5e5d000
02c794c4  ldr x0,[x0, #0xd40]
02c794c8  bl 0x029f5a50
02c794cc  adrp x0,0x5e59000
02c794d0  ldr x0,[x0, #0x1c0]
02c794d4  bl 0x029f5a50
02c794d8  adrp x0,0x5e63000
02c794dc  ldr x0,[x0, #0xce0]
02c794e0  bl 0x029f5a50
02c794e4  adrp x0,0x5e63000
02c794e8  ldr x0,[x0, #0xce8]
02c794ec  bl 0x029f5a50
02c794f0  adrp x0,0x5e63000
02c794f4  ldr x0,[x0, #0xcf0]
02c794f8  bl 0x029f5a50
02c794fc  adrp x0,0x5e63000
02c79500  ldr x0,[x0, #0xcf8]
02c79504  bl 0x029f5a50
02c79508  mov w8,#0x1
02c7950c  strb w8,[x20, #0x30d]
02c79510  ldr x8,[x21]
02c79514  ldr x8,[x8, #0xb8]
02c79518  ldr x20,[x8]
02c7951c  cbz x20,0x02c79894
02c79520  ldr x23,[x20, #0x28]
02c79524  cbz x23,0x02c79894
02c79528  ldr w8,[x19, #0x20]
02c7952c  ldr w9,[x23, #0x18]
02c79530  cmp w8,w9
02c79534  b.cs 0x02c79890
02c79538  sxtw x9,w8
02c7953c  add x9,x23,x9, LSL #0x2
02c79540  ldr w22,[x9, #0x20]
02c79544  cmn w22,#0x1
02c79548  b.eq 0x02c79798
02c7954c  bl 0x02c77b94
02c79550  cmp w0,#0x1
02c79554  b.le 0x02c79810
02c79558  mov x0,x20
02c7955c  mov x1,xzr
02c79560  bl 0x02c67de0
02c79564  cmn w0,#0x1
02c79568  b.eq 0x02c79850
02c7956c  ldr x8,[x20, #0x40]
02c79570  cbz x8,0x02c79894
02c79574  ldr w9,[x8, #0x18]
02c79578  mov w21,w0
02c7957c  cmp w0,w9
02c79580  b.cs 0x02c79890
02c79584  add x8,x8,w21, SXTW  #0x2
02c79588  mov x0,x20
02c7958c  mov x2,xzr
02c79590  str w22,[x8, #0x20]
02c79594  ldr w1,[x19, #0x20]
02c79598  bl 0x02c67ff0
02c7959c  and w2,w0,#0x1
02c795a0  mov x0,x20
02c795a4  mov w1,w21
02c795a8  mov x3,xzr
02c795ac  bl 0x02c6802c
02c795b0  ldrsw x8,[x19, #0x20]
02c795b4  ldr w9,[x23, #0x18]
02c795b8  cmp w8,w9
02c795bc  b.cs 0x02c79890
02c795c0  add x8,x23,x8, LSL #0x2
02c795c4  mov w9,#0xffffffff
02c795c8  mov x0,x20
02c795cc  mov w2,wzr
02c795d0  mov x3,xzr
02c795d4  str w9,[x8, #0x20]
02c795d8  ldr w1,[x19, #0x20]
02c795dc  bl 0x02c6809c
02c795e0  mov x0,x19
02c795e4  bl 0x02c762a4
02c795e8  adrp x24,0x5e63000
02c795ec  adrp x23,0x5e59000
02c795f0  ldr x24,[x24, #0xaa8]
02c795f4  ldr x23,[x23, #0x1c0]
02c795f8  ldr x8,[x24]
02c795fc  ldr x0,[x23]
02c79600  ldr x8,[x8, #0xb8]
02c79604  ldr w9,[x0, #0xe4]
02c79608  ldr x21,[x8]
02c7960c  cbnz w9,0x02c79614
02c79610  bl 0x029f5bd0
02c79614  mov x0,x21
02c79618  mov x1,xzr
02c7961c  mov x2,xzr
02c79620  bl 0x057dfa70
02c79624  tbz w0,#0x0,0x02c7963c
02c79628  ldr x8,[x24]
02c7962c  ldr x8,[x8, #0xb8]
02c79630  ldr x0,[x8]
02c79634  cbz x0,0x02c79894
02c79638  bl 0x02c73c20
02c7963c  ldr x21,[x20, #0x98]
02c79640  cbz x21,0x02c79894
02c79644  ldr x8,[x21, #0x18]
02c79648  cmp w8,#0x1
02c7964c  b.lt 0x02c796a8
02c79650  mov x24,xzr
02c79654  and x8,x8,#0xffffffff
02c79658  add x25,x21,#0x20
02c7965c  cmp x24,w8, UXTW 
02c79660  b.cs 0x02c79890
02c79664  ldr x0,[x23]
02c79668  ldr x20,[x25, x24, LSL #0x3]
02c7966c  ldr w8,[x0, #0xe4]
02c79670  cbnz w8,0x02c79678
02c79674  bl 0x029f5bd0
02c79678  mov x0,x20
02c7967c  mov x1,xzr
02c79680  mov x2,xzr
02c79684  bl 0x057dfa70
02c79688  tbz w0,#0x0,0x02c79698
02c7968c  cbz x20,0x02c79894
02c79690  mov x0,x20
02c79694  bl 0x02c762a4
02c79698  ldr w8,[x21, #0x18]
02c7969c  add x24,x24,#0x1
02c796a0  cmp x24,w8, SXTW 
02c796a4  b.lt 0x02c7965c
02c796a8  adrp x21,0x5e5d000
02c796ac  ldr x21,[x21, #0x5b0]
02c796b0  ldr x0,[x23]
02c796b4  ldr x8,[x21]
02c796b8  ldr w9,[x0, #0xe4]
02c796bc  ldr x8,[x8, #0xb8]
02c796c0  ldr x20,[x8, #0x8]
02c796c4  cbnz w9,0x02c796cc
02c796c8  bl 0x029f5bd0
02c796cc  mov x0,x20
02c796d0  mov x1,xzr
02c796d4  mov x2,xzr
02c796d8  bl 0x057dfa70
02c796dc  tbz w0,#0x0,0x02c796f8
02c796e0  ldr x8,[x21]
02c796e4  ldr x8,[x8, #0xb8]
02c796e8  ldr x0,[x8, #0x8]
02c796ec  cbz x0,0x02c79894
02c796f0  mov x1,xzr
02c796f4  bl 0x02c43744
02c796f8  adrp x20,0x625b000
02c796fc  ldrb w8,[x20, #0xa57]
02c79700  cbnz w8,0x02c79718
02c79704  adrp x0,0x5e5d000
02c79708  ldr x0,[x0, #0xd70]
02c7970c  bl 0x029f5a50
02c79710  mov w8,#0x1
02c79714  strb w8,[x20, #0xa57]
02c79718  adrp x8,0x5e5d000
02c7971c  ldr x8,[x8, #0xd70]
02c79720  ldr x8,[x8]
02c79724  ldr x8,[x8, #0xb8]
02c79728  ldr x0,[x8]
02c7972c  cbz x0,0x02c79894
02c79730  fmov s0,0x3f800000
02c79734  mov w1,#0xd
02c79738  mov x2,xzr
02c7973c  mov x3,xzr
02c79740  bl 0x02c1f10c
02c79744  adrp x20,0x5e58000
02c79748  add x1,sp,#0x8
02c7974c  ldr x20,[x20, #0xa10]
02c79750  ldr w8,[x19, #0x20]
02c79754  ldr x0,[x20, #0x48]
02c79758  str w8,[sp, #0x8]
02c7975c  bl 0x029f5bd8
02c79760  mov x19,x0
02c79764  ldr x0,[x20, #0x48]
02c79768  add x1,sp,#0x4
02c7976c  str w22,[sp, #0x4]
02c79770  bl 0x029f5bd8
02c79774  adrp x8,0x5e63000
02c79778  mov x2,x0
02c7977c  mov x1,x19
02c79780  ldr x8,[x8, #0xce0]
02c79784  mov x3,xzr
02c79788  ldr x8,[x8]
02c7978c  mov x0,x8
02c79790  bl 0x046c1d14
02c79794  b 0x02c797cc
02c79798  adrp x9,0x5e58000
02c7979c  add x1,sp,#0xc
02c797a0  ldr x9,[x9, #0xa10]
02c797a4  str w8,[sp, #0xc]
02c797a8  ldr x0,[x9, #0x48]
02c797ac  bl 0x029f5bd8
02c797b0  adrp x8,0x5e63000
02c797b4  mov x1,x0
02c797b8  mov x2,xzr
02c797bc  ldr x8,[x8, #0xcf8]
02c797c0  ldr x8,[x8]
02c797c4  mov x0,x8
02c797c8  bl 0x046b6c0c
02c797cc  adrp x8,0x5e58000
02c797d0  mov x19,x0
02c797d4  ldr x8,[x8, #0xf08]
02c797d8  ldr x8,[x8]
02c797dc  ldr w9,[x8, #0xe4]
02c797e0  cbnz w9,0x02c797ec
02c797e4  mov x0,x8
02c797e8  bl 0x029f5bd0
02c797ec  mov x0,x19
02c797f0  mov x1,xzr
02c797f4  bl 0x05799e30
02c797f8  ldp x20,x19,[sp, #0x40]
02c797fc  ldp x22,x21,[sp, #0x30]
02c79800  ldp x24,x23,[sp, #0x20]
02c79804  ldp x30,x25,[sp, #0x10]
02c79808  add sp,sp,#0x50
02c7980c  ret
02c79810  adrp x8,0x5e58000
02c79814  ldr x8,[x8, #0xf08]
02c79818  ldr x0,[x8]
02c7981c  ldr w8,[x0, #0xe4]
02c79820  cbnz w8,0x02c79828
02c79824  bl 0x029f5bd0
02c79828  adrp x8,0x5e63000
02c7982c  mov x1,xzr
02c79830  ldr x8,[x8, #0xcf0]
02c79834  ldp x20,x19,[sp, #0x40]
02c79838  ldp x22,x21,[sp, #0x30]
02c7983c  ldp x24,x23,[sp, #0x20]
02c79840  ldr x0,[x8]
02c79844  ldp x30,x25,[sp, #0x10]
02c79848  add sp,sp,#0x50
02c7984c  b 0x05799e30
02c79850  adrp x8,0x5e58000
02c79854  ldr x8,[x8, #0xf08]
02c79858  ldr x0,[x8]
02c7985c  ldr w8,[x0, #0xe4]
02c79860  cbnz w8,0x02c79868
02c79864  bl 0x029f5bd0
02c79868  adrp x8,0x5e63000
02c7986c  mov x1,xzr
02c79870  ldr x8,[x8, #0xce8]
02c79874  ldp x20,x19,[sp, #0x40]
02c79878  ldp x22,x21,[sp, #0x30]
02c7987c  ldp x24,x23,[sp, #0x20]
02c79880  ldr x0,[x8]
02c79884  ldp x30,x25,[sp, #0x10]
02c79888  add sp,sp,#0x50
02c7988c  b 0x0579a8d0
02c79890  bl 0x029f5d04
02c79894  bl 0x029f5cfc
