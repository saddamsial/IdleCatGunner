02b83764  stp d13,d12,[sp, #-0x60]!
02b83768  stp d11,d10,[sp, #0x10]
02b8376c  stp d9,d8,[sp, #0x20]
02b83770  stp x30,x23,[sp, #0x30]
02b83774  stp x22,x21,[sp, #0x40]
02b83778  stp x20,x19,[sp, #0x50]
02b8377c  cbz x1,0x02b83910
02b83780  ldr x23,[x1, #0x68]
02b83784  mov x20,x1
02b83788  cbz x23,0x02b83910
02b8378c  ldp s1,s11,[x20, #0x5c]
02b83790  fmov s8,0x3f800000
02b83794  mov x21,x0
02b83798  ldr x0,[x23, #0x48]
02b8379c  mov w19,w2
02b837a0  fsub s12,s0,s1
02b837a4  fdiv s0,s12,s11
02b837a8  fcmp s0,s8
02b837ac  fcsel s10,s8,s0,gt
02b837b0  fmov s0,s10
02b837b4  bl 0x02b82a5c
02b837b8  fcmp s0,s8
02b837bc  mov w8,#0x437f0000
02b837c0  fmov s2,0x3f000000
02b837c4  fmov s13,w8
02b837c8  ldr x0,[x23, #0x50]
02b837cc  fcsel s1,s8,s0,gt
02b837d0  fcmp s0,#0.0
02b837d4  fmul s1,s1,s13
02b837d8  fadd s1,s1,s2
02b837dc  fcsel s0,s2,s1,mi
02b837e0  fcvtzs w8,s0
02b837e4  fcmp s0,#0.0
02b837e8  fmov s0,s10
02b837ec  csel w22,w8,w8,mi
02b837f0  bl 0x02b82a5c
02b837f4  fmov s8,s0
02b837f8  fmov s0,s10
02b837fc  ldr x0,[x23, #0x38]
02b83800  bl 0x02b82a5c
02b83804  fmov s9,s0
02b83808  fmov s0,s10
02b8380c  ldr x0,[x23, #0x40]
02b83810  bl 0x02b82a5c
02b83814  fmov s1,0x41000000
02b83818  mov w8,#0x7f800000
02b8381c  fcvtzs w9,s9,#0x3
02b83820  fmov s3,w8
02b83824  mov w8,#0x42800000
02b83828  fcvtzs w10,s0,#0x3
02b8382c  mov w2,wzr
02b83830  mov w1,wzr
02b83834  fmul s2,s9,s1
02b83838  fmul s1,s0,s1
02b8383c  fcmp s2,s3
02b83840  fmov s2,w8
02b83844  fmul s2,s8,s2
02b83848  csel w8,wzr,w9,eq
02b8384c  fcmp s1,s3
02b83850  movi d3,#0x0
02b83854  csel w9,wzr,w10,eq
02b83858  fcmp s2,s13
02b8385c  fcsel s1,s13,s2,gt
02b83860  fcmp s2,#0.0
02b83864  fcsel s1,s3,s1,mi
02b83868  fcvtzs w10,s1
02b8386c  fcmp s1,#0.0
02b83870  csel w10,w10,w10,mi
02b83874  tbnz w19,#0x0,0x02b838b0
02b83878  ldrb w11,[x20, #0x44]
02b8387c  ldrb w12,[x20, #0x74]
02b83880  cmp w11,w22, UXTB 
02b83884  cset w2,ne
02b83888  cmp w12,w10, UXTB 
02b8388c  b.ne 0x02b838ac
02b83890  ldrh w11,[x20, #0x70]
02b83894  cmp w11,w8, UXTH 
02b83898  b.ne 0x02b838ac
02b8389c  ldrh w11,[x20, #0x72]
02b838a0  cmp w11,w9, UXTH 
02b838a4  cset w1,ne
02b838a8  b 0x02b838b0
02b838ac  mov w1,#0x1
02b838b0  strb w22,[x20, #0x44]
02b838b4  stp s0,s8,[x20, #0x3c]
02b838b8  str s9,[x20, #0x38]
02b838bc  strb w10,[x20, #0x74]
02b838c0  strh w8,[x20, #0x70]
02b838c4  strh w9,[x20, #0x72]
02b838c8  tbnz w2,#0x0,0x02b838d4
02b838cc  tbnz w1,#0x0,0x02b838d4
02b838d0  tbz w19,#0x0,0x02b838ec
02b838d4  ldp s0,s1,[x21, #0x40]
02b838d8  and w3,w19,#0x1
02b838dc  ldp s2,s3,[x21, #0x48]
02b838e0  mov x0,x20
02b838e4  ldp s4,s5,[x21, #0x50]
02b838e8  bl 0x02b83914
02b838ec  fcmp s12,s11
02b838f0  ldp x20,x19,[sp, #0x50]
02b838f4  ldp x22,x21,[sp, #0x40]
02b838f8  ldp x30,x23,[sp, #0x30]
02b838fc  ldp d9,d8,[sp, #0x20]
02b83900  cset w0,ge
02b83904  ldp d11,d10,[sp, #0x10]
02b83908  ldp d13,d12,[sp], #0x60
02b8390c  ret
02b83910  bl 0x029f5cfc
