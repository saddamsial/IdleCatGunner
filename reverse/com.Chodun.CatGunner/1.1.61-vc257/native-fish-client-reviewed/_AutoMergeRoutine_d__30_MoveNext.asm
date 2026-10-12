02c64440  stp d11,d10,[sp, #-0x50]!
02c64444  stp d9,d8,[sp, #0x10]
02c64448  stp x30,x23,[sp, #0x20]
02c6444c  stp x22,x21,[sp, #0x30]
02c64450  stp x20,x19,[sp, #0x40]
02c64454  adrp x20,0x625c000
02c64458  mov x19,x0
02c6445c  ldrb w8,[x20, #0x243]
02c64460  tbnz w8,#0x0,0x02c64490
02c64464  adrp x0,0x5e5d000
02c64468  ldr x0,[x0, #0xd38]
02c6446c  bl 0x029f5a50
02c64470  adrp x0,0x5e59000
02c64474  ldr x0,[x0, #0x1c0]
02c64478  bl 0x029f5a50
02c6447c  adrp x0,0x5e5b000
02c64480  ldr x0,[x0, #0xed0]
02c64484  bl 0x029f5a50
02c64488  mov w8,#0x1
02c6448c  strb w8,[x20, #0x243]
02c64490  adrp x22,0x5e59000
02c64494  adrp x23,0x5e5d000
02c64498  mov w0,wzr
02c6449c  ldr x22,[x22, #0x1c0]
02c644a0  ldr w8,[x19, #0x10]
02c644a4  ldr x23,[x23, #0xd38]
02c644a8  ldr x20,[x19, #0x20]
02c644ac  cmp w8,#0x2
02c644b0  b.gt 0x02c644d4
02c644b4  cbz w8,0x02c6450c
02c644b8  cmp w8,#0x1
02c644bc  b.eq 0x02c644c8
02c644c0  cmp w8,#0x2
02c644c4  b.ne 0x02c648a4
02c644c8  mov w8,#0xffffffff
02c644cc  str w8,[x19, #0x10]
02c644d0  b 0x02c64530
02c644d4  sub w9,w8,#0x3
02c644d8  cmp w9,#0x2
02c644dc  b.cs 0x02c644f8
02c644e0  mov w8,#0xffffffff
02c644e4  str w8,[x19, #0x10]
02c644e8  cbz x20,0x02c648bc
02c644ec  ldr x1,[x19, #0x28]
02c644f0  ldr w2,[x19, #0x48]
02c644f4  b 0x02c64604
02c644f8  cmp w8,#0x5
02c644fc  b.ne 0x02c648a4
02c64500  mov w8,#0xffffffff
02c64504  str w8,[x19, #0x10]
02c64508  b 0x02c647d8
02c6450c  str xzr,[x19, #0x18]!
02c64510  mov w8,#0xffffffff
02c64514  mov x0,x19
02c64518  mov x1,xzr
02c6451c  stur w8,[x19, #-0x8]
02c64520  bl 0x029f59f4
02c64524  mov w0,#0x1
02c64528  stur w0,[x19, #-0x8]
02c6452c  b 0x02c648a4
02c64530  ldr x8,[x23]
02c64534  ldr x0,[x22]
02c64538  ldr x8,[x8, #0xb8]
02c6453c  ldr w9,[x0, #0xe4]
02c64540  ldr x21,[x8]
02c64544  cbnz w9,0x02c6454c
02c64548  bl 0x029f5bd0
02c6454c  mov x0,x21
02c64550  mov x1,xzr
02c64554  mov x2,xzr
02c64558  bl 0x057dfa70
02c6455c  tbz w0,#0x0,0x02c64804
02c64560  ldr x8,[x23]
02c64564  ldr x8,[x8, #0xb8]
02c64568  ldr x21,[x8]
02c6456c  cbz x21,0x02c648bc
02c64570  bl 0x02c5e1e0
02c64574  tbz w0,#0x0,0x02c64804
02c64578  ldrb w8,[x21, #0xb0]
02c6457c  cbz w8,0x02c64804
02c64580  cbz x20,0x02c648bc
02c64584  mov x0,x20
02c64588  bl 0x02c63e10
02c6458c  tbnz w0,#0x0,0x02c64858
02c64590  add x1,x19,#0x28
02c64594  add x2,x19,#0x30
02c64598  mov x0,x20
02c6459c  bl 0x02c63f94
02c645a0  tbz w0,#0x0,0x02c64808
02c645a4  ldur x0,[x19, #0x30]
02c645a8  cbz x0,0x02c648bc
02c645ac  mov w1,wzr
02c645b0  bl 0x02c615e0
02c645b4  ldur x0,[x19, #0x28]
02c645b8  cbz x0,0x02c648bc
02c645bc  mov w1,#0x1
02c645c0  bl 0x02c615e0
02c645c4  ldur x0,[x19, #0x28]
02c645c8  cbz x0,0x02c648bc
02c645cc  bl 0x02c6285c
02c645d0  ldr x0,[x19, #0x30]
02c645d4  stp s0,s1,[x19, #0x38]
02c645d8  cbz x0,0x02c648bc
02c645dc  bl 0x02c6285c
02c645e0  ldr x0,[x19, #0x28]
02c645e4  stp s0,s1,[x19, #0x40]
02c645e8  cbz x0,0x02c648bc
02c645ec  bl 0x02c616f4
02c645f0  ldur x1,[x19, #0x28]
02c645f4  cbz x1,0x02c648bc
02c645f8  ldr w2,[x1, #0x40]
02c645fc  strb wzr,[x19, #0x50]
02c64600  stp w2,wzr,[x19, #0x48]
02c64604  bl 0x02c63e78
02c64608  tbz w0,#0x0,0x02c6474c
02c6460c  ldr x1,[x19, #0x30]
02c64610  ldr w2,[x19, #0x48]
02c64614  bl 0x02c63e78
02c64618  tbz w0,#0x0,0x02c6474c
02c6461c  ldr s8,[x19, #0x4c]
02c64620  mov x0,xzr
02c64624  bl 0x057ebb34
02c64628  fadd s0,s8,s0
02c6462c  ldr x0,[x19, #0x28]
02c64630  str s0,[x19, #0x4c]
02c64634  cbz x0,0x02c648bc
02c64638  ldr s1,[x20, #0x30]
02c6463c  fmov s8,0x3f800000
02c64640  movi d2,#0x0
02c64644  fmov s3,0x40400000
02c64648  fdiv s0,s0,s1
02c6464c  fcmp s0,s8
02c64650  fcsel s1,s8,s0,gt
02c64654  fcmp s0,#0.0
02c64658  fcsel s0,s2,s1,mi
02c6465c  fcmp s0,#0.0
02c64660  fcsel s0,s2,s0,mi
02c64664  fadd s1,s0,s0
02c64668  fmul s3,s0,s3
02c6466c  fmul s1,s0,s1
02c64670  fmul s3,s0,s3
02c64674  fmul s0,s0,s1
02c64678  fsub s0,s3,s0
02c6467c  fsub s1,s8,s0
02c64680  fmul s1,s1,s2
02c64684  fadd s9,s0,s1
02c64688  ldp d1,d3,[x19, #0x38]
02c6468c  fcmp s9,s8
02c64690  fcsel s0,s8,s9,gt
02c64694  fcmp s9,#0.0
02c64698  fcsel s0,s2,s0,mi
02c6469c  fsub v2.2S,v3.2S,v1.2S
02c646a0  fmul v0.2S,v2.2S,v0.S[0x0]
02c646a4  fadd v0.2S,v1.2S,v0.2S
02c646a8  dup s1,v0.S[0x1]
02c646ac  bl 0x02c6298c
02c646b0  fcmp s9,s8
02c646b4  b.ge 0x02c6472c
02c646b8  ldr x0,[x19, #0x28]
02c646bc  cbz x0,0x02c648bc
02c646c0  bl 0x02c6285c
02c646c4  fmov s8,s0
02c646c8  fmov s9,s1
02c646cc  adrp x21,0x625c000
02c646d0  ldp s10,s11,[x19, #0x40]
02c646d4  ldrb w8,[x21, #0x2a2]
02c646d8  cbnz w8,0x02c646f0
02c646dc  adrp x0,0x5e59000
02c646e0  ldr x0,[x0]
02c646e4  bl 0x029f5a50
02c646e8  mov w8,#0x1
02c646ec  strb w8,[x21, #0x2a2]
02c646f0  adrp x8,0x5e59000
02c646f4  ldr x8,[x8]
02c646f8  ldr x0,[x8]
02c646fc  ldr w8,[x0, #0xe4]
02c64700  cbnz w8,0x02c64708
02c64704  bl 0x029f5bd0
02c64708  fsub s0,s9,s11
02c6470c  fsub s1,s8,s10
02c64710  fmul s1,s1,s1
02c64714  fmul s0,s0,s0
02c64718  fadd s0,s1,s0
02c6471c  ldr s1,[x20, #0x34]
02c64720  fsqrt s0,s0
02c64724  fcmp s0,s1
02c64728  b.hi 0x02c64888
02c6472c  mov x0,x20
02c64730  bl 0x02c63e10
02c64734  tbnz w0,#0x0,0x02c64870
02c64738  ldp x1,x2,[x19, #0x28]
02c6473c  mov x0,x20
02c64740  bl 0x02c637bc
02c64744  and w8,w0,#0x1
02c64748  strb w8,[x19, #0x50]
02c6474c  ldrb w8,[x19, #0x50]
02c64750  cbnz w8,0x02c647cc
02c64754  ldr x0,[x22]
02c64758  ldr x21,[x19, #0x28]
02c6475c  ldr w8,[x0, #0xe4]
02c64760  cbnz w8,0x02c64768
02c64764  bl 0x029f5bd0
02c64768  mov x0,x21
02c6476c  mov x1,xzr
02c64770  mov x2,xzr
02c64774  bl 0x057dfa70
02c64778  tbz w0,#0x0,0x02c64790
02c6477c  ldr x0,[x19, #0x28]
02c64780  cbz x0,0x02c648bc
02c64784  ldrb w8,[x0, #0x86]
02c64788  cbz w8,0x02c64790
02c6478c  bl 0x02c61024
02c64790  ldr x0,[x22]
02c64794  ldr x21,[x19, #0x30]
02c64798  ldr w8,[x0, #0xe4]
02c6479c  cbnz w8,0x02c647a4
02c647a0  bl 0x029f5bd0
02c647a4  mov x0,x21
02c647a8  mov x1,xzr
02c647ac  mov x2,xzr
02c647b0  bl 0x057dfa70
02c647b4  tbz w0,#0x0,0x02c647cc
02c647b8  ldr x0,[x19, #0x30]
02c647bc  cbz x0,0x02c648bc
02c647c0  ldrb w8,[x0, #0x86]
02c647c4  cbz w8,0x02c647cc
02c647c8  bl 0x02c61024
02c647cc  ldr s8,[x20, #0x38]
02c647d0  fcmp s8,#0.0
02c647d4  b.gt 0x02c64820
02c647d8  mov x0,x19
02c647dc  mov x1,xzr
02c647e0  str xzr,[x0, #0x28]!
02c647e4  bl 0x029f59f4
02c647e8  mov x21,x19
02c647ec  mov x1,xzr
02c647f0  str xzr,[x21, #0x30]!
02c647f4  mov x0,x21
02c647f8  bl 0x029f59f4
02c647fc  stp xzr,xzr,[x21, #0x8]
02c64800  b 0x02c64530
02c64804  cbz x20,0x02c648bc
02c64808  str xzr,[x20, #0x58]!
02c6480c  mov x0,x20
02c64810  mov x1,xzr
02c64814  bl 0x029f59f4
02c64818  mov w0,wzr
02c6481c  b 0x02c648a4
02c64820  adrp x8,0x5e5b000
02c64824  ldr x8,[x8, #0xed0]
02c64828  ldr x0,[x8]
02c6482c  bl 0x029f5cec
02c64830  fmov s0,s8
02c64834  mov x1,xzr
02c64838  mov x20,x0
02c6483c  bl 0x057e85dc
02c64840  str x20,[x19, #0x18]!
02c64844  mov x0,x19
02c64848  mov x1,x20
02c6484c  bl 0x029f59f4
02c64850  mov w8,#0x5
02c64854  b 0x02c6489c
02c64858  str xzr,[x19, #0x18]!
02c6485c  mov x0,x19
02c64860  mov x1,xzr
02c64864  bl 0x029f59f4
02c64868  mov w8,#0x2
02c6486c  b 0x02c6489c
02c64870  str xzr,[x19, #0x18]!
02c64874  mov x0,x19
02c64878  mov x1,xzr
02c6487c  bl 0x029f59f4
02c64880  mov w8,#0x3
02c64884  b 0x02c6489c
02c64888  str xzr,[x19, #0x18]!
02c6488c  mov x0,x19
02c64890  mov x1,xzr
02c64894  bl 0x029f59f4
02c64898  mov w8,#0x4
02c6489c  stur w8,[x19, #-0x8]
02c648a0  mov w0,#0x1
02c648a4  ldp x20,x19,[sp, #0x40]
02c648a8  ldp x22,x21,[sp, #0x30]
02c648ac  ldp x30,x23,[sp, #0x20]
02c648b0  ldp d9,d8,[sp, #0x10]
02c648b4  ldp d11,d10,[sp], #0x50
02c648b8  ret
02c648bc  bl 0x029f5cfc
