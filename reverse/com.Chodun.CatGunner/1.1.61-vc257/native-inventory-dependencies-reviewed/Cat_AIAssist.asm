02c405f0  str d14,[sp, #-0x70]!
02c405f4  stp d13,d12,[sp, #0x10]
02c405f8  stp d11,d10,[sp, #0x20]
02c405fc  stp d9,d8,[sp, #0x30]
02c40600  stp x30,x23,[sp, #0x40]
02c40604  stp x22,x21,[sp, #0x50]
02c40608  stp x20,x19,[sp, #0x60]
02c4060c  adrp x21,0x625c000
02c40610  mov x20,x1
02c40614  mov x19,x0
02c40618  ldrb w8,[x21, #0xa2]
02c4061c  tbnz w8,#0x0,0x02c40634
02c40620  adrp x0,0x5e59000
02c40624  ldr x0,[x0, #0x1c0]
02c40628  bl 0x029f5a50
02c4062c  mov w8,#0x1
02c40630  strb w8,[x21, #0xa2]
02c40634  cbz x20,0x02c40918
02c40638  adrp x8,0x5e59000
02c4063c  ldr x8,[x8, #0x1c0]
02c40640  ldr x21,[x20, #0x1e0]
02c40644  ldr x0,[x8]
02c40648  ldr w8,[x0, #0xe4]
02c4064c  cbnz w8,0x02c40654
02c40650  bl 0x029f5bd0
02c40654  mov x0,x21
02c40658  mov x1,xzr
02c4065c  mov x2,xzr
02c40660  bl 0x057e14b4
02c40664  tbnz w0,#0x0,0x02c408c4
02c40668  cbz x21,0x02c40918
02c4066c  mov x0,x21
02c40670  mov x1,xzr
02c40674  bl 0x057dc0f8
02c40678  cbz x0,0x02c40918
02c4067c  mov x1,xzr
02c40680  bl 0x057eed98
02c40684  ldr s3,[x19, #0x150]
02c40688  mov x0,x19
02c4068c  bl 0x02c4091c
02c40690  mov x0,x20
02c40694  mov x1,xzr
02c40698  fmov s10,s0
02c4069c  fmov s9,s1
02c406a0  fmov s8,s2
02c406a4  bl 0x057dc0f8
02c406a8  cbz x0,0x02c40918
02c406ac  mov x1,xzr
02c406b0  bl 0x057eed98
02c406b4  fmov s11,s0
02c406b8  fmov s12,s1
02c406bc  adrp x21,0x625c000
02c406c0  fmov s13,s2
02c406c4  ldrb w8,[x21, #0xbe]
02c406c8  cbnz w8,0x02c406e0
02c406cc  adrp x0,0x5e59000
02c406d0  ldr x0,[x0]
02c406d4  bl 0x029f5a50
02c406d8  mov w8,#0x1
02c406dc  strb w8,[x21, #0xbe]
02c406e0  adrp x22,0x5e59000
02c406e4  ldr x22,[x22]
02c406e8  ldr x0,[x22]
02c406ec  ldr w8,[x0, #0xe4]
02c406f0  cbnz w8,0x02c406f8
02c406f4  bl 0x029f5bd0
02c406f8  fsub s0,s9,s12
02c406fc  fsub s1,s10,s11
02c40700  adrp x8,0x116b000
02c40704  fsub s2,s8,s13
02c40708  ldr s14,[x8, #0xf90]
02c4070c  fmul s1,s1,s1
02c40710  fmul s0,s0,s0
02c40714  fadd s0,s1,s0
02c40718  fmul s1,s2,s2
02c4071c  fadd s0,s1,s0
02c40720  ldr s1,[x19, #0x1c0]
02c40724  fmul s1,s1,s14
02c40728  fsqrt s0,s0
02c4072c  fcmp s0,s1
02c40730  b.le 0x02c40844
02c40734  mov x0,x20
02c40738  mov x1,xzr
02c4073c  bl 0x057dc0f8
02c40740  cbz x0,0x02c40918
02c40744  mov x1,xzr
02c40748  bl 0x057eed98
02c4074c  fmov s11,s0
02c40750  fmov s12,s1
02c40754  adrp x23,0x625b000
02c40758  fmov s13,s2
02c4075c  ldrb w8,[x23, #0x52e]
02c40760  cbnz w8,0x02c40778
02c40764  adrp x0,0x5e59000
02c40768  ldr x0,[x0]
02c4076c  bl 0x029f5a50
02c40770  mov w8,#0x1
02c40774  strb w8,[x23, #0x52e]
02c40778  ldr x0,[x22]
02c4077c  fsub s10,s10,s11
02c40780  fsub s9,s9,s12
02c40784  fsub s11,s8,s13
02c40788  ldr w8,[x0, #0xe4]
02c4078c  cbnz w8,0x02c40794
02c40790  bl 0x029f5bd0
02c40794  fmul s0,s10,s10
02c40798  fmul s1,s9,s9
02c4079c  adrp x8,0x116c000
02c407a0  fadd s0,s0,s1
02c407a4  fmul s1,s11,s11
02c407a8  fadd s0,s1,s0
02c407ac  ldr s1,[x8, #0x240]
02c407b0  fsqrt s0,s0
02c407b4  fcmp s0,s1
02c407b8  b.le 0x02c407cc
02c407bc  fdiv s8,s10,s0
02c407c0  fdiv s9,s9,s0
02c407c4  fdiv s10,s11,s0
02c407c8  b 0x02c40804
02c407cc  adrp x23,0x625b000
02c407d0  ldrb w8,[x23, #0x26f]
02c407d4  cbnz w8,0x02c407ec
02c407d8  adrp x0,0x5e58000
02c407dc  ldr x0,[x0, #0xbf8]
02c407e0  bl 0x029f5a50
02c407e4  mov w8,#0x1
02c407e8  strb w8,[x23, #0x26f]
02c407ec  adrp x8,0x5e58000
02c407f0  ldr x8,[x8, #0xbf8]
02c407f4  ldr x8,[x8]
02c407f8  ldr x8,[x8, #0xb8]
02c407fc  ldp s8,s9,[x8]
02c40800  ldr s10,[x8, #0x8]
02c40804  mov x0,x20
02c40808  mov x1,xzr
02c4080c  bl 0x057dc0f8
02c40810  cbz x0,0x02c40918
02c40814  mov x1,xzr
02c40818  bl 0x057eed98
02c4081c  ldr s3,[x19, #0x1c0]
02c40820  fmul s4,s8,s3
02c40824  fmul s5,s9,s3
02c40828  fmul s3,s10,s3
02c4082c  fmul s4,s4,s14
02c40830  fmul s5,s5,s14
02c40834  fmul s3,s3,s14
02c40838  fadd s10,s0,s4
02c4083c  fadd s9,s1,s5
02c40840  fadd s8,s2,s3
02c40844  mov x0,x19
02c40848  mov x1,xzr
02c4084c  bl 0x057dc0f8
02c40850  cbz x0,0x02c40918
02c40854  mov x1,xzr
02c40858  bl 0x057eed98
02c4085c  fmov s11,s0
02c40860  fmov s12,s1
02c40864  ldrb w8,[x21, #0xbe]
02c40868  fmov s13,s2
02c4086c  cbnz w8,0x02c40884
02c40870  adrp x0,0x5e59000
02c40874  ldr x0,[x0]
02c40878  bl 0x029f5a50
02c4087c  mov w8,#0x1
02c40880  strb w8,[x21, #0xbe]
02c40884  ldr x0,[x22]
02c40888  ldr w8,[x0, #0xe4]
02c4088c  cbnz w8,0x02c40894
02c40890  bl 0x029f5bd0
02c40894  fsub s0,s12,s9
02c40898  fsub s1,s11,s10
02c4089c  fsub s2,s13,s8
02c408a0  fmul s1,s1,s1
02c408a4  fmul s0,s0,s0
02c408a8  fadd s0,s1,s0
02c408ac  fmul s1,s2,s2
02c408b0  fadd s0,s1,s0
02c408b4  fmov s1,0x3f000000
02c408b8  fsqrt s0,s0
02c408bc  fcmp s0,s1
02c408c0  b.pl 0x02c408e8
02c408c4  mov x0,x19
02c408c8  ldp x20,x19,[sp, #0x60]
02c408cc  ldp x22,x21,[sp, #0x50]
02c408d0  ldp x30,x23,[sp, #0x40]
02c408d4  ldp d9,d8,[sp, #0x30]
02c408d8  ldp d11,d10,[sp, #0x20]
02c408dc  ldp d13,d12,[sp, #0x10]
02c408e0  ldr d14,[sp], #0x70
02c408e4  b 0x02c3d9a0
02c408e8  mov x0,x19
02c408ec  fmov s0,s10
02c408f0  fmov s1,s9
02c408f4  fmov s2,s8
02c408f8  ldp x20,x19,[sp, #0x60]
02c408fc  ldp x22,x21,[sp, #0x50]
02c40900  ldp x30,x23,[sp, #0x40]
02c40904  ldp d9,d8,[sp, #0x30]
02c40908  ldp d11,d10,[sp, #0x20]
02c4090c  ldp d13,d12,[sp, #0x10]
02c40910  ldr d14,[sp], #0x70
02c40914  b 0x02c3e32c
02c40918  bl 0x029f5cfc
