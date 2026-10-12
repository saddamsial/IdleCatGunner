02c064c0  sub sp,sp,#0x60
02c064c4  str d8,[sp, #0x10]
02c064c8  stp x30,x25,[sp, #0x20]
02c064cc  stp x24,x23,[sp, #0x30]
02c064d0  stp x22,x21,[sp, #0x40]
02c064d4  stp x20,x19,[sp, #0x50]
02c064d8  adrp x23,0x625b000
02c064dc  mov x19,x3
02c064e0  mov x20,x2
02c064e4  ldrb w8,[x23, #0xe78]
02c064e8  mov x22,x1
02c064ec  mov x21,x0
02c064f0  tbnz w8,#0x0,0x02c06544
02c064f4  adrp x0,0x5e59000
02c064f8  ldr x0,[x0, #0x760]
02c064fc  bl 0x029f5a50
02c06500  adrp x0,0x5e59000
02c06504  ldr x0,[x0, #0x7d0]
02c06508  bl 0x029f5a50
02c0650c  adrp x0,0x5e5a000
02c06510  ldr x0,[x0, #0x180]
02c06514  bl 0x029f5a50
02c06518  adrp x0,0x5e5d000
02c0651c  ldr x0,[x0, #0x3c0]
02c06520  bl 0x029f5a50
02c06524  adrp x0,0x5e62000
02c06528  ldr x0,[x0, #0x30]
02c0652c  bl 0x029f5a50
02c06530  adrp x0,0x5e62000
02c06534  ldr x0,[x0, #0x38]
02c06538  bl 0x029f5a50
02c0653c  mov w8,#0x1
02c06540  strb w8,[x23, #0xe78]
02c06544  str xzr,[sp, #0x18]
02c06548  str xzr,[sp, #0x8]
02c0654c  str wzr,[x20]
02c06550  str wzr,[x19]
02c06554  cbz x22,0x02c0672c
02c06558  adrp x23,0x5e5d000
02c0655c  ldr x23,[x23, #0x3c0]
02c06560  ldr x0,[x23]
02c06564  ldr w8,[x0, #0xe4]
02c06568  cbnz w8,0x02c06570
02c0656c  bl 0x029f5bd0
02c06570  mov x0,xzr
02c06574  bl 0x02c25d1c
02c06578  tbz w0,#0x0,0x02c0663c
02c0657c  ldr x0,[x23]
02c06580  ldr w8,[x0, #0xe4]
02c06584  cbnz w8,0x02c0658c
02c06588  bl 0x029f5bd0
02c0658c  adrp x8,0x5e62000
02c06590  mov x1,xzr
02c06594  ldr x8,[x8, #0x38]
02c06598  ldr x0,[x8]
02c0659c  bl 0x02c23868
02c065a0  cmp w0,#0x2
02c065a4  b.gt 0x02c0672c
02c065a8  ldr x0,[x23]
02c065ac  ldr w8,[x0, #0xe4]
02c065b0  cbnz w8,0x02c065b8
02c065b4  bl 0x029f5bd0
02c065b8  mov x0,xzr
02c065bc  bl 0x02c1a570
02c065c0  adrp x8,0x5e59000
02c065c4  mov x23,x0
02c065c8  ldr x8,[x8, #0x760]
02c065cc  ldr x24,[x22, #0xc8]
02c065d0  ldr x8,[x8]
02c065d4  ldr w9,[x8, #0xe4]
02c065d8  cbnz w9,0x02c065e4
02c065dc  mov x0,x8
02c065e0  bl 0x029f5bd0
02c065e4  mov x0,xzr
02c065e8  bl 0x047e36ac
02c065ec  adrp x8,0x5e59000
02c065f0  mov x25,x0
02c065f4  ldr x8,[x8, #0x7d0]
02c065f8  ldr x8,[x8]
02c065fc  ldr w9,[x8, #0xe4]
02c06600  cbnz w9,0x02c0660c
02c06604  mov x0,x8
02c06608  bl 0x029f5bd0
02c0660c  adrp x8,0x5e62000
02c06610  add x4,sp,#0x18
02c06614  mov x0,x24
02c06618  ldr x8,[x8, #0x30]
02c0661c  mov x2,x25
02c06620  mov w3,#0x80
02c06624  mov x5,xzr
02c06628  ldr x1,[x8]
02c0662c  bl 0x048329b4
02c06630  tbz w0,#0x0,0x02c0671c
02c06634  ldr x22,[sp, #0x18]
02c06638  b 0x02c0668c
02c0663c  ldr x0,[x22, #0x230]
02c06640  mov x1,xzr
02c06644  bl 0x046c0604
02c06648  tbnz w0,#0x0,0x02c0672c
02c0664c  adrp x8,0x5e59000
02c06650  ldr x8,[x8, #0x7d0]
02c06654  ldr x0,[x8]
02c06658  ldr w8,[x0, #0xe4]
02c0665c  cbnz w8,0x02c06664
02c06660  bl 0x029f5bd0
02c06664  mov x0,xzr
02c06668  bl 0x048312a4
02c0666c  ldr x8,[x22, #0x230]
02c06670  mov x23,x0
02c06674  mov x0,x8
02c06678  mov x1,x23
02c0667c  mov x2,xzr
02c06680  bl 0x02c06754
02c06684  mov x22,x0
02c06688  str x0,[sp, #0x18]
02c0668c  adrp x8,0x5e59000
02c06690  ldr x8,[x8, #0x7d0]
02c06694  ldr x0,[x8]
02c06698  ldr w8,[x0, #0xe4]
02c0669c  cbnz w8,0x02c066a4
02c066a0  bl 0x029f5bd0
02c066a4  mov x0,x23
02c066a8  mov x1,x22
02c066ac  mov x2,xzr
02c066b0  bl 0x048330d0
02c066b4  adrp x8,0x5e5a000
02c066b8  ldr x8,[x8, #0x180]
02c066bc  str x0,[sp, #0x8]
02c066c0  ldr x8,[x8]
02c066c4  ldr w9,[x8, #0xe4]
02c066c8  cbnz w9,0x02c066d4
02c066cc  mov x0,x8
02c066d0  bl 0x029f5bd0
02c066d4  add x0,sp,#0x8
02c066d8  mov x1,xzr
02c066dc  bl 0x04868260
02c066e0  mov x0,x21
02c066e4  fcvt s8,d0
02c066e8  bl 0x02c05d94
02c066ec  fcmp s0,s8
02c066f0  movi d1,#0x0
02c066f4  fcsel s0,s0,s8,mi
02c066f8  fcmp s8,#0.0
02c066fc  fcsel s0,s1,s0,mi
02c06700  fmov s1,0x41f00000
02c06704  fcmp s0,s1
02c06708  b.mi 0x02c0672c
02c0670c  mov w0,#0x1
02c06710  str s0,[x20]
02c06714  str s8,[x19]
02c06718  b 0x02c06730
02c0671c  ldr x0,[x22, #0x230]
02c06720  mov x1,xzr
02c06724  bl 0x046c0604
02c06728  tbz w0,#0x0,0x02c0674c
02c0672c  mov w0,wzr
02c06730  ldp x20,x19,[sp, #0x50]
02c06734  ldr d8,[sp, #0x10]
02c06738  ldp x22,x21,[sp, #0x40]
02c0673c  ldp x24,x23,[sp, #0x30]
02c06740  ldp x30,x25,[sp, #0x20]
02c06744  add sp,sp,#0x60
02c06748  ret
02c0674c  ldr x0,[x22, #0x230]
02c06750  b 0x02c06678
