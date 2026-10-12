02c3d4ac  sub sp,sp,#0x170
02c3d4b0  stp d15,d14,[sp, #0x100]
02c3d4b4  stp d13,d12,[sp, #0x110]
02c3d4b8  stp d11,d10,[sp, #0x120]
02c3d4bc  stp d9,d8,[sp, #0x130]
02c3d4c0  str x29,[sp, #0x140]
02c3d4c4  stp x30,x21,[sp, #0x150]
02c3d4c8  stp x20,x19,[sp, #0x160]
02c3d4cc  adrp x20,0x625c000
02c3d4d0  mov x21,x1
02c3d4d4  mov x19,x0
02c3d4d8  ldrb w8,[x20, #0xb3]
02c3d4dc  tbnz w8,#0x0,0x02c3d500
02c3d4e0  adrp x0,0x5e5d000
02c3d4e4  ldr x0,[x0, #0x5b0]
02c3d4e8  bl 0x029f5a50
02c3d4ec  adrp x0,0x5e62000
02c3d4f0  ldr x0,[x0, #0x670]
02c3d4f4  bl 0x029f5a50
02c3d4f8  mov w8,#0x1
02c3d4fc  strb w8,[x20, #0xb3]
02c3d500  movi v0.2D,#0x0
02c3d504  mov x0,x19
02c3d508  mov x1,x21
02c3d50c  stp q0,q0,[sp, #0xe0]
02c3d510  bl 0x02c419d0
02c3d514  mov x0,x19
02c3d518  bl 0x02c41b8c
02c3d51c  ldr s3,[x19, #0x1e8]
02c3d520  ldr s4,[x19, #0x1ec]
02c3d524  fmov s10,s0
02c3d528  ldr s5,[x19, #0x1f0]
02c3d52c  fmov s9,s1
02c3d530  str s2,[sp, #0x14c]
02c3d534  bl 0x02c41c7c
02c3d538  ldr s12,[x19, #0x13c]
02c3d53c  mov x0,xzr
02c3d540  fmov s15,s0
02c3d544  fmov s14,s1
02c3d548  fmov s13,s2
02c3d54c  bl 0x057d569c
02c3d550  ldr s8,[x19, #0xa0]
02c3d554  add x8,x19,#0x50
02c3d558  add x9,x19,#0x70
02c3d55c  fmov s11,s0
02c3d560  mov w10,#0x98
02c3d564  fcmp s0,s8
02c3d568  csel x9,x9,x8,mi
02c3d56c  ldr x8,[x19, #0x48]
02c3d570  ldp q0,q1,[x9]
02c3d574  mov w9,#0x90
02c3d578  csel x9,x10,x9,mi
02c3d57c  stp q0,q1,[sp, #0xe0]
02c3d580  cbz x8,0x02c3d99c
02c3d584  ldr w8,[x8, #0x18]
02c3d588  ldr x20,[x19, x9, LSL #0x0]
02c3d58c  mov w0,wzr
02c3d590  cmp w8,#0x2
02c3d594  b.le 0x02c3d600
02c3d598  cmp w8,#0x4
02c3d59c  b.gt 0x02c3d664
02c3d5a0  cmp w8,#0x3
02c3d5a4  b.eq 0x02c3d73c
02c3d5a8  cmp w8,#0x4
02c3d5ac  b.ne 0x02c3d978
02c3d5b0  fmov s0,s15
02c3d5b4  fmov s1,s14
02c3d5b8  fmov s2,s13
02c3d5bc  fmov s3,s12
02c3d5c0  bl 0x02c41da8
02c3d5c4  ldr x8,[x19, #0x48]
02c3d5c8  cbz x8,0x02c3d99c
02c3d5cc  fmov s3,s0
02c3d5d0  fmov s4,s1
02c3d5d4  ldr s6,[x8, #0x4c]
02c3d5d8  fcmp s11,s8
02c3d5dc  ldp q0,q1,[sp, #0xe0]
02c3d5e0  fmov s5,s2
02c3d5e4  ldr s2,[sp, #0x14c]
02c3d5e8  fmov s7,0x3fc00000
02c3d5ec  add x2,sp,#0x40
02c3d5f0  mov x0,x19
02c3d5f4  mov w1,#0x4
02c3d5f8  stp q0,q1,[sp, #0x40]
02c3d5fc  b 0x02c3d6bc
02c3d600  cbz w8,0x02c3d6cc
02c3d604  cmp w8,#0x1
02c3d608  b.eq 0x02c3d7bc
02c3d60c  cmp w8,#0x2
02c3d610  b.ne 0x02c3d978
02c3d614  fmov s0,s15
02c3d618  fmov s1,s14
02c3d61c  fmov s2,s13
02c3d620  fmov s3,s12
02c3d624  bl 0x02c41da8
02c3d628  ldr x8,[x19, #0x48]
02c3d62c  cbz x8,0x02c3d99c
02c3d630  fmov s3,s0
02c3d634  fmov s4,s1
02c3d638  ldr s7,[x8, #0x64]
02c3d63c  fcmp s11,s8
02c3d640  ldp q0,q1,[sp, #0xe0]
02c3d644  fmov s5,s2
02c3d648  ldr s2,[sp, #0x14c]
02c3d64c  movi d6,#0x0
02c3d650  add x2,sp,#0x80
02c3d654  mov x0,x19
02c3d658  mov w1,#0x2
02c3d65c  stp q0,q1,[sp, #0x80]
02c3d660  b 0x02c3d6bc
02c3d664  cmp w8,#0x5
02c3d668  b.eq 0x02c3d780
02c3d66c  cmp w8,#0x6
02c3d670  b.ne 0x02c3d978
02c3d674  fmov s0,s15
02c3d678  fmov s1,s14
02c3d67c  fmov s2,s13
02c3d680  fmov s3,s12
02c3d684  bl 0x02c41da8
02c3d688  ldr x8,[x19, #0x48]
02c3d68c  cbz x8,0x02c3d99c
02c3d690  fmov s3,s0
02c3d694  fmov s4,s1
02c3d698  mov x2,sp
02c3d69c  fcmp s11,s8
02c3d6a0  ldp q0,q1,[sp, #0xe0]
02c3d6a4  ldp s6,s7,[x8, #0x60]
02c3d6a8  fmov s5,s2
02c3d6ac  ldr s2,[sp, #0x14c]
02c3d6b0  mov x0,x19
02c3d6b4  mov w1,#0x6
02c3d6b8  stp q0,q1,[sp]
02c3d6bc  cset w4,mi
02c3d6c0  fmov s0,s10
02c3d6c4  fmov s1,s9
02c3d6c8  b 0x02c3d814
02c3d6cc  fmov s0,s15
02c3d6d0  fmov s1,s14
02c3d6d4  fmov s2,s13
02c3d6d8  fmov s3,s12
02c3d6dc  fcmp s11,s8
02c3d6e0  cset w21,mi
02c3d6e4  bl 0x02c41da8
02c3d6e8  fmov s3,s0
02c3d6ec  fmov s4,s1
02c3d6f0  adrp x8,0x116c000
02c3d6f4  ldp q0,q1,[sp, #0xe0]
02c3d6f8  fmov s5,s2
02c3d6fc  movi d6,#0x0
02c3d700  ldr s7,[x8, #0x218]
02c3d704  ldr s2,[sp, #0x14c]
02c3d708  add x2,sp,#0xc0
02c3d70c  mov x0,x19
02c3d710  mov w1,wzr
02c3d714  stp q0,q1,[sp, #0xc0]
02c3d718  fmov s0,s10
02c3d71c  fmov s1,s9
02c3d720  mov x3,x20
02c3d724  mov w4,w21
02c3d728  bl 0x02c41e38
02c3d72c  mov w8,w0
02c3d730  mov w0,wzr
02c3d734  tbnz w8,#0x0,0x02c3d820
02c3d738  b 0x02c3d978
02c3d73c  ldp q0,q1,[sp, #0xe0]
02c3d740  fcmp s11,s8
02c3d744  fmov s3,s15
02c3d748  fmov s4,s14
02c3d74c  fmov s5,s13
02c3d750  ldr s2,[sp, #0x14c]
02c3d754  add x1,sp,#0x60
02c3d758  mov x0,x19
02c3d75c  stp q0,q1,[sp, #0x60]
02c3d760  fmov s0,s10
02c3d764  fmov s1,s9
02c3d768  cset w3,mi
02c3d76c  mov x2,x20
02c3d770  bl 0x02c41fbc
02c3d774  tbnz w0,#0x0,0x02c3d820
02c3d778  mov w0,wzr
02c3d77c  b 0x02c3d978
02c3d780  ldp q0,q1,[sp, #0xe0]
02c3d784  fcmp s11,s8
02c3d788  fmov s3,s12
02c3d78c  ldr s2,[sp, #0x14c]
02c3d790  add x2,sp,#0x20
02c3d794  mov x0,x19
02c3d798  mov x1,x21
02c3d79c  mov x3,x20
02c3d7a0  stp q0,q1,[sp, #0x20]
02c3d7a4  fmov s0,s10
02c3d7a8  fmov s1,s9
02c3d7ac  cset w4,mi
02c3d7b0  bl 0x02c421b4
02c3d7b4  tbz w0,#0x0,0x02c3d778
02c3d7b8  b 0x02c3d820
02c3d7bc  fmov s0,s15
02c3d7c0  fmov s1,s14
02c3d7c4  fmov s2,s13
02c3d7c8  fmov s3,s12
02c3d7cc  bl 0x02c41da8
02c3d7d0  ldr x8,[x19, #0x48]
02c3d7d4  cbz x8,0x02c3d99c
02c3d7d8  fmov s3,s0
02c3d7dc  fmov s4,s1
02c3d7e0  ldr s7,[x8, #0x64]
02c3d7e4  ldp q0,q1,[sp, #0xe0]
02c3d7e8  fmov s5,s2
02c3d7ec  fcmp s11,s8
02c3d7f0  movi d6,#0x0
02c3d7f4  ldr s2,[sp, #0x14c]
02c3d7f8  add x2,sp,#0xa0
02c3d7fc  mov x0,x19
02c3d800  mov w1,#0x1
02c3d804  stp q0,q1,[sp, #0xa0]
02c3d808  fmov s0,s10
02c3d80c  fmov s1,s9
02c3d810  cset w4,mi
02c3d814  mov x3,x20
02c3d818  bl 0x02c41e38
02c3d81c  tbz w0,#0x0,0x02c3d778
02c3d820  ldr x8,[x19, #0x48]
02c3d824  cbz x8,0x02c3d99c
02c3d828  ldr w8,[x8, #0x18]
02c3d82c  cmp w8,#0x3
02c3d830  b.eq 0x02c3d8c8
02c3d834  adrp x8,0x116c000
02c3d838  ldr s0,[x19, #0xb0]
02c3d83c  ldr s8,[x19, #0x13c]
02c3d840  ldr s1,[x8, #0x94]
02c3d844  fmaxnm s0,s0,s1
02c3d848  bl 0x05afb2d0
02c3d84c  adrp x8,0x116c000
02c3d850  movi d3,#0x0
02c3d854  ldr s4,[x19, #0x130]
02c3d858  ldr s1,[x8, #0x118]
02c3d85c  adrp x8,0x116b000
02c3d860  ldr s5,[x19, #0x134]
02c3d864  fadd s0,s0,s1
02c3d868  ldr s1,[x8, #0xf14]
02c3d86c  fdiv s0,s0,s1
02c3d870  fmov s1,0x3f800000
02c3d874  fcmp s0,s1
02c3d878  fcsel s2,s1,s0,gt
02c3d87c  fcmp s0,#0.0
02c3d880  fsub s2,s1,s2
02c3d884  fcsel s0,s1,s2,mi
02c3d888  fcmp s0,s1
02c3d88c  fcsel s2,s1,s0,gt
02c3d890  fcmp s0,#0.0
02c3d894  ldr s0,[x19, #0x12c]
02c3d898  fsub s4,s4,s0
02c3d89c  fcsel s2,s3,s2,mi
02c3d8a0  fcmp s5,s1
02c3d8a4  fcsel s1,s1,s5,gt
02c3d8a8  fcmp s5,#0.0
02c3d8ac  fmul s2,s4,s2
02c3d8b0  fcsel s1,s3,s1,mi
02c3d8b4  fadd s0,s0,s2
02c3d8b8  fsub s0,s0,s8
02c3d8bc  fmul s0,s1,s0
02c3d8c0  fadd s0,s8,s0
02c3d8c4  str s0,[x19, #0x13c]
02c3d8c8  ldr x0,[x19, #0x100]
02c3d8cc  cbz x0,0x02c3d99c
02c3d8d0  mov x1,xzr
02c3d8d4  bl 0x02b9be34
02c3d8d8  ldr x0,[x19, #0x108]
02c3d8dc  cbz x0,0x02c3d99c
02c3d8e0  mov x1,xzr
02c3d8e4  bl 0x02b9c250
02c3d8e8  ldr x0,[x19, #0xf8]
02c3d8ec  cbz x0,0x02c3d99c
02c3d8f0  mov x1,xzr
02c3d8f4  bl 0x058617a8
02c3d8f8  adrp x8,0x5e5d000
02c3d8fc  ldr x8,[x8, #0x5b0]
02c3d900  ldr x8,[x8]
02c3d904  ldr x8,[x8, #0xb8]
02c3d908  ldrb w8,[x8]
02c3d90c  cbnz w8,0x02c3d974
02c3d910  adrp x8,0x5e62000
02c3d914  ldr x8,[x8, #0x670]
02c3d918  ldr x8,[x8]
02c3d91c  ldr x8,[x8, #0xb8]
02c3d920  ldrb w8,[x8, #0x10]
02c3d924  cbnz w8,0x02c3d974
02c3d928  adrp x19,0x625b000
02c3d92c  ldrb w8,[x19, #0xa57]
02c3d930  cbnz w8,0x02c3d948
02c3d934  adrp x0,0x5e5d000
02c3d938  ldr x0,[x0, #0xd70]
02c3d93c  bl 0x029f5a50
02c3d940  mov w8,#0x1
02c3d944  strb w8,[x19, #0xa57]
02c3d948  adrp x8,0x5e5d000
02c3d94c  ldr x8,[x8, #0xd70]
02c3d950  ldr x8,[x8]
02c3d954  ldr x8,[x8, #0xb8]
02c3d958  ldr x0,[x8]
02c3d95c  cbz x0,0x02c3d99c
02c3d960  fmov s0,0x3f800000
02c3d964  mov w1,#0x8
02c3d968  mov x2,xzr
02c3d96c  mov x3,xzr
02c3d970  bl 0x02c1f10c
02c3d974  mov w0,#0x1
02c3d978  ldp x20,x19,[sp, #0x160]
02c3d97c  ldr x29,[sp, #0x140]
02c3d980  ldp x30,x21,[sp, #0x150]
02c3d984  ldp d9,d8,[sp, #0x130]
02c3d988  ldp d11,d10,[sp, #0x120]
02c3d98c  ldp d13,d12,[sp, #0x110]
02c3d990  ldp d15,d14,[sp, #0x100]
02c3d994  add sp,sp,#0x170
02c3d998  ret
02c3d99c  bl 0x029f5cfc
