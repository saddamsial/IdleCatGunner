02c46618  sub sp,sp,#0xa0
02c4661c  stp x30,x23,[sp, #0x70]
02c46620  stp x22,x21,[sp, #0x80]
02c46624  stp x20,x19,[sp, #0x90]
02c46628  adrp x20,0x625c000
02c4662c  adrp x23,0x5e5d000
02c46630  mov x19,x0
02c46634  ldrb w8,[x20, #0xe2]
02c46638  ldr x23,[x23, #0x338]
02c4663c  tbnz w8,#0x0,0x02c46684
02c46640  adrp x0,0x5e5d000
02c46644  ldr x0,[x0, #0xd30]
02c46648  bl 0x029f5a50
02c4664c  adrp x0,0x5e5d000
02c46650  ldr x0,[x0, #0x338]
02c46654  bl 0x029f5a50
02c46658  adrp x0,0x5e5e000
02c4665c  ldr x0,[x0, #0xb8]
02c46660  bl 0x029f5a50
02c46664  adrp x0,0x5e5d000
02c46668  ldr x0,[x0, #0x498]
02c4666c  bl 0x029f5a50
02c46670  adrp x0,0x5e5d000
02c46674  ldr x0,[x0, #0x920]
02c46678  bl 0x029f5a50
02c4667c  mov w8,#0x1
02c46680  strb w8,[x20, #0xe2]
02c46684  ldr x0,[x23]
02c46688  str wzr,[sp, #0x6c]
02c4668c  ldr w8,[x0, #0xe4]
02c46690  cbnz w8,0x02c4669c
02c46694  bl 0x029f5bd0
02c46698  ldr x0,[x23]
02c4669c  ldr x8,[x0, #0xb8]
02c466a0  ldrb w9,[x8]
02c466a4  cbz w9,0x02c46914
02c466a8  ldr w9,[x0, #0xe4]
02c466ac  cbnz w9,0x02c466bc
02c466b0  bl 0x029f5bd0
02c466b4  ldr x8,[x23]
02c466b8  ldr x8,[x8, #0xb8]
02c466bc  strb wzr,[x8]
02c466c0  mov w8,#0x1
02c466c4  ldr x20,[x19, #0xa0]
02c466c8  strb w8,[x19, #0x7d]
02c466cc  add x8,sp,#0x48
02c466d0  mov w0,wzr
02c466d4  mov x1,xzr
02c466d8  bl 0x046544b8
02c466dc  ldr x8,[x19, #0x110]
02c466e0  cbz x8,0x02c46928
02c466e4  ldr x8,[x8, #0x20]
02c466e8  cbz x8,0x02c46928
02c466ec  cbz x20,0x02c46928
02c466f0  adrp x22,0x5e5d000
02c466f4  ldur q0,[sp, #0x48]
02c466f8  adrp x21,0x5e5e000
02c466fc  ldr x22,[x22, #0xd30]
02c46700  ldur q1,[sp, #0x58]
02c46704  ldur q2,[x8, #0x48]
02c46708  add x1,sp,#0x20
02c4670c  mov x2,sp
02c46710  mov x0,x20
02c46714  stp q0,q1,[sp, #0x20]
02c46718  ldur q0,[x8, #0x58]
02c4671c  ldr x21,[x21, #0xb8]
02c46720  stp q2,q0,[sp]
02c46724  bl 0x02c4692c
02c46728  mov x0,x19
02c4672c  mov w1,#0x1
02c46730  bl 0x02c45dc4
02c46734  ldr x0,[x22]
02c46738  ldr w8,[x19, #0x20]
02c4673c  ldr w9,[x0, #0xe4]
02c46740  add w8,w8,#0x1
02c46744  str w8,[x19, #0x20]
02c46748  cbnz w9,0x02c46754
02c4674c  bl 0x029f5bd0
02c46750  ldr x0,[x22]
02c46754  ldr x8,[x21]
02c46758  ldr x9,[x0, #0xb8]
02c4675c  adrp x20,0x5e5d000
02c46760  ldr w10,[x8, #0xe4]
02c46764  ldr x20,[x20, #0x920]
02c46768  ldr w21,[x9]
02c4676c  cbnz w10,0x02c46778
02c46770  mov x0,x8
02c46774  bl 0x029f5bd0
02c46778  mov x0,xzr
02c4677c  bl 0x02c908b0
02c46780  scvtf s1,w21
02c46784  mov w8,#0x7f800000
02c46788  ldr x0,[x20]
02c4678c  mov x20,x19
02c46790  fmul s0,s0,s1
02c46794  fmov s1,w8
02c46798  mov w8,#0x80000000
02c4679c  fcvtzs w9,s0
02c467a0  fcmp s0,s1
02c467a4  csel w8,w8,w9,eq
02c467a8  ldr w9,[x0, #0xe4]
02c467ac  add w22,w8,w8, LSL #0x1
02c467b0  str w8,[x20, #0xd0]!
02c467b4  str w22,[sp, #0x6c]
02c467b8  cbnz w9,0x02c467c0
02c467bc  bl 0x029f5bd0
02c467c0  mov x0,xzr
02c467c4  bl 0x02c92704
02c467c8  mov w21,w0
02c467cc  tbz w0,#0x0,0x02c467d8
02c467d0  ldr x0,[x23]
02c467d4  b 0x02c467e0
02c467d8  ldr x0,[x23]
02c467dc  ldr w22,[x20]
02c467e0  ldr w8,[x0, #0xe4]
02c467e4  cbnz w8,0x02c467ec
02c467e8  bl 0x029f5bd0
02c467ec  mov w0,w22
02c467f0  mov x1,xzr
02c467f4  bl 0x02b7ed10
02c467f8  ldr x0,[x19, #0xb8]
02c467fc  cbz x0,0x02c46928
02c46800  eor w22,w21,#0x1
02c46804  mov x2,xzr
02c46808  and w1,w22,#0x1
02c4680c  bl 0x057dff3c
02c46810  ldr x0,[x19, #0xa8]
02c46814  cbz x0,0x02c46928
02c46818  and w1,w22,#0x1
02c4681c  mov x2,xzr
02c46820  bl 0x057dff3c
02c46824  ldr x0,[x19, #0xb0]
02c46828  cbz x0,0x02c46928
02c4682c  and w1,w21,#0x1
02c46830  mov x2,xzr
02c46834  bl 0x057dff3c
02c46838  adrp x21,0x625b000
02c4683c  ldrb w8,[x21, #0xa57]
02c46840  cbnz w8,0x02c46858
02c46844  adrp x0,0x5e5d000
02c46848  ldr x0,[x0, #0xd70]
02c4684c  bl 0x029f5a50
02c46850  mov w8,#0x1
02c46854  strb w8,[x21, #0xa57]
02c46858  adrp x8,0x5e5d000
02c4685c  ldr x8,[x8, #0xd70]
02c46860  ldr x8,[x8]
02c46864  ldr x8,[x8, #0xb8]
02c46868  ldr x0,[x8]
02c4686c  cbz x0,0x02c46928
02c46870  fmov s0,0x3f800000
02c46874  adrp x21,0x5e5d000
02c46878  mov w1,#0xb
02c4687c  ldr x21,[x21, #0x498]
02c46880  mov x2,xzr
02c46884  mov x3,xzr
02c46888  bl 0x02c1f10c
02c4688c  ldr x8,[x21]
02c46890  ldr x8,[x8, #0xb8]
02c46894  ldr x0,[x8]
02c46898  cbz x0,0x02c46928
02c4689c  ldr w1,[x19, #0x20]
02c468a0  mov x2,xzr
02c468a4  bl 0x02c0ce00
02c468a8  ldr x21,[x19, #0xc0]
02c468ac  mov x0,x20
02c468b0  mov x1,xzr
02c468b4  bl 0x0484e6a4
02c468b8  cbz x21,0x02c46928
02c468bc  ldr x8,[x21]
02c468c0  mov x1,x0
02c468c4  mov x0,x21
02c468c8  ldr x9,[x8, #0x558]
02c468cc  ldr x2,[x8, #0x560]
02c468d0  blr x9
02c468d4  ldr x20,[x19, #0xc8]
02c468d8  add x0,sp,#0x6c
02c468dc  mov x1,xzr
02c468e0  bl 0x0484e6a4
02c468e4  cbz x20,0x02c46928
02c468e8  ldr x8,[x20]
02c468ec  mov x1,x0
02c468f0  mov x0,x20
02c468f4  ldr x9,[x8, #0x558]
02c468f8  ldr x2,[x8, #0x560]
02c468fc  blr x9
02c46900  ldr x0,[x19, #0x28]
02c46904  cbz x0,0x02c46928
02c46908  mov w1,#0x1
02c4690c  mov x2,xzr
02c46910  bl 0x057dff3c
02c46914  ldp x20,x19,[sp, #0x90]
02c46918  ldp x22,x21,[sp, #0x80]
02c4691c  ldp x30,x23,[sp, #0x70]
02c46920  add sp,sp,#0xa0
02c46924  ret
02c46928  bl 0x029f5cfc
