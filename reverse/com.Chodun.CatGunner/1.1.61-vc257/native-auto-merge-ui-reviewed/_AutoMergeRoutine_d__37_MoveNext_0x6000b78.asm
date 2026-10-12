02c772c4  sub sp,sp,#0xc0
02c772c8  stp d11,d10,[sp, #0x40]
02c772cc  stp d9,d8,[sp, #0x50]
02c772d0  str x30,[sp, #0x60]
02c772d4  stp x28,x27,[sp, #0x70]
02c772d8  stp x26,x25,[sp, #0x80]
02c772dc  stp x24,x23,[sp, #0x90]
02c772e0  stp x22,x21,[sp, #0xa0]
02c772e4  stp x20,x19,[sp, #0xb0]
02c772e8  adrp x20,0x625c000
02c772ec  mov x19,x0
02c772f0  ldrb w8,[x20, #0x2fa]
02c772f4  tbnz w8,#0x0,0x02c77360
02c772f8  adrp x0,0x5e5b000
02c772fc  ldr x0,[x0, #0xe98]
02c77300  bl 0x029f5a50
02c77304  adrp x0,0x5e63000
02c77308  ldr x0,[x0, #0xa90]
02c7730c  bl 0x029f5a50
02c77310  adrp x0,0x5e63000
02c77314  ldr x0,[x0, #0xa98]
02c77318  bl 0x029f5a50
02c7731c  adrp x0,0x5e63000
02c77320  ldr x0,[x0, #0xaa0]
02c77324  bl 0x029f5a50
02c77328  adrp x0,0x5e5d000
02c7732c  ldr x0,[x0, #0xd40]
02c77330  bl 0x029f5a50
02c77334  adrp x0,0x5e63000
02c77338  ldr x0,[x0, #0xab0]
02c7733c  bl 0x029f5a50
02c77340  adrp x0,0x5e59000
02c77344  ldr x0,[x0, #0x1c0]
02c77348  bl 0x029f5a50
02c7734c  adrp x0,0x5e5b000
02c77350  ldr x0,[x0, #0xed0]
02c77354  bl 0x029f5a50
02c77358  mov w8,#0x1
02c7735c  strb w8,[x20, #0x2fa]
02c77360  adrp x24,0x5e63000
02c77364  adrp x25,0x5e63000
02c77368  adrp x23,0x5e63000
02c7736c  adrp x26,0x5e5b000
02c77370  adrp x27,0x5e5d000
02c77374  ldr x24,[x24, #0xab0]
02c77378  ldr x25,[x25, #0xa98]
02c7737c  ldr x23,[x23, #0xa90]
02c77380  ldr x26,[x26, #0xe98]
02c77384  ldr x27,[x27, #0xd40]
02c77388  str xzr,[sp, #0x68]
02c7738c  ldr w8,[x19, #0x10]
02c77390  str xzr,[sp, #0x38]
02c77394  adrp x28,0x5e59000
02c77398  mov w0,wzr
02c7739c  ldr x28,[x28, #0x1c0]
02c773a0  ldr x20,[x19, #0x20]
02c773a4  cmp w8,#0x1
02c773a8  stp xzr,xzr,[sp, #0x20]
02c773ac  str xzr,[sp, #0x30]
02c773b0  b.le 0x02c773d0
02c773b4  sub w9,w8,#0x2
02c773b8  cmp w9,#0x2
02c773bc  b.cs 0x02c773e8
02c773c0  mov w8,#0xffffffff
02c773c4  str w8,[x19, #0x10]
02c773c8  cbnz x20,0x02c774f8
02c773cc  b 0x02c777b0
02c773d0  cbz w8,0x02c773fc
02c773d4  cmp w8,#0x1
02c773d8  b.ne 0x02c77840
02c773dc  mov w8,#0xffffffff
02c773e0  str w8,[x19, #0x10]
02c773e4  b 0x02c77420
02c773e8  cmp w8,#0x4
02c773ec  b.ne 0x02c77840
02c773f0  mov w8,#0xffffffff
02c773f4  str w8,[x19, #0x10]
02c773f8  b 0x02c777fc
02c773fc  str xzr,[x19, #0x18]!
02c77400  mov w8,#0xffffffff
02c77404  mov x0,x19
02c77408  mov x1,xzr
02c7740c  stur w8,[x19, #-0x8]
02c77410  bl 0x029f59f4
02c77414  mov w0,#0x1
02c77418  stur w0,[x19, #-0x8]
02c7741c  b 0x02c77840
02c77420  ldr x8,[x27]
02c77424  ldr x0,[x28]
02c77428  ldr x8,[x8, #0xb8]
02c7742c  ldr w9,[x0, #0xe4]
02c77430  ldr x21,[x8]
02c77434  cbnz w9,0x02c7743c
02c77438  bl 0x029f5bd0
02c7743c  mov x0,x21
02c77440  mov x1,xzr
02c77444  mov x2,xzr
02c77448  bl 0x057dfa70
02c7744c  tbz w0,#0x0,0x02c77754
02c77450  ldr x8,[x27]
02c77454  ldr x8,[x8, #0xb8]
02c77458  ldr x0,[x8]
02c7745c  cbz x0,0x02c777b0
02c77460  mov x1,xzr
02c77464  bl 0x02c69528
02c77468  tbz w0,#0x0,0x02c77754
02c7746c  cbz x20,0x02c777b0
02c77470  add x1,sp,#0x68
02c77474  add x2,sp,#0x38
02c77478  mov x0,x20
02c7747c  bl 0x02c76ccc
02c77480  tbz w0,#0x0,0x02c77758
02c77484  ldr x1,[sp, #0x68]
02c77488  ldr x2,[sp, #0x38]
02c7748c  mov x0,x20
02c77490  bl 0x02c7699c
02c77494  ldr q0,[x20, #0x50]
02c77498  ldr x0,[sp, #0x68]
02c7749c  stur q0,[x19, #0x28]
02c774a0  cbz x0,0x02c777b0
02c774a4  bl 0x02c71518
02c774a8  ldr x0,[sp, #0x38]
02c774ac  cbz x0,0x02c777b0
02c774b0  bl 0x02c71518
02c774b4  ldr x0,[sp, #0x68]
02c774b8  cbz x0,0x02c777b0
02c774bc  mov x1,xzr
02c774c0  bl 0x057dc0f8
02c774c4  cbz x0,0x02c777b0
02c774c8  mov x1,xzr
02c774cc  bl 0x057f0b34
02c774d0  ldr w1,[x19, #0x28]
02c774d4  mov x0,x20
02c774d8  bl 0x02c74714
02c774dc  ldr w1,[x19, #0x30]
02c774e0  mov x0,x20
02c774e4  stp s0,s1,[x19, #0x38]
02c774e8  bl 0x02c74714
02c774ec  str wzr,[x19, #0x48]
02c774f0  stp s0,s1,[x19, #0x40]
02c774f4  strb wzr,[x19, #0x4c]
02c774f8  ldp w1,w2,[x19, #0x28]
02c774fc  add x3,sp,#0x68
02c77500  mov x0,x20
02c77504  bl 0x02c769cc
02c77508  tbz w0,#0x0,0x02c776e4
02c7750c  ldp w1,w2,[x19, #0x30]
02c77510  add x3,sp,#0x38
02c77514  mov x0,x20
02c77518  bl 0x02c769cc
02c7751c  tbz w0,#0x0,0x02c776e4
02c77520  ldr x0,[sp, #0x68]
02c77524  cbz x0,0x02c777b0
02c77528  mov x1,xzr
02c7752c  bl 0x057dc0f8
02c77530  cbz x0,0x02c777b0
02c77534  mov x1,xzr
02c77538  bl 0x057f0cac
02c7753c  ldr x8,[sp, #0x68]
02c77540  cbz x8,0x02c777b0
02c77544  mov w21,w0
02c77548  mov x0,x8
02c7754c  mov x1,xzr
02c77550  bl 0x057dc0f8
02c77554  cbz x0,0x02c777b0
02c77558  mov x1,xzr
02c7755c  bl 0x057eecc8
02c77560  cbz x0,0x02c777b0
02c77564  mov x1,xzr
02c77568  bl 0x057f09cc
02c7756c  sub w8,w0,#0x1
02c77570  cmp w21,w8
02c77574  b.eq 0x02c77594
02c77578  ldr x0,[sp, #0x68]
02c7757c  cbz x0,0x02c777b0
02c77580  mov x1,xzr
02c77584  bl 0x057dc0f8
02c77588  cbz x0,0x02c777b0
02c7758c  mov x1,xzr
02c77590  bl 0x057f0b34
02c77594  ldr s8,[x19, #0x48]
02c77598  mov x0,xzr
02c7759c  bl 0x057ebb34
02c775a0  fadd s0,s8,s0
02c775a4  ldr s1,[x20, #0x30]
02c775a8  fmov s8,0x3f800000
02c775ac  movi d9,#0x0
02c775b0  ldr x0,[sp, #0x68]
02c775b4  fdiv s1,s0,s1
02c775b8  str s0,[x19, #0x48]
02c775bc  fcmp s1,s8
02c775c0  fcsel s2,s8,s1,gt
02c775c4  fcmp s1,#0.0
02c775c8  fcsel s1,s9,s2,mi
02c775cc  fcmp s1,#0.0
02c775d0  fcsel s10,s9,s1,mi
02c775d4  cbz x0,0x02c777b0
02c775d8  ldr x1,[x26]
02c775dc  bl 0x02fe5f2c
02c775e0  cbz x0,0x02c777b0
02c775e4  fadd s0,s10,s10
02c775e8  fmov s1,0x40400000
02c775ec  mov x1,xzr
02c775f0  ldp d2,d3,[x19, #0x38]
02c775f4  mov x21,x0
02c775f8  fmul s1,s10,s1
02c775fc  fmul s0,s10,s0
02c77600  fmul s1,s10,s1
02c77604  fmul s0,s10,s0
02c77608  fsub s0,s1,s0
02c7760c  fsub s1,s8,s0
02c77610  fmul s1,s1,s9
02c77614  fmov s9,0x3f800000
02c77618  fadd s8,s0,s1
02c7761c  movi d1,#0x0
02c77620  fcmp s8,s9
02c77624  fcsel s0,s9,s8,gt
02c77628  fcmp s8,#0.0
02c7762c  fcsel s0,s1,s0,mi
02c77630  fsub v1.2S,v3.2S,v2.2S
02c77634  fmul v0.2S,v1.2S,v0.S[0x0]
02c77638  fadd v0.2S,v2.2S,v0.2S
02c7763c  dup s1,v0.S[0x1]
02c77640  bl 0x057edec8
02c77644  fcmp s8,s9
02c77648  b.ge 0x02c776c0
02c7764c  mov x0,x21
02c77650  mov x1,xzr
02c77654  bl 0x057eddfc
02c77658  fmov s8,s0
02c7765c  fmov s9,s1
02c77660  adrp x22,0x625c000
02c77664  ldp s10,s11,[x19, #0x40]
02c77668  ldrb w8,[x22, #0x2a2]
02c7766c  cbnz w8,0x02c77684
02c77670  adrp x0,0x5e59000
02c77674  ldr x0,[x0]
02c77678  bl 0x029f5a50
02c7767c  mov w8,#0x1
02c77680  strb w8,[x22, #0x2a2]
02c77684  adrp x8,0x5e59000
02c77688  ldr x8,[x8]
02c7768c  ldr x0,[x8]
02c77690  ldr w8,[x0, #0xe4]
02c77694  cbnz w8,0x02c7769c
02c77698  bl 0x029f5bd0
02c7769c  fsub s0,s9,s11
02c776a0  fsub s1,s8,s10
02c776a4  fmul s1,s1,s1
02c776a8  fmul s0,s0,s0
02c776ac  fadd s0,s1,s0
02c776b0  ldr s1,[x20, #0x34]
02c776b4  fsqrt s0,s0
02c776b8  fcmp s0,s1
02c776bc  b.hi 0x02c77798
02c776c0  mov x0,x20
02c776c4  bl 0x02c76b68
02c776c8  tbnz w0,#0x0,0x02c77770
02c776cc  ldr x1,[sp, #0x68]
02c776d0  ldr x2,[sp, #0x38]
02c776d4  mov x0,x20
02c776d8  bl 0x02c73494
02c776dc  mov w8,#0x1
02c776e0  strb w8,[x19, #0x4c]
02c776e4  mov x8,#-0x1
02c776e8  stp x8,x8,[x20, #0x50]
02c776ec  ldrb w8,[x19, #0x4c]
02c776f0  cbnz w8,0x02c777f0
02c776f4  ldr x0,[x20, #0x40]
02c776f8  cbz x0,0x02c777b0
02c776fc  ldr x1,[x24]
02c77700  add x8,sp,#0x8
02c77704  bl 0x0452d690
02c77708  ldur q0,[sp, #0x8]
02c7770c  ldr x8,[sp, #0x18]
02c77710  str q0,[sp, #0x20]
02c77714  str x8,[sp, #0x30]
02c77718  ldr x1,[x25]
02c7771c  add x0,sp,#0x20
02c77720  bl 0x03fa4e10
02c77724  tbz w0,#0x0,0x02c77740
02c77728  ldr x0,[sp, #0x30]
02c7772c  cbz x0,0x02c77750
02c77730  ldrb w8,[x0, #0x79]
02c77734  cbz w8,0x02c77718
02c77738  bl 0x02c70d14
02c7773c  b 0x02c77718
02c77740  ldr x1,[x23]
02c77744  add x0,sp,#0x20
02c77748  bl 0x03fa4e0c
02c7774c  b 0x02c777e8
02c77750  bl 0x029f5cfc
02c77754  cbz x20,0x02c777b0
02c77758  str xzr,[x20, #0x48]!
02c7775c  mov x0,x20
02c77760  mov x1,xzr
02c77764  bl 0x029f59f4
02c77768  mov w0,wzr
02c7776c  b 0x02c77840
02c77770  ldp s0,s1,[x19, #0x40]
02c77774  mov x0,x21
02c77778  mov x1,xzr
02c7777c  bl 0x057edec8
02c77780  str xzr,[x19, #0x18]!
02c77784  mov x0,x19
02c77788  mov x1,xzr
02c7778c  bl 0x029f59f4
02c77790  mov w8,#0x2
02c77794  b 0x02c77838
02c77798  str xzr,[x19, #0x18]!
02c7779c  mov x0,x19
02c777a0  mov x1,xzr
02c777a4  bl 0x029f59f4
02c777a8  mov w8,#0x3
02c777ac  b 0x02c77838
02c777b0  bl 0x029f5cfc
02c777e8  mov x0,x20
02c777ec  bl 0x02c75ec8
02c777f0  ldr s8,[x20, #0x38]
02c777f4  fcmp s8,#0.0
02c777f8  b.gt 0x02c77804
02c777fc  stp xzr,xzr,[x19, #0x38]
02c77800  b 0x02c77420
02c77804  adrp x8,0x5e5b000
02c77808  ldr x8,[x8, #0xed0]
02c7780c  ldr x0,[x8]
02c77810  bl 0x029f5cec
02c77814  fmov s0,s8
02c77818  mov x1,xzr
02c7781c  mov x20,x0
02c77820  bl 0x057e85dc
02c77824  str x20,[x19, #0x18]!
02c77828  mov x0,x19
02c7782c  mov x1,x20
02c77830  bl 0x029f59f4
02c77834  mov w8,#0x4
02c77838  stur w8,[x19, #-0x8]
02c7783c  mov w0,#0x1
02c77840  ldp x20,x19,[sp, #0xb0]
02c77844  ldr x30,[sp, #0x60]
02c77848  ldp x22,x21,[sp, #0xa0]
02c7784c  ldp x24,x23,[sp, #0x90]
02c77850  ldp x26,x25,[sp, #0x80]
02c77854  ldp x28,x27,[sp, #0x70]
02c77858  ldp d9,d8,[sp, #0x50]
02c7785c  ldp d11,d10,[sp, #0x40]
02c77860  add sp,sp,#0xc0
02c77864  ret
