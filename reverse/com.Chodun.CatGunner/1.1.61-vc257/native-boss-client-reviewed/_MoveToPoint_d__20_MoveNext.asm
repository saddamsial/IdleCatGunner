02c456b4  sub sp,sp,#0x70
02c456b8  stp d11,d10,[sp, #0x20]
02c456bc  stp d9,d8,[sp, #0x30]
02c456c0  stp x30,x23,[sp, #0x40]
02c456c4  stp x22,x21,[sp, #0x50]
02c456c8  stp x20,x19,[sp, #0x60]
02c456cc  adrp x20,0x625c000
02c456d0  mov x19,x0
02c456d4  ldrb w8,[x20, #0xd7]
02c456d8  tbnz w8,#0x0,0x02c456fc
02c456dc  adrp x0,0x5e5d000
02c456e0  ldr x0,[x0, #0x338]
02c456e4  bl 0x029f5a50
02c456e8  adrp x0,0x5e61000
02c456ec  ldr x0,[x0, #0x878]
02c456f0  bl 0x029f5a50
02c456f4  mov w8,#0x1
02c456f8  strb w8,[x20, #0xd7]
02c456fc  ldr w8,[x19, #0x10]
02c45700  ldr x20,[x19, #0x30]
02c45704  cmp w8,#0x1
02c45708  b.eq 0x02c4575c
02c4570c  cbnz w8,0x02c45948
02c45710  mov w8,#0xffffffff
02c45714  str w8,[x19, #0x10]
02c45718  cbz x20,0x02c45a2c
02c4571c  mov x0,x20
02c45720  mov x1,xzr
02c45724  bl 0x057dc0f8
02c45728  cbz x0,0x02c45a2c
02c4572c  mov x1,xzr
02c45730  bl 0x057eed98
02c45734  ldr x0,[x20, #0x38]
02c45738  str s1,[x19, #0x24]
02c4573c  cbz x0,0x02c45a2c
02c45740  adrp x8,0x5e61000
02c45744  mov w2,#0x1
02c45748  mov x3,xzr
02c4574c  ldr x8,[x8, #0x878]
02c45750  ldr x1,[x8]
02c45754  bl 0x05784a20
02c45758  b 0x02c45764
02c4575c  mov w8,#0xffffffff
02c45760  str w8,[x19, #0x10]
02c45764  adrp x21,0x5e5d000
02c45768  ldr x21,[x21, #0x338]
02c4576c  ldr x0,[x21]
02c45770  ldr w8,[x0, #0xe4]
02c45774  cbnz w8,0x02c45780
02c45778  bl 0x029f5bd0
02c4577c  ldr x0,[x21]
02c45780  ldr x8,[x0, #0xb8]
02c45784  ldrb w8,[x8]
02c45788  cbz w8,0x02c4588c
02c4578c  cbz x20,0x02c45a2c
02c45790  ldr s10,[x19, #0x20]
02c45794  ldr s11,[x19, #0x28]
02c45798  mov x0,x20
02c4579c  mov x1,xzr
02c457a0  bl 0x057dc0f8
02c457a4  cbz x0,0x02c45a2c
02c457a8  mov x1,xzr
02c457ac  bl 0x057eed98
02c457b0  fmov s8,s0
02c457b4  fmov s9,s2
02c457b8  adrp x21,0x625b000
02c457bc  ldrb w8,[x21, #0xae8]
02c457c0  cbnz w8,0x02c457d8
02c457c4  adrp x0,0x5e59000
02c457c8  ldr x0,[x0]
02c457cc  bl 0x029f5a50
02c457d0  mov w8,#0x1
02c457d4  strb w8,[x21, #0xae8]
02c457d8  adrp x22,0x5e59000
02c457dc  fsub s2,s10,s8
02c457e0  fsub s8,s11,s9
02c457e4  ldr x22,[x22]
02c457e8  ldr x0,[x22]
02c457ec  ldr w8,[x0, #0xe4]
02c457f0  cbnz w8,0x02c45800
02c457f4  str q2,[sp, #0x10]
02c457f8  bl 0x029f5bd0
02c457fc  ldr q2,[sp, #0x10]
02c45800  fmul s0,s2,s2
02c45804  fmul s1,s8,s8
02c45808  ldr x21,[x20, #0x40]
02c4580c  fadd s0,s0,s1
02c45810  fsqrt s3,s0
02c45814  ldr s0,[x20, #0x5c]
02c45818  fcmp s3,s0
02c4581c  b.ls 0x02c458e0
02c45820  adrp x23,0x625b000
02c45824  str q2,[sp, #0x10]
02c45828  ldrb w8,[x23, #0x52e]
02c4582c  cbnz w8,0x02c4584c
02c45830  adrp x0,0x5e59000
02c45834  ldr x0,[x0]
02c45838  str q3,[sp]
02c4583c  bl 0x029f5a50
02c45840  ldp q3,q2,[sp]
02c45844  mov w8,#0x1
02c45848  strb w8,[x23, #0x52e]
02c4584c  ldr x0,[x22]
02c45850  ldr w8,[x0, #0xe4]
02c45854  cbnz w8,0x02c45864
02c45858  str q3,[sp]
02c4585c  bl 0x029f5bd0
02c45860  ldp q3,q2,[sp]
02c45864  adrp x8,0x116c000
02c45868  ldr s0,[x8, #0x240]
02c4586c  fcmp s3,s0
02c45870  b.le 0x02c45950
02c45874  movi d0,#0x0
02c45878  dup v1.2S,v3.S[0x0]
02c4587c  mov v0.S[0x0],v2.S[0x0]
02c45880  fdiv v0.2S,v0.2S,v1.2S
02c45884  fdiv s1,s8,s3
02c45888  b 0x02c45988
02c4588c  cbz x20,0x02c45a2c
02c45890  adrp x21,0x625b000
02c45894  ldr x19,[x20, #0x40]
02c45898  ldrb w8,[x21, #0x26f]
02c4589c  cbnz w8,0x02c458b4
02c458a0  adrp x0,0x5e58000
02c458a4  ldr x0,[x0, #0xbf8]
02c458a8  bl 0x029f5a50
02c458ac  mov w8,#0x1
02c458b0  strb w8,[x21, #0x26f]
02c458b4  cbz x19,0x02c45a2c
02c458b8  adrp x8,0x5e58000
02c458bc  mov x0,x19
02c458c0  mov x1,xzr
02c458c4  ldr x8,[x8, #0xbf8]
02c458c8  ldr x8,[x8]
02c458cc  ldr x8,[x8, #0xb8]
02c458d0  ldp s1,s2,[x8, #0x4]
02c458d4  ldr s0,[x8]
02c458d8  bl 0x0586b344
02c458dc  b 0x02c45948
02c458e0  adrp x19,0x625b000
02c458e4  ldrb w8,[x19, #0x26f]
02c458e8  cbnz w8,0x02c45900
02c458ec  adrp x0,0x5e58000
02c458f0  ldr x0,[x0, #0xbf8]
02c458f4  bl 0x029f5a50
02c458f8  mov w8,#0x1
02c458fc  strb w8,[x19, #0x26f]
02c45900  cbz x21,0x02c45a2c
02c45904  adrp x8,0x5e58000
02c45908  mov x0,x21
02c4590c  mov x1,xzr
02c45910  ldr x8,[x8, #0xbf8]
02c45914  ldr x8,[x8]
02c45918  ldr x8,[x8, #0xb8]
02c4591c  ldp s1,s2,[x8, #0x4]
02c45920  ldr s0,[x8]
02c45924  bl 0x0586b344
02c45928  ldr x0,[x20, #0x38]
02c4592c  cbz x0,0x02c45a2c
02c45930  adrp x8,0x5e61000
02c45934  mov w2,wzr
02c45938  mov x3,xzr
02c4593c  ldr x8,[x8, #0x878]
02c45940  ldr x1,[x8]
02c45944  bl 0x05784a20
02c45948  mov w0,wzr
02c4594c  b 0x02c45a10
02c45950  adrp x22,0x625b000
02c45954  ldrb w8,[x22, #0x26f]
02c45958  cbnz w8,0x02c45970
02c4595c  adrp x0,0x5e58000
02c45960  ldr x0,[x0, #0xbf8]
02c45964  bl 0x029f5a50
02c45968  mov w8,#0x1
02c4596c  strb w8,[x22, #0x26f]
02c45970  adrp x8,0x5e58000
02c45974  ldr x8,[x8, #0xbf8]
02c45978  ldr x8,[x8]
02c4597c  ldr x8,[x8, #0xb8]
02c45980  ldr d0,[x8]
02c45984  ldr s1,[x8, #0x8]
02c45988  cbz x21,0x02c45a2c
02c4598c  ldr s2,[x20, #0x58]
02c45990  mov x0,x21
02c45994  mov x1,xzr
02c45998  fmul v0.2S,v0.2S,v2.S[0x0]
02c4599c  fmul s2,s1,s2
02c459a0  dup s1,v0.S[0x1]
02c459a4  bl 0x0586b344
02c459a8  ldr q0,[sp, #0x10]
02c459ac  fcmp s0,#0.0
02c459b0  b.le 0x02c459cc
02c459b4  movi d0,#0x0
02c459b8  movi d2,#0x0
02c459bc  adrp x8,0x116c000
02c459c0  ldr x20,[x20, #0x50]
02c459c4  ldr s1,[x8, #0x1ac]
02c459c8  b 0x02c459e0
02c459cc  b.pl 0x02c459f8
02c459d0  ldr x20,[x20, #0x50]
02c459d4  movi d0,#0x0
02c459d8  movi d1,#0x0
02c459dc  movi d2,#0x0
02c459e0  mov x0,xzr
02c459e4  bl 0x057cd67c
02c459e8  cbz x20,0x02c45a2c
02c459ec  mov x0,x20
02c459f0  mov x1,xzr
02c459f4  bl 0x057ef248
02c459f8  str xzr,[x19, #0x18]!
02c459fc  mov x0,x19
02c45a00  mov x1,xzr
02c45a04  bl 0x029f59f4
02c45a08  mov w0,#0x1
02c45a0c  stur w0,[x19, #-0x8]
02c45a10  ldp x20,x19,[sp, #0x60]
02c45a14  ldp x22,x21,[sp, #0x50]
02c45a18  ldp x30,x23,[sp, #0x40]
02c45a1c  ldp d9,d8,[sp, #0x30]
02c45a20  ldp d11,d10,[sp, #0x20]
02c45a24  add sp,sp,#0x70
02c45a28  ret
02c45a2c  bl 0x029f5cfc
