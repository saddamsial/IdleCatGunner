02c8446c  sub sp,sp,#0xc0
02c84470  stp d11,d10,[sp, #0x40]
02c84474  stp d9,d8,[sp, #0x50]
02c84478  str x30,[sp, #0x60]
02c8447c  stp x28,x27,[sp, #0x70]
02c84480  stp x26,x25,[sp, #0x80]
02c84484  stp x24,x23,[sp, #0x90]
02c84488  stp x22,x21,[sp, #0xa0]
02c8448c  stp x20,x19,[sp, #0xb0]
02c84490  adrp x20,0x625c000
02c84494  mov x19,x0
02c84498  ldrb w8,[x20, #0x36d]
02c8449c  tbnz w8,#0x0,0x02c84508
02c844a0  adrp x0,0x5e5b000
02c844a4  ldr x0,[x0, #0xe98]
02c844a8  bl 0x029f5a50
02c844ac  adrp x0,0x5e63000
02c844b0  ldr x0,[x0, #0xda0]
02c844b4  bl 0x029f5a50
02c844b8  adrp x0,0x5e63000
02c844bc  ldr x0,[x0, #0xda8]
02c844c0  bl 0x029f5a50
02c844c4  adrp x0,0x5e63000
02c844c8  ldr x0,[x0, #0xdb0]
02c844cc  bl 0x029f5a50
02c844d0  adrp x0,0x5e63000
02c844d4  ldr x0,[x0, #0xdb8]
02c844d8  bl 0x029f5a50
02c844dc  adrp x0,0x5e59000
02c844e0  ldr x0,[x0, #0x1c0]
02c844e4  bl 0x029f5a50
02c844e8  adrp x0,0x5e5d000
02c844ec  ldr x0,[x0, #0x4d0]
02c844f0  bl 0x029f5a50
02c844f4  adrp x0,0x5e5b000
02c844f8  ldr x0,[x0, #0xed0]
02c844fc  bl 0x029f5a50
02c84500  mov w8,#0x1
02c84504  strb w8,[x20, #0x36d]
02c84508  adrp x24,0x5e63000
02c8450c  adrp x25,0x5e63000
02c84510  adrp x23,0x5e63000
02c84514  adrp x26,0x5e5b000
02c84518  adrp x27,0x5e5d000
02c8451c  ldr x24,[x24, #0xdb8]
02c84520  ldr x25,[x25, #0xda8]
02c84524  ldr x23,[x23, #0xda0]
02c84528  ldr x26,[x26, #0xe98]
02c8452c  ldr x27,[x27, #0x4d0]
02c84530  str xzr,[sp, #0x68]
02c84534  ldr w8,[x19, #0x10]
02c84538  str xzr,[sp, #0x38]
02c8453c  adrp x28,0x5e59000
02c84540  mov w0,wzr
02c84544  ldr x28,[x28, #0x1c0]
02c84548  ldr x20,[x19, #0x20]
02c8454c  cmp w8,#0x1
02c84550  stp xzr,xzr,[sp, #0x20]
02c84554  str xzr,[sp, #0x30]
02c84558  b.le 0x02c84578
02c8455c  sub w9,w8,#0x2
02c84560  cmp w9,#0x2
02c84564  b.cs 0x02c84590
02c84568  mov w8,#0xffffffff
02c8456c  str w8,[x19, #0x10]
02c84570  cbnz x20,0x02c846cc
02c84574  b 0x02c84988
02c84578  cbz w8,0x02c845a4
02c8457c  cmp w8,#0x1
02c84580  b.ne 0x02c84a18
02c84584  mov w8,#0xffffffff
02c84588  str w8,[x19, #0x10]
02c8458c  b 0x02c845c8
02c84590  cmp w8,#0x4
02c84594  b.ne 0x02c84a18
02c84598  mov w8,#0xffffffff
02c8459c  str w8,[x19, #0x10]
02c845a0  b 0x02c849d4
02c845a4  str xzr,[x19, #0x18]!
02c845a8  mov w8,#0xffffffff
02c845ac  mov x0,x19
02c845b0  mov x1,xzr
02c845b4  stur w8,[x19, #-0x8]
02c845b8  bl 0x029f59f4
02c845bc  mov w0,#0x1
02c845c0  stur w0,[x19, #-0x8]
02c845c4  b 0x02c84a18
02c845c8  ldr x0,[x27]
02c845cc  ldr w8,[x0, #0xe4]
02c845d0  cbnz w8,0x02c845dc
02c845d4  bl 0x029f5bd0
02c845d8  ldr x0,[x27]
02c845dc  ldr x8,[x28]
02c845e0  ldr x9,[x0, #0xb8]
02c845e4  ldr w10,[x8, #0xe4]
02c845e8  ldr x21,[x9, #0x28]
02c845ec  cbnz w10,0x02c845f8
02c845f0  mov x0,x8
02c845f4  bl 0x029f5bd0
02c845f8  mov x0,x21
02c845fc  mov x1,xzr
02c84600  mov x2,xzr
02c84604  bl 0x057dfa70
02c84608  tbz w0,#0x0,0x02c8492c
02c8460c  ldr x0,[x27]
02c84610  ldr w8,[x0, #0xe4]
02c84614  cbnz w8,0x02c84620
02c84618  bl 0x029f5bd0
02c8461c  ldr x0,[x27]
02c84620  ldr x8,[x0, #0xb8]
02c84624  ldr x0,[x8, #0x28]
02c84628  cbz x0,0x02c84988
02c8462c  mov x1,xzr
02c84630  bl 0x02c7d7b8
02c84634  tbz w0,#0x0,0x02c8492c
02c84638  cbz x20,0x02c84988
02c8463c  add x1,sp,#0x68
02c84640  add x2,sp,#0x38
02c84644  mov x0,x20
02c84648  bl 0x02c83e8c
02c8464c  tbz w0,#0x0,0x02c84930
02c84650  ldr x1,[sp, #0x68]
02c84654  ldr x2,[sp, #0x38]
02c84658  mov x0,x20
02c8465c  bl 0x02c83b50
02c84660  ldr q0,[x20, #0x50]
02c84664  ldr x0,[sp, #0x68]
02c84668  stur q0,[x19, #0x28]
02c8466c  cbz x0,0x02c84988
02c84670  mov x1,xzr
02c84674  bl 0x02c7efd8
02c84678  ldr x0,[sp, #0x38]
02c8467c  cbz x0,0x02c84988
02c84680  mov x1,xzr
02c84684  bl 0x02c7efd8
02c84688  ldr x0,[sp, #0x68]
02c8468c  cbz x0,0x02c84988
02c84690  mov x1,xzr
02c84694  bl 0x057dc0f8
02c84698  cbz x0,0x02c84988
02c8469c  mov x1,xzr
02c846a0  bl 0x057f0b34
02c846a4  ldr w1,[x19, #0x28]
02c846a8  mov x0,x20
02c846ac  bl 0x02c82a74
02c846b0  ldr w1,[x19, #0x30]
02c846b4  mov x0,x20
02c846b8  stp s0,s1,[x19, #0x38]
02c846bc  bl 0x02c82a74
02c846c0  str wzr,[x19, #0x48]
02c846c4  stp s0,s1,[x19, #0x40]
02c846c8  strb wzr,[x19, #0x4c]
02c846cc  ldp w1,w2,[x19, #0x28]
02c846d0  add x3,sp,#0x68
02c846d4  mov x0,x20
02c846d8  bl 0x02c83b80
02c846dc  tbz w0,#0x0,0x02c848b8
02c846e0  ldp w1,w2,[x19, #0x30]
02c846e4  add x3,sp,#0x38
02c846e8  mov x0,x20
02c846ec  bl 0x02c83b80
02c846f0  tbz w0,#0x0,0x02c848b8
02c846f4  ldr x0,[sp, #0x68]
02c846f8  cbz x0,0x02c84988
02c846fc  mov x1,xzr
02c84700  bl 0x057dc0f8
02c84704  cbz x0,0x02c84988
02c84708  mov x1,xzr
02c8470c  bl 0x057f0cac
02c84710  ldr x8,[sp, #0x68]
02c84714  cbz x8,0x02c84988
02c84718  mov w21,w0
02c8471c  mov x0,x8
02c84720  mov x1,xzr
02c84724  bl 0x057dc0f8
02c84728  cbz x0,0x02c84988
02c8472c  mov x1,xzr
02c84730  bl 0x057eecc8
02c84734  cbz x0,0x02c84988
02c84738  mov x1,xzr
02c8473c  bl 0x057f09cc
02c84740  sub w8,w0,#0x1
02c84744  cmp w21,w8
02c84748  b.eq 0x02c84768
02c8474c  ldr x0,[sp, #0x68]
02c84750  cbz x0,0x02c84988
02c84754  mov x1,xzr
02c84758  bl 0x057dc0f8
02c8475c  cbz x0,0x02c84988
02c84760  mov x1,xzr
02c84764  bl 0x057f0b34
02c84768  ldr s8,[x19, #0x48]
02c8476c  mov x0,xzr
02c84770  bl 0x057ebb34
02c84774  fadd s0,s8,s0
02c84778  ldr s1,[x20, #0x30]
02c8477c  fmov s8,0x3f800000
02c84780  movi d9,#0x0
02c84784  ldr x0,[sp, #0x68]
02c84788  fdiv s1,s0,s1
02c8478c  str s0,[x19, #0x48]
02c84790  fcmp s1,s8
02c84794  fcsel s2,s8,s1,gt
02c84798  fcmp s1,#0.0
02c8479c  fcsel s1,s9,s2,mi
02c847a0  fcmp s1,#0.0
02c847a4  fcsel s10,s9,s1,mi
02c847a8  cbz x0,0x02c84988
02c847ac  ldr x1,[x26]
02c847b0  bl 0x02fe5f2c
02c847b4  cbz x0,0x02c84988
02c847b8  fadd s0,s10,s10
02c847bc  fmov s1,0x40400000
02c847c0  mov x1,xzr
02c847c4  ldp d2,d3,[x19, #0x38]
02c847c8  mov x21,x0
02c847cc  fmul s1,s10,s1
02c847d0  fmul s0,s10,s0
02c847d4  fmul s1,s10,s1
02c847d8  fmul s0,s10,s0
02c847dc  fsub s0,s1,s0
02c847e0  fsub s1,s8,s0
02c847e4  fmul s1,s1,s9
02c847e8  fmov s9,0x3f800000
02c847ec  fadd s8,s0,s1
02c847f0  movi d1,#0x0
02c847f4  fcmp s8,s9
02c847f8  fcsel s0,s9,s8,gt
02c847fc  fcmp s8,#0.0
02c84800  fcsel s0,s1,s0,mi
02c84804  fsub v1.2S,v3.2S,v2.2S
02c84808  fmul v0.2S,v1.2S,v0.S[0x0]
02c8480c  fadd v0.2S,v2.2S,v0.2S
02c84810  dup s1,v0.S[0x1]
02c84814  bl 0x057edec8
02c84818  fcmp s8,s9
02c8481c  b.ge 0x02c84894
02c84820  mov x0,x21
02c84824  mov x1,xzr
02c84828  bl 0x057eddfc
02c8482c  fmov s8,s0
02c84830  fmov s9,s1
02c84834  adrp x22,0x625c000
02c84838  ldp s10,s11,[x19, #0x40]
02c8483c  ldrb w8,[x22, #0x2a2]
02c84840  cbnz w8,0x02c84858
02c84844  adrp x0,0x5e59000
02c84848  ldr x0,[x0]
02c8484c  bl 0x029f5a50
02c84850  mov w8,#0x1
02c84854  strb w8,[x22, #0x2a2]
02c84858  adrp x8,0x5e59000
02c8485c  ldr x8,[x8]
02c84860  ldr x0,[x8]
02c84864  ldr w8,[x0, #0xe4]
02c84868  cbnz w8,0x02c84870
02c8486c  bl 0x029f5bd0
02c84870  fsub s0,s9,s11
02c84874  fsub s1,s8,s10
02c84878  fmul s1,s1,s1
02c8487c  fmul s0,s0,s0
02c84880  fadd s0,s1,s0
02c84884  ldr s1,[x20, #0x34]
02c84888  fsqrt s0,s0
02c8488c  fcmp s0,s1
02c84890  b.hi 0x02c84970
02c84894  mov x0,x20
02c84898  bl 0x02c83d28
02c8489c  tbnz w0,#0x0,0x02c84948
02c848a0  ldr x1,[sp, #0x68]
02c848a4  ldr x2,[sp, #0x38]
02c848a8  mov x0,x20
02c848ac  bl 0x02c82c7c
02c848b0  mov w8,#0x1
02c848b4  strb w8,[x19, #0x4c]
02c848b8  mov x8,#-0x1
02c848bc  stp x8,x8,[x20, #0x50]
02c848c0  ldrb w8,[x19, #0x4c]
02c848c4  cbnz w8,0x02c849c8
02c848c8  ldr x0,[x20, #0x40]
02c848cc  cbz x0,0x02c84988
02c848d0  ldr x1,[x24]
02c848d4  add x8,sp,#0x8
02c848d8  bl 0x0452d690
02c848dc  ldur q0,[sp, #0x8]
02c848e0  ldr x8,[sp, #0x18]
02c848e4  str q0,[sp, #0x20]
02c848e8  str x8,[sp, #0x30]
02c848ec  ldr x1,[x25]
02c848f0  add x0,sp,#0x20
02c848f4  bl 0x03fa4e10
02c848f8  tbz w0,#0x0,0x02c84918
02c848fc  ldr x0,[sp, #0x30]
02c84900  cbz x0,0x02c84928
02c84904  ldrb w8,[x0, #0x6d]
02c84908  cbz w8,0x02c848ec
02c8490c  mov x1,xzr
02c84910  bl 0x02c7ebc0
02c84914  b 0x02c848ec
02c84918  ldr x1,[x23]
02c8491c  add x0,sp,#0x20
02c84920  bl 0x03fa4e0c
02c84924  b 0x02c849c0
02c84928  bl 0x029f5cfc
02c8492c  cbz x20,0x02c84988
02c84930  str xzr,[x20, #0x48]!
02c84934  mov x0,x20
02c84938  mov x1,xzr
02c8493c  bl 0x029f59f4
02c84940  mov w0,wzr
02c84944  b 0x02c84a18
02c84948  ldp s0,s1,[x19, #0x40]
02c8494c  mov x0,x21
02c84950  mov x1,xzr
02c84954  bl 0x057edec8
02c84958  str xzr,[x19, #0x18]!
02c8495c  mov x0,x19
02c84960  mov x1,xzr
02c84964  bl 0x029f59f4
02c84968  mov w8,#0x2
02c8496c  b 0x02c84a10
02c84970  str xzr,[x19, #0x18]!
02c84974  mov x0,x19
02c84978  mov x1,xzr
02c8497c  bl 0x029f59f4
02c84980  mov w8,#0x3
02c84984  b 0x02c84a10
02c84988  bl 0x029f5cfc
02c849c0  mov x0,x20
02c849c4  bl 0x02c828c0
02c849c8  ldr s8,[x20, #0x38]
02c849cc  fcmp s8,#0.0
02c849d0  b.gt 0x02c849dc
02c849d4  stp xzr,xzr,[x19, #0x38]
02c849d8  b 0x02c845c8
02c849dc  adrp x8,0x5e5b000
02c849e0  ldr x8,[x8, #0xed0]
02c849e4  ldr x0,[x8]
02c849e8  bl 0x029f5cec
02c849ec  fmov s0,s8
02c849f0  mov x1,xzr
02c849f4  mov x20,x0
02c849f8  bl 0x057e85dc
02c849fc  str x20,[x19, #0x18]!
02c84a00  mov x0,x19
02c84a04  mov x1,x20
02c84a08  bl 0x029f59f4
02c84a0c  mov w8,#0x4
02c84a10  stur w8,[x19, #-0x8]
02c84a14  mov w0,#0x1
02c84a18  ldp x20,x19,[sp, #0xb0]
02c84a1c  ldr x30,[sp, #0x60]
02c84a20  ldp x22,x21,[sp, #0xa0]
02c84a24  ldp x24,x23,[sp, #0x90]
02c84a28  ldp x26,x25,[sp, #0x80]
02c84a2c  ldp x28,x27,[sp, #0x70]
02c84a30  ldp d9,d8,[sp, #0x50]
02c84a34  ldp d11,d10,[sp, #0x40]
02c84a38  add sp,sp,#0xc0
02c84a3c  ret
