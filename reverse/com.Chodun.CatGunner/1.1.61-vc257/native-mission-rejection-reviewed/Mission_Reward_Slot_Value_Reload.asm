02c0478c  str d8,[sp, #-0x30]!
02c04790  stp x30,x21,[sp, #0x10]
02c04794  stp x20,x19,[sp, #0x20]
02c04798  adrp x20,0x625b000
02c0479c  adrp x21,0x5e5d000
02c047a0  mov x19,x0
02c047a4  ldrb w8,[x20, #0xe61]
02c047a8  ldr x21,[x21, #0xd50]
02c047ac  tbnz w8,#0x0,0x02c047c4
02c047b0  adrp x0,0x5e5d000
02c047b4  ldr x0,[x0, #0xd50]
02c047b8  bl 0x029f5a50
02c047bc  mov w8,#0x1
02c047c0  strb w8,[x20, #0xe61]
02c047c4  ldr x0,[x21]
02c047c8  ldr w8,[x0, #0xe4]
02c047cc  cbnz w8,0x02c047d8
02c047d0  bl 0x029f5bd0
02c047d4  ldr x0,[x21]
02c047d8  ldr x8,[x0, #0xb8]
02c047dc  ldr x0,[x8, #0x8]
02c047e0  cbz x0,0x02c04904
02c047e4  ldr w2,[x19, #0x20]
02c047e8  mov w1,wzr
02c047ec  mov x3,xzr
02c047f0  bl 0x02ba6acc
02c047f4  ldr x8,[x21]
02c047f8  ldr x8,[x8, #0xb8]
02c047fc  ldr x8,[x8, #0x8]
02c04800  cbz x8,0x02c04904
02c04804  ldr w2,[x19, #0x20]
02c04808  mov w20,w0
02c0480c  mov x0,x8
02c04810  mov w1,wzr
02c04814  mov x3,xzr
02c04818  bl 0x02ba629c
02c0481c  ldr x8,[x19, #0x28]
02c04820  cbz x8,0x02c04904
02c04824  and w2,w0,#0x1
02c04828  mov x0,x8
02c0482c  mov w1,w20
02c04830  mov w3,wzr
02c04834  bl 0x02c04394
02c04838  ldr x8,[x21]
02c0483c  ldr x8,[x8, #0xb8]
02c04840  ldr x0,[x8, #0x8]
02c04844  cbz x0,0x02c04904
02c04848  ldr w2,[x19, #0x20]
02c0484c  mov w1,#0x1
02c04850  mov x3,xzr
02c04854  bl 0x02ba6acc
02c04858  ldr x8,[x21]
02c0485c  ldr x8,[x8, #0xb8]
02c04860  ldr x8,[x8, #0x8]
02c04864  cbz x8,0x02c04904
02c04868  ldr w2,[x19, #0x20]
02c0486c  mov w20,w0
02c04870  mov x0,x8
02c04874  mov w1,#0x1
02c04878  mov x3,xzr
02c0487c  bl 0x02ba629c
02c04880  ldr x8,[x19, #0x30]
02c04884  cbz x8,0x02c04904
02c04888  ldr x9,[x21]
02c0488c  and w2,w0,#0x1
02c04890  mov x0,x8
02c04894  mov w1,w20
02c04898  ldr x9,[x9, #0xb8]
02c0489c  ldrb w9,[x9]
02c048a0  cmp w9,#0x0
02c048a4  cset w3,eq
02c048a8  bl 0x02c04394
02c048ac  ldr x8,[x21]
02c048b0  ldr x8,[x8, #0xb8]
02c048b4  ldr x0,[x8, #0x8]
02c048b8  cbz x0,0x02c04904
02c048bc  ldr w1,[x19, #0x20]
02c048c0  mov x2,xzr
02c048c4  bl 0x02ba6b30
02c048c8  ldr x0,[x19, #0x38]
02c048cc  cbz x0,0x02c04904
02c048d0  mov x1,xzr
02c048d4  fmov s8,s0
02c048d8  bl 0x02c28290
02c048dc  ldr x0,[x19, #0x48]
02c048e0  cbz x0,0x02c04904
02c048e4  fmov s0,0x3f800000
02c048e8  ldp x20,x19,[sp, #0x20]
02c048ec  ldp x30,x21,[sp, #0x10]
02c048f0  mov x2,xzr
02c048f4  fcmp s8,s0
02c048f8  cset w1,mi
02c048fc  ldr d8,[sp], #0x30
02c04900  b 0x057dff3c
02c04904  bl 0x029f5cfc
