02c604c8  sub sp,sp,#0x170
02c604cc  str x29,[sp, #0x120]
02c604d0  stp x30,x25,[sp, #0x130]
02c604d4  stp x24,x23,[sp, #0x140]
02c604d8  stp x22,x21,[sp, #0x150]
02c604dc  stp x20,x19,[sp, #0x160]
02c604e0  adrp x21,0x625c000
02c604e4  adrp x24,0x5e5d000
02c604e8  adrp x22,0x5e59000
02c604ec  ldrb w8,[x21, #0x21c]
02c604f0  ldr x24,[x24, #0xd38]
02c604f4  ldr x22,[x22, #0x1c0]
02c604f8  mov w20,w1
02c604fc  mov x19,x0
02c60500  tbnz w8,#0x0,0x02c60548
02c60504  adrp x0,0x5e5d000
02c60508  ldr x0,[x0, #0xd38]
02c6050c  bl 0x029f5a50
02c60510  adrp x0,0x5e5d000
02c60514  ldr x0,[x0, #0x4c8]
02c60518  bl 0x029f5a50
02c6051c  adrp x0,0x5e62000
02c60520  ldr x0,[x0, #0xb8]
02c60524  bl 0x029f5a50
02c60528  adrp x0,0x5e59000
02c6052c  ldr x0,[x0, #0x1c0]
02c60530  bl 0x029f5a50
02c60534  adrp x0,0x5e63000
02c60538  ldr x0,[x0, #0x810]
02c6053c  bl 0x029f5a50
02c60540  mov w8,#0x1
02c60544  strb w8,[x21, #0x21c]
02c60548  movi v0.2D,#0x0
02c6054c  ldr x8,[x24]
02c60550  ldr x0,[x22]
02c60554  ldr x8,[x8, #0xb8]
02c60558  ldr w9,[x0, #0xe4]
02c6055c  stp q0,q0,[sp, #0x80]
02c60560  stp q0,q0,[sp, #0xa0]
02c60564  stp q0,q0,[sp, #0xc0]
02c60568  stp q0,q0,[sp, #0xe0]
02c6056c  stp q0,q0,[sp, #0x100]
02c60570  ldr x21,[x8]
02c60574  cbnz w9,0x02c6057c
02c60578  bl 0x029f5bd0
02c6057c  mov x0,x21
02c60580  mov x1,xzr
02c60584  mov x2,xzr
02c60588  bl 0x057e14b4
02c6058c  tbz w0,#0x0,0x02c605ac
02c60590  ldp x20,x19,[sp, #0x160]
02c60594  ldr x29,[sp, #0x120]
02c60598  ldp x22,x21,[sp, #0x150]
02c6059c  ldp x24,x23,[sp, #0x140]
02c605a0  ldp x30,x25,[sp, #0x130]
02c605a4  add sp,sp,#0x170
02c605a8  ret
02c605ac  ldr x8,[x24]
02c605b0  ldr x8,[x8, #0xb8]
02c605b4  ldr x8,[x8]
02c605b8  cbz x8,0x02c608ec
02c605bc  tbnz w20,#0x1f,0x02c60590
02c605c0  ldr x8,[x8, #0x20]
02c605c4  cbz x8,0x02c60590
02c605c8  ldr w9,[x8, #0x18]
02c605cc  cmp w9,w20
02c605d0  b.le 0x02c60590
02c605d4  ldr x0,[x22]
02c605d8  add x8,x8,w20, UXTW  #0x3
02c605dc  str w20,[x19, #0x70]
02c605e0  ldr x21,[x19, #0x20]
02c605e4  mov w23,w20
02c605e8  ldr w9,[x0, #0xe4]
02c605ec  ldr x25,[x8, #0x20]
02c605f0  cbnz w9,0x02c605f8
02c605f4  bl 0x029f5bd0
02c605f8  mov x0,x21
02c605fc  mov x1,xzr
02c60600  mov x2,xzr
02c60604  bl 0x057dfa70
02c60608  tbz w0,#0x0,0x02c60698
02c6060c  ldr x8,[x24]
02c60610  ldr x8,[x8, #0xb8]
02c60614  ldr x8,[x8]
02c60618  cbz x8,0x02c608ec
02c6061c  ldr x8,[x8, #0x28]
02c60620  cbz x8,0x02c60698
02c60624  ldr w9,[x8, #0x18]
02c60628  cmp w9,w20
02c6062c  b.le 0x02c60698
02c60630  ldr x0,[x22]
02c60634  add x8,x8,x23, LSL #0x3
02c60638  ldr w9,[x0, #0xe4]
02c6063c  ldr x21,[x8, #0x20]
02c60640  cbnz w9,0x02c60648
02c60644  bl 0x029f5bd0
02c60648  mov x0,x21
02c6064c  mov x1,xzr
02c60650  mov x2,xzr
02c60654  bl 0x057dfa70
02c60658  tbz w0,#0x0,0x02c60698
02c6065c  ldr x8,[x24]
02c60660  ldr x8,[x8, #0xb8]
02c60664  ldr x8,[x8]
02c60668  cbz x8,0x02c608ec
02c6066c  ldr x8,[x8, #0x28]
02c60670  cbz x8,0x02c608ec
02c60674  ldr w9,[x8, #0x18]
02c60678  cmp w9,w20
02c6067c  b.ls 0x02c609c8
02c60680  ldr x0,[x19, #0x20]
02c60684  cbz x0,0x02c608ec
02c60688  add x8,x8,x23, LSL #0x3
02c6068c  mov x2,xzr
02c60690  ldr x1,[x8, #0x20]
02c60694  bl 0x058d34cc
02c60698  cbz x25,0x02c608ec
02c6069c  ldr w0,[x25, #0x18]
02c606a0  add x8,sp,#0x60
02c606a4  mov x1,xzr
02c606a8  bl 0x046544b8
02c606ac  ldp q1,q0,[sp, #0x60]
02c606b0  add x8,sp,#0x40
02c606b4  mov x1,xzr
02c606b8  stp q1,q0,[sp, #0x100]
02c606bc  ldr w0,[x25, #0x1c]
02c606c0  bl 0x046544b8
02c606c4  ldp q0,q1,[sp, #0x40]
02c606c8  add x8,sp,#0x20
02c606cc  ldr w0,[x25, #0x20]
02c606d0  mov x1,xzr
02c606d4  stp q0,q1,[sp, #0xe0]
02c606d8  bl 0x046544b8
02c606dc  ldr x0,[x22]
02c606e0  ldp q0,q1,[sp, #0x20]
02c606e4  ldr x21,[x19, #0x38]
02c606e8  ldr w8,[x0, #0xe4]
02c606ec  stp q0,q1,[sp, #0xc0]
02c606f0  cbnz w8,0x02c606f8
02c606f4  bl 0x029f5bd0
02c606f8  mov x0,x21
02c606fc  mov x1,xzr
02c60700  mov x2,xzr
02c60704  bl 0x057dfa70
02c60708  tbz w0,#0x0,0x02c60754
02c6070c  ldr x21,[x19, #0x38]
02c60710  add x0,sp,#0x100
02c60714  mov x1,xzr
02c60718  bl 0x0465bddc
02c6071c  adrp x8,0x5e63000
02c60720  mov x1,x0
02c60724  mov x2,xzr
02c60728  ldr x8,[x8, #0x810]
02c6072c  ldr x8,[x8]
02c60730  mov x0,x8
02c60734  bl 0x046b6c0c
02c60738  cbz x21,0x02c608ec
02c6073c  ldr x8,[x21]
02c60740  mov x1,x0
02c60744  mov x0,x21
02c60748  ldr x9,[x8, #0x558]
02c6074c  ldr x2,[x8, #0x560]
02c60750  blr x9
02c60754  ldr x0,[x22]
02c60758  ldr x21,[x19, #0x40]
02c6075c  ldr w8,[x0, #0xe4]
02c60760  cbnz w8,0x02c60768
02c60764  bl 0x029f5bd0
02c60768  mov x0,x21
02c6076c  mov x1,xzr
02c60770  mov x2,xzr
02c60774  bl 0x057dfa70
02c60778  tbz w0,#0x0,0x02c60834
02c6077c  ldr x21,[x19, #0x40]
02c60780  add x8,sp,#0x60
02c60784  mov w0,wzr
02c60788  mov x1,xzr
02c6078c  bl 0x046544b8
02c60790  ldp q0,q1,[sp, #0x60]
02c60794  add x8,sp,#0x40
02c60798  mov w0,#0x64
02c6079c  mov x1,xzr
02c607a0  stp q0,q1,[sp, #0xa0]
02c607a4  bl 0x046544b8
02c607a8  adrp x8,0x5e62000
02c607ac  ldr x8,[x8, #0xb8]
02c607b0  ldp q0,q1,[sp, #0x40]
02c607b4  ldr x0,[x8]
02c607b8  stp q0,q1,[sp, #0x80]
02c607bc  ldr w8,[x0, #0xe4]
02c607c0  cbnz w8,0x02c607c8
02c607c4  bl 0x029f5bd0
02c607c8  add x8,sp,#0x20
02c607cc  add x0,sp,#0xe0
02c607d0  add x1,sp,#0xa0
02c607d4  add x2,sp,#0x80
02c607d8  mov x3,xzr
02c607dc  bl 0x0465db68
02c607e0  adrp x8,0x5e5d000
02c607e4  mov x1,sp
02c607e8  ldr x8,[x8, #0x4c8]
02c607ec  ldp q0,q1,[sp, #0x20]
02c607f0  ldr x0,[x8]
02c607f4  stp q0,q1,[sp]
02c607f8  bl 0x029f5bd8
02c607fc  adrp x8,0x5e63000
02c60800  mov x1,x0
02c60804  mov x2,xzr
02c60808  ldr x8,[x8, #0x810]
02c6080c  ldr x8,[x8]
02c60810  mov x0,x8
02c60814  bl 0x046b6c0c
02c60818  cbz x21,0x02c608ec
02c6081c  ldr x8,[x21]
02c60820  mov x1,x0
02c60824  mov x0,x21
02c60828  ldr x9,[x8, #0x558]
02c6082c  ldr x2,[x8, #0x560]
02c60830  blr x9
02c60834  ldr x0,[x22]
02c60838  ldr x21,[x19, #0x48]
02c6083c  ldr w8,[x0, #0xe4]
02c60840  cbnz w8,0x02c60848
02c60844  bl 0x029f5bd0
02c60848  mov x0,x21
02c6084c  mov x1,xzr
02c60850  mov x2,xzr
02c60854  bl 0x057dfa70
02c60858  tbz w0,#0x0,0x02c608a4
02c6085c  ldr x21,[x19, #0x48]
02c60860  add x0,sp,#0xc0
02c60864  mov x1,xzr
02c60868  bl 0x0465bddc
02c6086c  adrp x8,0x5e63000
02c60870  mov x1,x0
02c60874  mov x2,xzr
02c60878  ldr x8,[x8, #0x810]
02c6087c  ldr x8,[x8]
02c60880  mov x0,x8
02c60884  bl 0x046b6c0c
02c60888  cbz x21,0x02c608ec
02c6088c  ldr x8,[x21]
02c60890  mov x1,x0
02c60894  mov x0,x21
02c60898  ldr x9,[x8, #0x558]
02c6089c  ldr x2,[x8, #0x560]
02c608a0  blr x9
02c608a4  ldr x8,[x19, #0x50]
02c608a8  cbz x8,0x02c608ec
02c608ac  mov x21,xzr
02c608b0  ldr w9,[x8, #0x18]
02c608b4  cmp w21,w9
02c608b8  b.ge 0x02c608f0
02c608bc  cmp w21,w9
02c608c0  b.cs 0x02c609c8
02c608c4  add x8,x8,x21, LSL #0x3
02c608c8  ldr x0,[x8, #0x20]
02c608cc  cbz x0,0x02c608ec
02c608d0  cmp w23,w21
02c608d4  mov x2,xzr
02c608d8  cset w1,eq
02c608dc  bl 0x057dff3c
02c608e0  ldr x8,[x19, #0x50]
02c608e4  add x21,x21,#0x1
02c608e8  cbnz x8,0x02c608b0
02c608ec  bl 0x029f5cfc
02c608f0  ldr x8,[x19, #0x58]
02c608f4  cbz x8,0x02c608ec
02c608f8  ldr w9,[x8, #0x18]
02c608fc  cmp w9,w20
02c60900  b.ls 0x02c609c8
02c60904  ldr x0,[x19, #0x28]
02c60908  cbz x0,0x02c608ec
02c6090c  add x8,x8,x23, LSL #0x4
02c60910  ldr x9,[x0]
02c60914  ldp s2,s3,[x8, #0x28]
02c60918  ldr x1,[x9, #0x2b0]
02c6091c  ldp s0,s1,[x8, #0x20]
02c60920  ldr x8,[x9, #0x2a8]
02c60924  blr x8
02c60928  ldr x0,[x22]
02c6092c  ldr x21,[x19, #0x60]
02c60930  ldr w8,[x0, #0xe4]
02c60934  cbnz w8,0x02c6093c
02c60938  bl 0x029f5bd0
02c6093c  mov x0,x21
02c60940  mov x1,xzr
02c60944  mov x2,xzr
02c60948  bl 0x057dfa70
02c6094c  tbz w0,#0x0,0x02c60968
02c60950  ldr x0,[x19, #0x60]
02c60954  cbz x0,0x02c608ec
02c60958  cmp w23,#0x0
02c6095c  mov x2,xzr
02c60960  cset w1,ne
02c60964  bl 0x057dff3c
02c60968  ldr x0,[x22]
02c6096c  ldr x21,[x19, #0x68]
02c60970  ldr w8,[x0, #0xe4]
02c60974  cbnz w8,0x02c6097c
02c60978  bl 0x029f5bd0
02c6097c  mov x0,x21
02c60980  mov x1,xzr
02c60984  mov x2,xzr
02c60988  bl 0x057dfa70
02c6098c  tbz w0,#0x0,0x02c609a8
02c60990  ldr x0,[x19, #0x68]
02c60994  cbz x0,0x02c608ec
02c60998  cmp w20,#0xc
02c6099c  mov x2,xzr
02c609a0  cset w1,lt
02c609a4  bl 0x057dff3c
02c609a8  mov x0,x19
02c609ac  mov x1,xzr
02c609b0  bl 0x057dc1c8
02c609b4  cbz x0,0x02c608ec
02c609b8  mov w1,#0x1
02c609bc  mov x2,xzr
02c609c0  bl 0x057dff3c
02c609c4  b 0x02c60590
02c609c8  bl 0x029f5d04
