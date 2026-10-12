02c723ec  sub sp,sp,#0x130
02c723f0  stp x29,x30,[sp, #0xd0]
02c723f4  stp x28,x27,[sp, #0xe0]
02c723f8  stp x26,x25,[sp, #0xf0]
02c723fc  stp x24,x23,[sp, #0x100]
02c72400  stp x22,x21,[sp, #0x110]
02c72404  stp x20,x19,[sp, #0x120]
02c72408  adrp x22,0x625c000
02c7240c  adrp x27,0x5e59000
02c72410  mov x19,x3
02c72414  ldrb w8,[x22, #0x2da]
02c72418  ldr x27,[x27, #0x1c0]
02c7241c  mov x20,x2
02c72420  mov x24,x1
02c72424  mov x21,x0
02c72428  tbnz w8,#0x0,0x02c724ac
02c7242c  adrp x0,0x5e63000
02c72430  ldr x0,[x0, #0xba8]
02c72434  bl 0x029f5a50
02c72438  adrp x0,0x5e63000
02c7243c  ldr x0,[x0, #0xbb0]
02c72440  bl 0x029f5a50
02c72444  adrp x0,0x5e63000
02c72448  ldr x0,[x0, #0xbb8]
02c7244c  bl 0x029f5a50
02c72450  adrp x0,0x5e61000
02c72454  ldr x0,[x0, #0x258]
02c72458  bl 0x029f5a50
02c7245c  adrp x0,0x5e63000
02c72460  ldr x0,[x0, #0xbc0]
02c72464  bl 0x029f5a50
02c72468  adrp x0,0x5e63000
02c7246c  ldr x0,[x0, #0xbc8]
02c72470  bl 0x029f5a50
02c72474  adrp x0,0x5e63000
02c72478  ldr x0,[x0, #0xbd0]
02c7247c  bl 0x029f5a50
02c72480  adrp x0,0x5e63000
02c72484  ldr x0,[x0, #0xbd8]
02c72488  bl 0x029f5a50
02c7248c  adrp x0,0x5e63000
02c72490  ldr x0,[x0, #0xbe0]
02c72494  bl 0x029f5a50
02c72498  adrp x0,0x5e59000
02c7249c  ldr x0,[x0, #0x1c0]
02c724a0  bl 0x029f5a50
02c724a4  mov w8,#0x1
02c724a8  strb w8,[x22, #0x2da]
02c724ac  movi v0.2D,#0x0
02c724b0  mov x0,x20
02c724b4  mov x1,xzr
02c724b8  str xzr,[x20]
02c724bc  stp q0,q0,[sp, #0x70]
02c724c0  stp q0,q0,[sp, #0x90]
02c724c4  stp q0,q0,[sp, #0xb0]
02c724c8  bl 0x029f59f4
02c724cc  mov x0,x19
02c724d0  mov x1,xzr
02c724d4  str xzr,[x19]
02c724d8  bl 0x029f59f4
02c724dc  bl 0x02c7448c
02c724e0  ldr x8,[x27]
02c724e4  mov x22,x0
02c724e8  ldr w9,[x8, #0xe4]
02c724ec  cbnz w9,0x02c724f8
02c724f0  mov x0,x8
02c724f4  bl 0x029f5bd0
02c724f8  mov x0,x22
02c724fc  mov x1,xzr
02c72500  mov x2,xzr
02c72504  bl 0x057dfa70
02c72508  tbz w0,#0x0,0x02c72530
02c7250c  cbz x22,0x02c727d0
02c72510  mov x0,x22
02c72514  mov x1,xzr
02c72518  bl 0x057dc1c8
02c7251c  cbz x0,0x02c727d0
02c72520  mov x1,xzr
02c72524  bl 0x057e00b4
02c72528  mov w23,w0
02c7252c  b 0x02c72534
02c72530  mov w23,wzr
02c72534  adrp x8,0x5e63000
02c72538  adrp x25,0x5e63000
02c7253c  adrp x26,0x5e61000
02c72540  ldr x8,[x8, #0xbe0]
02c72544  ldr x25,[x25, #0xbd8]
02c72548  ldr x26,[x26, #0x258]
02c7254c  ldr x0,[x8]
02c72550  bl 0x029f5cec
02c72554  ldr x1,[x25]
02c72558  mov x25,x0
02c7255c  bl 0x0454d050
02c72560  ldr x0,[x26]
02c72564  ldr w8,[x0, #0xe4]
02c72568  cbnz w8,0x02c72570
02c7256c  bl 0x029f5bd0
02c72570  mov x0,xzr
02c72574  bl 0x05ace848
02c72578  cbz x0,0x02c727d0
02c7257c  mov x1,x24
02c72580  mov x2,x25
02c72584  mov x3,xzr
02c72588  bl 0x05acf20c
02c7258c  cbz x25,0x02c727d0
02c72590  adrp x8,0x5e63000
02c72594  adrp x28,0x5e63000
02c72598  adrp x29,0x5e63000
02c7259c  ldr x8,[x8, #0xbd0]
02c725a0  adrp x26,0x5e63000
02c725a4  ldr x28,[x28, #0xbb0]
02c725a8  ldr x29,[x29, #0xbc8]
02c725ac  ldr x26,[x26, #0xbc0]
02c725b0  mov x0,x25
02c725b4  ldr x1,[x8]
02c725b8  add x8,sp,#0x10
02c725bc  bl 0x0454e6c0
02c725c0  add x0,sp,#0x70
02c725c4  add x1,sp,#0x10
02c725c8  mov w2,#0x60
02c725cc  add x24,sp,#0x70
02c725d0  bl 0x05afb2b0
02c725d4  stp xzr,x24,[sp, #0x10]
02c725d8  ldr x1,[x28]
02c725dc  add x0,sp,#0x70
02c725e0  bl 0x03fab3e0
02c725e4  tbz w0,#0x0,0x02c7278c
02c725e8  ldr x24,[sp, #0x80]
02c725ec  mov x0,x21
02c725f0  mov x1,xzr
02c725f4  bl 0x057dc1c8
02c725f8  mov x25,x0
02c725fc  ldr x0,[x27]
02c72600  ldr w8,[x0, #0xe4]
02c72604  cbnz w8,0x02c7260c
02c72608  bl 0x029f5bd0
02c7260c  mov x0,x24
02c72610  mov x1,x25
02c72614  mov x2,xzr
02c72618  bl 0x057e14b4
02c7261c  tbnz w0,#0x0,0x02c725d8
02c72620  ldr x0,[x27]
02c72624  ldr x25,[x20]
02c72628  ldr w8,[x0, #0xe4]
02c7262c  cbnz w8,0x02c72634
02c72630  bl 0x029f5bd0
02c72634  mov x0,x25
02c72638  mov x1,xzr
02c7263c  mov x2,xzr
02c72640  bl 0x057e14b4
02c72644  tbz w0,#0x0,0x02c726c4
02c72648  cbz x24,0x02c727c8
02c7264c  ldr x1,[x29]
02c72650  mov x0,x24
02c72654  bl 0x030a02b4
02c72658  mov x25,x0
02c7265c  ldr x0,[x27]
02c72660  ldr w8,[x0, #0xe4]
02c72664  cbnz w8,0x02c7266c
02c72668  bl 0x029f5bd0
02c7266c  mov x0,x25
02c72670  mov x1,xzr
02c72674  mov x2,xzr
02c72678  bl 0x057e14b4
02c7267c  tbz w0,#0x0,0x02c72690
02c72680  ldr x1,[x26]
02c72684  mov x0,x24
02c72688  bl 0x030a076c
02c7268c  mov x25,x0
02c72690  ldr x0,[x27]
02c72694  ldr w8,[x0, #0xe4]
02c72698  cbnz w8,0x02c726a0
02c7269c  bl 0x029f5bd0
02c726a0  mov x0,x25
02c726a4  mov x1,xzr
02c726a8  mov x2,xzr
02c726ac  bl 0x057dfa70
02c726b0  tbz w0,#0x0,0x02c726c4
02c726b4  str x25,[x20]
02c726b8  mov x0,x20
02c726bc  mov x1,x25
02c726c0  bl 0x029f59f4
02c726c4  ldr x0,[x27]
02c726c8  ldr x25,[x19]
02c726cc  ldr w8,[x0, #0xe4]
02c726d0  cbnz w8,0x02c726d8
02c726d4  bl 0x029f5bd0
02c726d8  mov x0,x25
02c726dc  mov x1,xzr
02c726e0  mov x2,xzr
02c726e4  bl 0x057e14b4
02c726e8  and w8,w23,w0
02c726ec  tbz w8,#0x0,0x02c7273c
02c726f0  cbz x24,0x02c727cc
02c726f4  mov x0,x24
02c726f8  mov x1,xzr
02c726fc  bl 0x057dfcf4
02c72700  cbz x22,0x02c727c0
02c72704  mov x24,x0
02c72708  mov x0,x22
02c7270c  mov x1,xzr
02c72710  bl 0x057dc0f8
02c72714  mov x1,x0
02c72718  cbz x24,0x02c727c4
02c7271c  mov x0,x24
02c72720  mov x2,xzr
02c72724  bl 0x057f1110
02c72728  tbz w0,#0x0,0x02c7273c
02c7272c  str x22,[x19]
02c72730  mov x0,x19
02c72734  mov x1,x22
02c72738  bl 0x029f59f4
02c7273c  ldr x0,[x27]
02c72740  ldr x24,[x20]
02c72744  ldr w8,[x0, #0xe4]
02c72748  cbnz w8,0x02c72750
02c7274c  bl 0x029f5bd0
02c72750  mov x0,x24
02c72754  mov x1,xzr
02c72758  mov x2,xzr
02c7275c  bl 0x057dfa70
02c72760  tbz w0,#0x0,0x02c725d8
02c72764  ldr x0,[x27]
02c72768  ldr x24,[x19]
02c7276c  ldr w8,[x0, #0xe4]
02c72770  cbnz w8,0x02c72778
02c72774  bl 0x029f5bd0
02c72778  mov x0,x24
02c7277c  mov x1,xzr
02c72780  mov x2,xzr
02c72784  bl 0x057dfa70
02c72788  tbz w0,#0x0,0x02c725d8
02c7278c  adrp x8,0x5e63000
02c72790  add x0,sp,#0x70
02c72794  ldr x8,[x8, #0xba8]
02c72798  ldr x1,[x8]
02c7279c  bl 0x03fab3dc
02c727a0  ldp x20,x19,[sp, #0x120]
02c727a4  ldp x22,x21,[sp, #0x110]
02c727a8  ldp x24,x23,[sp, #0x100]
02c727ac  ldp x26,x25,[sp, #0xf0]
02c727b0  ldp x28,x27,[sp, #0xe0]
02c727b4  ldp x29,x30,[sp, #0xd0]
02c727b8  add sp,sp,#0x130
02c727bc  ret
02c727c0  bl 0x029f5cfc
02c727c4  bl 0x029f5cfc
02c727c8  bl 0x029f5cfc
02c727cc  bl 0x029f5cfc
02c727d0  bl 0x029f5cfc
