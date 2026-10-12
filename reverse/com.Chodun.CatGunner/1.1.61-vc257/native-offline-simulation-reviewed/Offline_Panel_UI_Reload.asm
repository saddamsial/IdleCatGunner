02c07334  sub sp,sp,#0x70
02c07338  stp x30,x25,[sp, #0x30]
02c0733c  stp x24,x23,[sp, #0x40]
02c07340  stp x22,x21,[sp, #0x50]
02c07344  stp x20,x19,[sp, #0x60]
02c07348  adrp x22,0x625b000
02c0734c  mov x19,x2
02c07350  mov x21,x1
02c07354  ldrb w8,[x22, #0xe99]
02c07358  mov x20,x0
02c0735c  tbnz w8,#0x0,0x02c07380
02c07360  adrp x0,0x5e61000
02c07364  ldr x0,[x0, #0xf18]
02c07368  bl 0x029f5a50
02c0736c  adrp x0,0x5e62000
02c07370  ldr x0,[x0, #0x88]
02c07374  bl 0x029f5a50
02c07378  mov w8,#0x1
02c0737c  strb w8,[x22, #0xe99]
02c07380  cbz x19,0x02c07730
02c07384  fmov s0,0x3f800000
02c07388  ldp s1,s2,[x19, #0x10]
02c0738c  ldr x22,[x20, #0x20]
02c07390  fadd s0,s1,s0
02c07394  fcmp s2,s0
02c07398  fcsel s0,s1,s2,gt
02c0739c  bl 0x02c0b3cc
02c073a0  cbz x22,0x02c07730
02c073a4  ldr x8,[x22]
02c073a8  mov x1,x0
02c073ac  mov x0,x22
02c073b0  ldr x9,[x8, #0x558]
02c073b4  ldr x2,[x8, #0x560]
02c073b8  blr x9
02c073bc  ldr x0,[x20, #0x28]
02c073c0  cbz x0,0x02c07730
02c073c4  ldp w8,w10,[x19, #0x90]
02c073c8  mov w9,#0xa
02c073cc  mov x2,xzr
02c073d0  madd w8,w8,w9,w10
02c073d4  ldr w9,[x19, #0x98]
02c073d8  cmp w8,w9
02c073dc  cset w1,ge
02c073e0  bl 0x057dff3c
02c073e4  cbz x21,0x02c07730
02c073e8  adrp x24,0x5e58000
02c073ec  ldr w8,[x21, #0x1d0]
02c073f0  adrp x25,0x5e62000
02c073f4  ldr x24,[x24, #0xa10]
02c073f8  ldr x25,[x25, #0x88]
02c073fc  ldr x22,[x20, #0x30]
02c07400  add w8,w8,#0x1
02c07404  add x1,sp,#0x2c
02c07408  ldr x0,[x24, #0x48]
02c0740c  str w8,[sp, #0x2c]
02c07410  bl 0x029f5bd8
02c07414  ldr w8,[x21, #0x1d4]
02c07418  mov x23,x0
02c0741c  ldr x0,[x24, #0x48]
02c07420  add x1,sp,#0x28
02c07424  add w8,w8,#0x1
02c07428  str w8,[sp, #0x28]
02c0742c  bl 0x029f5bd8
02c07430  ldr x8,[x25]
02c07434  mov x2,x0
02c07438  mov x1,x23
02c0743c  mov x3,xzr
02c07440  mov x0,x8
02c07444  bl 0x046c1d14
02c07448  cbz x22,0x02c07730
02c0744c  ldr x8,[x22]
02c07450  mov x1,x0
02c07454  mov x0,x22
02c07458  ldr x9,[x8, #0x558]
02c0745c  ldr x2,[x8, #0x560]
02c07460  blr x9
02c07464  ldr x22,[x20, #0x38]
02c07468  add x0,x21,#0x18
02c0746c  mov x1,xzr
02c07470  bl 0x0465bddc
02c07474  cbz x22,0x02c07730
02c07478  ldr x8,[x22]
02c0747c  mov x1,x0
02c07480  mov x0,x22
02c07484  ldr x9,[x8, #0x558]
02c07488  ldr x2,[x8, #0x560]
02c0748c  blr x9
02c07490  ldr x8,[x21, #0x108]
02c07494  cbz x8,0x02c07730
02c07498  ldr w9,[x8, #0x18]
02c0749c  cbz w9,0x02c07734
02c074a0  adrp x23,0x5e61000
02c074a4  add x1,sp,#0x24
02c074a8  ldr x23,[x23, #0xf18]
02c074ac  ldr w8,[x8, #0x20]
02c074b0  ldr x0,[x24, #0x48]
02c074b4  ldr x22,[x20, #0x40]
02c074b8  str w8,[sp, #0x24]
02c074bc  bl 0x029f5bd8
02c074c0  ldr x8,[x23]
02c074c4  mov x1,x0
02c074c8  mov x2,xzr
02c074cc  mov x0,x8
02c074d0  bl 0x046b6c0c
02c074d4  cbz x22,0x02c07730
02c074d8  ldr x8,[x22]
02c074dc  mov x1,x0
02c074e0  mov x0,x22
02c074e4  ldr x9,[x8, #0x558]
02c074e8  ldr x2,[x8, #0x560]
02c074ec  blr x9
02c074f0  ldr x8,[x21, #0x108]
02c074f4  cbz x8,0x02c07730
02c074f8  ldr w9,[x8, #0x18]
02c074fc  tst w9,#0xfffffffe
02c07500  b.eq 0x02c07734
02c07504  ldr w8,[x8, #0x24]
02c07508  ldr x0,[x24, #0x48]
02c0750c  add x1,sp,#0x20
02c07510  ldr x22,[x20, #0x48]
02c07514  str w8,[sp, #0x20]
02c07518  bl 0x029f5bd8
02c0751c  ldr x8,[x23]
02c07520  mov x1,x0
02c07524  mov x2,xzr
02c07528  mov x0,x8
02c0752c  bl 0x046b6c0c
02c07530  cbz x22,0x02c07730
02c07534  ldr x8,[x22]
02c07538  mov x1,x0
02c0753c  mov x0,x22
02c07540  ldr x9,[x8, #0x558]
02c07544  ldr x2,[x8, #0x560]
02c07548  blr x9
02c0754c  ldr x8,[x21, #0x108]
02c07550  cbz x8,0x02c07730
02c07554  ldr w9,[x8, #0x18]
02c07558  cmp w9,#0x2
02c0755c  b.ls 0x02c07734
02c07560  ldr w8,[x8, #0x28]
02c07564  ldr x0,[x24, #0x48]
02c07568  add x1,sp,#0x1c
02c0756c  ldr x21,[x20, #0x50]
02c07570  str w8,[sp, #0x1c]
02c07574  bl 0x029f5bd8
02c07578  ldr x8,[x23]
02c0757c  mov x1,x0
02c07580  mov x2,xzr
02c07584  mov x0,x8
02c07588  bl 0x046b6c0c
02c0758c  cbz x21,0x02c07730
02c07590  ldr x8,[x21]
02c07594  mov x1,x0
02c07598  mov x0,x21
02c0759c  ldr x9,[x8, #0x558]
02c075a0  ldr x2,[x8, #0x560]
02c075a4  blr x9
02c075a8  ldr w8,[x19, #0x90]
02c075ac  ldr x0,[x24, #0x48]
02c075b0  add x1,sp,#0x18
02c075b4  ldr x21,[x20, #0x58]
02c075b8  add w8,w8,#0x1
02c075bc  str w8,[sp, #0x18]
02c075c0  bl 0x029f5bd8
02c075c4  ldr w8,[x19, #0x94]
02c075c8  mov x22,x0
02c075cc  ldr x0,[x24, #0x48]
02c075d0  add x1,sp,#0x14
02c075d4  add w8,w8,#0x1
02c075d8  str w8,[sp, #0x14]
02c075dc  bl 0x029f5bd8
02c075e0  ldr x8,[x25]
02c075e4  mov x2,x0
02c075e8  mov x1,x22
02c075ec  mov x3,xzr
02c075f0  mov x0,x8
02c075f4  bl 0x046c1d14
02c075f8  cbz x21,0x02c07730
02c075fc  ldr x8,[x21]
02c07600  mov x1,x0
02c07604  mov x0,x21
02c07608  ldr x9,[x8, #0x558]
02c0760c  ldr x2,[x8, #0x560]
02c07610  blr x9
02c07614  ldr x21,[x20, #0x60]
02c07618  add x0,x19,#0x38
02c0761c  mov x1,xzr
02c07620  bl 0x0465bddc
02c07624  cbz x21,0x02c07730
02c07628  ldr x8,[x21]
02c0762c  mov x1,x0
02c07630  mov x0,x21
02c07634  ldr x9,[x8, #0x558]
02c07638  ldr x2,[x8, #0x560]
02c0763c  blr x9
02c07640  ldr w8,[x19, #0x78]
02c07644  ldr x0,[x24, #0x48]
02c07648  add x1,sp,#0x10
02c0764c  ldr x21,[x20, #0x68]
02c07650  str w8,[sp, #0x10]
02c07654  bl 0x029f5bd8
02c07658  ldr x8,[x23]
02c0765c  mov x1,x0
02c07660  mov x2,xzr
02c07664  mov x0,x8
02c07668  bl 0x046b6c0c
02c0766c  cbz x21,0x02c07730
02c07670  ldr x8,[x21]
02c07674  mov x1,x0
02c07678  mov x0,x21
02c0767c  ldr x9,[x8, #0x558]
02c07680  ldr x2,[x8, #0x560]
02c07684  blr x9
02c07688  ldr w8,[x19, #0x7c]
02c0768c  ldr x0,[x24, #0x48]
02c07690  add x1,sp,#0xc
02c07694  ldr x21,[x20, #0x70]
02c07698  str w8,[sp, #0xc]
02c0769c  bl 0x029f5bd8
02c076a0  ldr x8,[x23]
02c076a4  mov x1,x0
02c076a8  mov x2,xzr
02c076ac  mov x0,x8
02c076b0  bl 0x046b6c0c
02c076b4  cbz x21,0x02c07730
02c076b8  ldr x8,[x21]
02c076bc  mov x1,x0
02c076c0  mov x0,x21
02c076c4  ldr x9,[x8, #0x558]
02c076c8  ldr x2,[x8, #0x560]
02c076cc  blr x9
02c076d0  ldr w8,[x19, #0x80]
02c076d4  ldr x0,[x24, #0x48]
02c076d8  add x1,sp,#0x8
02c076dc  ldr x19,[x20, #0x78]
02c076e0  str w8,[sp, #0x8]
02c076e4  bl 0x029f5bd8
02c076e8  ldr x8,[x23]
02c076ec  mov x1,x0
02c076f0  mov x2,xzr
02c076f4  mov x0,x8
02c076f8  bl 0x046b6c0c
02c076fc  cbz x19,0x02c07730
02c07700  ldr x8,[x19]
02c07704  mov x1,x0
02c07708  mov x0,x19
02c0770c  ldr x9,[x8, #0x558]
02c07710  ldr x2,[x8, #0x560]
02c07714  blr x9
02c07718  ldp x20,x19,[sp, #0x60]
02c0771c  ldp x22,x21,[sp, #0x50]
02c07720  ldp x24,x23,[sp, #0x40]
02c07724  ldp x30,x25,[sp, #0x30]
02c07728  add sp,sp,#0x70
02c0772c  ret
02c07730  bl 0x029f5cfc
02c07734  bl 0x029f5d04
