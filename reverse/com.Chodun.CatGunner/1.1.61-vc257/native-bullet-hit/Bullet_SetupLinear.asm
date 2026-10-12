02c657d0  stp d13,d12,[sp, #-0x60]!
02c657d4  stp d11,d10,[sp, #0x10]
02c657d8  stp d9,d8,[sp, #0x20]
02c657dc  stp x30,x23,[sp, #0x30]
02c657e0  stp x22,x21,[sp, #0x40]
02c657e4  stp x20,x19,[sp, #0x50]
02c657e8  mov x19,x0
02c657ec  ldr x0,[x0, #0x60]
02c657f0  cbz x0,0x02c65954
02c657f4  mov w22,w3
02c657f8  mov x20,x2
02c657fc  mov x21,x1
02c65800  mov w1,#0x1
02c65804  mov w2,wzr
02c65808  mov x3,xzr
02c6580c  fmov s8,s5
02c65810  fmov s9,s4
02c65814  fmov s10,s3
02c65818  fmov s11,s2
02c6581c  fmov s12,s1
02c65820  fmov s13,s0
02c65824  bl 0x058617b0
02c65828  ldr x0,[x19, #0x60]
02c6582c  cbz x0,0x02c65954
02c65830  mov w1,#0x1
02c65834  mov x2,xzr
02c65838  bl 0x058618a8
02c6583c  ldr x0,[x19, #0x58]
02c65840  cbz x0,0x02c65954
02c65844  mov w1,wzr
02c65848  mov x2,xzr
02c6584c  bl 0x0586b718
02c65850  mov x0,x19
02c65854  mov x1,xzr
02c65858  bl 0x057dc0f8
02c6585c  cbz x0,0x02c65954
02c65860  fmov s0,s13
02c65864  fmov s1,s12
02c65868  mov x1,xzr
02c6586c  fmov s2,s11
02c65870  bl 0x057eee74
02c65874  mov x0,x19
02c65878  mov x1,xzr
02c6587c  stp s13,s12,[x19, #0x6c]
02c65880  str s11,[x19, #0x74]
02c65884  bl 0x057dc0f8
02c65888  cbz x0,0x02c65954
02c6588c  fmov s0,s10
02c65890  fmov s1,s9
02c65894  mov x1,xzr
02c65898  fmov s2,s8
02c6589c  bl 0x057ef44c
02c658a0  ldr x23,[x19, #0x58]
02c658a4  mov x0,x19
02c658a8  mov x1,xzr
02c658ac  bl 0x057dc0f8
02c658b0  cbz x0,0x02c65954
02c658b4  mov x1,xzr
02c658b8  bl 0x057ef3d0
02c658bc  cbz x23,0x02c65954
02c658c0  ldr s3,[x19, #0x50]
02c658c4  mov x0,x23
02c658c8  mov x1,xzr
02c658cc  and w22,w22,#0x1
02c658d0  fmul s2,s2,s3
02c658d4  fmul s1,s1,s3
02c658d8  fmul s0,s0,s3
02c658dc  bl 0x0586b344
02c658e0  ldp q1,q0,[x21]
02c658e4  add x0,x19,#0x28
02c658e8  mov x1,xzr
02c658ec  stur q0,[x19, #0x38]
02c658f0  stur q1,[x19, #0x28]
02c658f4  bl 0x029f59f4
02c658f8  mov x0,x19
02c658fc  mov x1,x20
02c65900  str x20,[x0, #0x48]!
02c65904  bl 0x029f59f4
02c65908  mov x0,x19
02c6590c  mov x1,xzr
02c65910  strb w22,[x19, #0x24]
02c65914  bl 0x057dc1c8
02c65918  cbz x0,0x02c65954
02c6591c  mov w1,#0x1
02c65920  mov x2,xzr
02c65924  bl 0x057dff3c
02c65928  ldr x0,[x19, #0x60]
02c6592c  cbz x0,0x02c65954
02c65930  ldp x20,x19,[sp, #0x50]
02c65934  mov w1,#0x1
02c65938  ldp x22,x21,[sp, #0x40]
02c6593c  mov x2,xzr
02c65940  ldp x30,x23,[sp, #0x30]
02c65944  ldp d9,d8,[sp, #0x20]
02c65948  ldp d11,d10,[sp, #0x10]
02c6594c  ldp d13,d12,[sp], #0x60
02c65950  b 0x058616e4
02c65954  bl 0x029f5cfc
