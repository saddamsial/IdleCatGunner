02c62720  sub sp,sp,#0x90
02c62724  str x30,[sp, #0x60]
02c62728  stp x22,x21,[sp, #0x70]
02c6272c  stp x20,x19,[sp, #0x80]
02c62730  adrp x21,0x625c000
02c62734  adrp x22,0x5e59000
02c62738  mov x19,x1
02c6273c  ldrb w8,[x21, #0x22d]
02c62740  ldr x22,[x22, #0x1c0]
02c62744  mov x20,x0
02c62748  tbnz w8,#0x0,0x02c62760
02c6274c  adrp x0,0x5e59000
02c62750  ldr x0,[x0, #0x1c0]
02c62754  bl 0x029f5a50
02c62758  mov w8,#0x1
02c6275c  strb w8,[x21, #0x22d]
02c62760  ldr x0,[x22]
02c62764  ldr w8,[x0, #0xe4]
02c62768  cbnz w8,0x02c62770
02c6276c  bl 0x029f5bd0
02c62770  mov x0,x19
02c62774  mov x1,xzr
02c62778  mov x2,xzr
02c6277c  bl 0x057e14b4
02c62780  tbz w0,#0x0,0x02c6278c
02c62784  mov w0,wzr
02c62788  b 0x02c62844
02c6278c  mov x0,x20
02c62790  bl 0x02c6285c
02c62794  stp q1,q0,[sp, #0x20]
02c62798  cbz x19,0x02c62858
02c6279c  mov x0,x19
02c627a0  bl 0x02c6285c
02c627a4  mov x0,x20
02c627a8  stp q1,q0,[sp]
02c627ac  bl 0x02c62880
02c627b0  mov x0,x19
02c627b4  stp q1,q0,[sp, #0x40]
02c627b8  bl 0x02c62880
02c627bc  movi v2.2S,#0x3f, LSL #24
02c627c0  adrp x8,0x116c000
02c627c4  mov w0,wzr
02c627c8  mov v0.S[0x1],v1.S[0x0]
02c627cc  ldp q3,q1,[sp, #0x40]
02c627d0  mov v1.S[0x1],v3.S[0x0]
02c627d4  ldr s3,[x19, #0x88]
02c627d8  fmul v0.2S,v0.2S,v2.2S
02c627dc  fmul v1.2S,v1.2S,v2.2S
02c627e0  ldr s2,[x20, #0x88]
02c627e4  fmul v0.2S,v0.2S,v3.S[0x0]
02c627e8  ldur d3,[x19, #0x8c]
02c627ec  fmul v1.2S,v1.2S,v2.S[0x0]
02c627f0  ldur d2,[x20, #0x8c]
02c627f4  fmul v0.2S,v0.2S,v3.2S
02c627f8  fmul v1.2S,v1.2S,v2.2S
02c627fc  fadd v0.2S,v1.2S,v0.2S
02c62800  ldr s1,[x8, #0x200]
02c62804  fcmp s0,s1
02c62808  b.ls 0x02c62844
02c6280c  dup s2,v0.S[0x1]
02c62810  fcmp s2,s1
02c62814  b.ls 0x02c62844
02c62818  ldp q2,q1,[sp, #0x20]
02c6281c  mov v1.S[0x1],v2.S[0x0]
02c62820  ldp q3,q2,[sp]
02c62824  mov v2.S[0x1],v3.S[0x0]
02c62828  fsub v1.2S,v1.2S,v2.2S
02c6282c  fdiv v0.2S,v1.2S,v0.2S
02c62830  fmov s1,0x3f800000
02c62834  fmul v0.2S,v0.2S,v0.2S
02c62838  faddp s0,v0.2S
02c6283c  fcmp s0,s1
02c62840  cset w0,ls
02c62844  ldp x20,x19,[sp, #0x80]
02c62848  ldr x30,[sp, #0x60]
02c6284c  ldp x22,x21,[sp, #0x70]
02c62850  add sp,sp,#0x90
02c62854  ret
02c62858  bl 0x029f5cfc
