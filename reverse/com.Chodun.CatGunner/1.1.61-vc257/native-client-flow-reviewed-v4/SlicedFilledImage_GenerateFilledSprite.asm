02c29454  sub sp,sp,#0x90
02c29458  stp d15,d14,[sp, #0x10]
02c2945c  stp d13,d12,[sp, #0x20]
02c29460  stp d11,d10,[sp, #0x30]
02c29464  stp d9,d8,[sp, #0x40]
02c29468  stp x30,x25,[sp, #0x50]
02c2946c  stp x24,x23,[sp, #0x60]
02c29470  stp x22,x21,[sp, #0x70]
02c29474  stp x20,x19,[sp, #0x80]
02c29478  fmov s10,s7
02c2947c  fmov s9,s5
02c29480  adrp x21,0x625b000
02c29484  fmov s11,s4
02c29488  fmov s14,s3
02c2948c  ldrb w8,[x21, #0xfd2]
02c29490  fmov s13,s2
02c29494  fmov s12,s1
02c29498  ldr s8,[sp, #0x90]
02c2949c  fmov s15,s0
02c294a0  mov x19,x1
02c294a4  mov x20,x0
02c294a8  tbnz w8,#0x0,0x02c29500
02c294ac  adrp x0,0x5e62000
02c294b0  ldr x0,[x0, #0xd98]
02c294b4  str s15,[sp, #0xc]
02c294b8  fmov s15,s14
02c294bc  fmov s14,s12
02c294c0  fmov s12,s13
02c294c4  fmov s13,s11
02c294c8  fmov s11,s10
02c294cc  fmov s10,s9
02c294d0  fmov s9,s6
02c294d4  bl 0x029f5a50
02c294d8  fmov s6,s9
02c294dc  fmov s9,s10
02c294e0  mov w8,#0x1
02c294e4  fmov s10,s11
02c294e8  fmov s11,s13
02c294ec  strb w8,[x21, #0xfd2]
02c294f0  fmov s13,s12
02c294f4  fmov s12,s14
02c294f8  fmov s14,s15
02c294fc  ldr s15,[sp, #0xc]
02c29500  adrp x8,0x116c000
02c29504  ldr s0,[x20, #0xe4]
02c29508  ldr s1,[x8, #0x268]
02c2950c  fcmp s0,s1
02c29510  b.pl 0x02c2953c
02c29514  ldp x20,x19,[sp, #0x80]
02c29518  ldp x22,x21,[sp, #0x70]
02c2951c  ldp x24,x23,[sp, #0x60]
02c29520  ldp x30,x25,[sp, #0x50]
02c29524  ldp d9,d8,[sp, #0x40]
02c29528  ldp d11,d10,[sp, #0x30]
02c2952c  ldp d13,d12,[sp, #0x20]
02c29530  ldp d15,d14,[sp, #0x10]
02c29534  add sp,sp,#0x90
02c29538  ret
02c2953c  fmov s0,0x3f800000
02c29540  adrp x22,0x5e62000
02c29544  ldr x22,[x22, #0xd98]
02c29548  fcmp s8,s0
02c2954c  b.pl 0x02c295d4
02c29550  ldr w8,[x20, #0xe0]
02c29554  cbz w8,0x02c295a0
02c29558  cmp w8,#0x3
02c2955c  b.eq 0x02c29584
02c29560  cmp w8,#0x1
02c29564  b.ne 0x02c295bc
02c29568  fsub s0,s13,s15
02c2956c  fsub s1,s6,s11
02c29570  fmul s0,s0,s8
02c29574  fmul s1,s1,s8
02c29578  fsub s15,s13,s0
02c2957c  fsub s11,s6,s1
02c29580  b 0x02c295d4
02c29584  fsub s0,s14,s12
02c29588  fsub s1,s10,s9
02c2958c  fmul s0,s0,s8
02c29590  fmul s1,s1,s8
02c29594  fsub s12,s14,s0
02c29598  fsub s9,s10,s1
02c2959c  b 0x02c295d4
02c295a0  fsub s0,s13,s15
02c295a4  fsub s1,s6,s11
02c295a8  fmul s0,s0,s8
02c295ac  fmul s1,s1,s8
02c295b0  fadd s13,s15,s0
02c295b4  fadd s6,s11,s1
02c295b8  b 0x02c295d4
02c295bc  fsub s0,s14,s12
02c295c0  fsub s1,s10,s9
02c295c4  fmul s0,s0,s8
02c295c8  fmul s1,s1,s8
02c295cc  fadd s14,s12,s0
02c295d0  fadd s10,s9,s1
02c295d4  ldr x0,[x22]
02c295d8  ldr w8,[x0, #0xe4]
02c295dc  cbnz w8,0x02c295f0
02c295e0  fmov s8,s6
02c295e4  bl 0x029f5bd0
02c295e8  fmov s6,s8
02c295ec  ldr x0,[x22]
02c295f0  ldr x8,[x0, #0xb8]
02c295f4  ldr x8,[x8]
02c295f8  cbz x8,0x02c29818
02c295fc  ldr w9,[x8, #0x18]
02c29600  cbz w9,0x02c2981c
02c29604  stp s15,s12,[x8, #0x20]
02c29608  str wzr,[x8, #0x28]
02c2960c  ldr x8,[x22]
02c29610  ldr x8,[x8, #0xb8]
02c29614  ldr x8,[x8]
02c29618  cbz x8,0x02c29818
02c2961c  ldr w9,[x8, #0x18]
02c29620  tst w9,#0xfffffffe
02c29624  b.eq 0x02c2981c
02c29628  stp s15,s14,[x8, #0x2c]
02c2962c  str wzr,[x8, #0x34]
02c29630  ldr x8,[x22]
02c29634  ldr x8,[x8, #0xb8]
02c29638  ldr x8,[x8]
02c2963c  cbz x8,0x02c29818
02c29640  ldr w9,[x8, #0x18]
02c29644  cmp w9,#0x2
02c29648  b.ls 0x02c2981c
02c2964c  stp s13,s14,[x8, #0x38]
02c29650  str wzr,[x8, #0x40]
02c29654  ldr x8,[x22]
02c29658  ldr x8,[x8, #0xb8]
02c2965c  ldr x8,[x8]
02c29660  cbz x8,0x02c29818
02c29664  ldr w9,[x8, #0x18]
02c29668  tst w9,#0xfffffffc
02c2966c  b.eq 0x02c2981c
02c29670  stp s13,s12,[x8, #0x44]
02c29674  str wzr,[x8, #0x4c]
02c29678  ldr x8,[x22]
02c2967c  ldr x8,[x8, #0xb8]
02c29680  ldr x8,[x8, #0x8]
02c29684  cbz x8,0x02c29818
02c29688  ldr w9,[x8, #0x18]
02c2968c  cbz w9,0x02c2981c
02c29690  stp s11,s9,[x8, #0x20]
02c29694  ldr x8,[x22]
02c29698  ldr x8,[x8, #0xb8]
02c2969c  ldr x8,[x8, #0x8]
02c296a0  cbz x8,0x02c29818
02c296a4  ldr w9,[x8, #0x18]
02c296a8  tst w9,#0xfffffffe
02c296ac  b.eq 0x02c2981c
02c296b0  stp s11,s10,[x8, #0x28]
02c296b4  ldr x8,[x22]
02c296b8  ldr x8,[x8, #0xb8]
02c296bc  ldr x8,[x8, #0x8]
02c296c0  cbz x8,0x02c29818
02c296c4  ldr w9,[x8, #0x18]
02c296c8  cmp w9,#0x2
02c296cc  b.ls 0x02c2981c
02c296d0  stp s6,s10,[x8, #0x30]
02c296d4  ldr x8,[x22]
02c296d8  ldr x8,[x8, #0xb8]
02c296dc  ldr x8,[x8, #0x8]
02c296e0  cbz x8,0x02c29818
02c296e4  ldr w9,[x8, #0x18]
02c296e8  tst w9,#0xfffffffc
02c296ec  b.eq 0x02c2981c
02c296f0  stp s6,s9,[x8, #0x38]
02c296f4  cbz x19,0x02c29818
02c296f8  mov x0,x19
02c296fc  mov x1,xzr
02c29700  bl 0x05ac8318
02c29704  mov w21,w0
02c29708  mov x23,xzr
02c2970c  mov x24,xzr
02c29710  mov x25,xzr
02c29714  ldr x0,[x22]
02c29718  ldr w8,[x0, #0xe4]
02c2971c  cbnz w8,0x02c29728
02c29720  bl 0x029f5bd0
02c29724  ldr x0,[x22]
02c29728  ldr x8,[x0, #0xb8]
02c2972c  ldr x8,[x8]
02c29730  cbz x8,0x02c29818
02c29734  ldr w9,[x8, #0x18]
02c29738  cmp x25,x9
02c2973c  b.cs 0x02c2981c
02c29740  ldr x9,[x20]
02c29744  add x8,x8,x24
02c29748  mov x0,x20
02c2974c  ldp s8,s9,[x8, #0x20]
02c29750  ldr s10,[x8, #0x28]
02c29754  ldr x8,[x9, #0x298]
02c29758  ldr x1,[x9, #0x2a0]
02c2975c  blr x8
02c29760  mov x0,xzr
02c29764  bl 0x02afc394
02c29768  ldr x8,[x22]
02c2976c  ldr x8,[x8, #0xb8]
02c29770  ldr x8,[x8, #0x8]
02c29774  cbz x8,0x02c29818
02c29778  ldr w9,[x8, #0x18]
02c2977c  cmp x25,x9
02c29780  b.cs 0x02c2981c
02c29784  add x8,x8,x23
02c29788  movi d5,#0x0
02c2978c  movi d6,#0x0
02c29790  fmov s0,s8
02c29794  fmov s1,s9
02c29798  mov w1,w0
02c2979c  fmov s2,s10
02c297a0  ldp s3,s4,[x8, #0x20]
02c297a4  mov x0,x19
02c297a8  mov x2,xzr
02c297ac  bl 0x05ab82cc
02c297b0  add x25,x25,#0x1
02c297b4  add x24,x24,#0xc
02c297b8  add x23,x23,#0x8
02c297bc  cmp x25,#0x4
02c297c0  b.ne 0x02c29714
02c297c4  add w2,w21,#0x1
02c297c8  add w3,w21,#0x2
02c297cc  mov x0,x19
02c297d0  mov w1,w21
02c297d4  mov x4,xzr
02c297d8  bl 0x05ab83fc
02c297dc  add w1,w21,#0x2
02c297e0  add w2,w21,#0x3
02c297e4  mov x0,x19
02c297e8  mov w3,w21
02c297ec  ldp x20,x19,[sp, #0x80]
02c297f0  ldp x22,x21,[sp, #0x70]
02c297f4  mov x4,xzr
02c297f8  ldp x24,x23,[sp, #0x60]
02c297fc  ldp x30,x25,[sp, #0x50]
02c29800  ldp d9,d8,[sp, #0x40]
02c29804  ldp d11,d10,[sp, #0x30]
02c29808  ldp d13,d12,[sp, #0x20]
02c2980c  ldp d15,d14,[sp, #0x10]
02c29810  add sp,sp,#0x90
02c29814  b 0x05ab83fc
02c29818  bl 0x029f5cfc
02c2981c  bl 0x029f5d04
