02c0a470  str d8,[sp, #-0x70]!
02c0a474  stp x29,x30,[sp, #0x10]
02c0a478  stp x28,x27,[sp, #0x20]
02c0a47c  stp x26,x25,[sp, #0x30]
02c0a480  stp x24,x23,[sp, #0x40]
02c0a484  stp x22,x21,[sp, #0x50]
02c0a488  stp x20,x19,[sp, #0x60]
02c0a48c  sub sp,sp,#0x360
02c0a490  adrp x20,0x625b000
02c0a494  mov x19,x0
02c0a498  ldrb w8,[x20, #0xe95]
02c0a49c  tbnz w8,#0x0,0x02c0a550
02c0a4a0  adrp x0,0x5e62000
02c0a4a4  ldr x0,[x0, #0xe8]
02c0a4a8  bl 0x029f5a50
02c0a4ac  adrp x0,0x5e62000
02c0a4b0  ldr x0,[x0, #0xf0]
02c0a4b4  bl 0x029f5a50
02c0a4b8  adrp x0,0x5e59000
02c0a4bc  ldr x0,[x0, #0x1c0]
02c0a4c0  bl 0x029f5a50
02c0a4c4  adrp x0,0x5e62000
02c0a4c8  ldr x0,[x0, #0x40]
02c0a4cc  bl 0x029f5a50
02c0a4d0  adrp x0,0x5e62000
02c0a4d4  ldr x0,[x0, #0xf8]
02c0a4d8  bl 0x029f5a50
02c0a4dc  adrp x0,0x5e5d000
02c0a4e0  ldr x0,[x0, #0x4d0]
02c0a4e4  bl 0x029f5a50
02c0a4e8  adrp x0,0x5e5d000
02c0a4ec  ldr x0,[x0, #0x4d8]
02c0a4f0  bl 0x029f5a50
02c0a4f4  adrp x0,0x5e5d000
02c0a4f8  ldr x0,[x0, #0x4e0]
02c0a4fc  bl 0x029f5a50
02c0a500  adrp x0,0x5e58000
02c0a504  ldr x0,[x0, #0xf28]
02c0a508  bl 0x029f5a50
02c0a50c  adrp x0,0x5e62000
02c0a510  ldr x0,[x0, #0x100]
02c0a514  bl 0x029f5a50
02c0a518  adrp x0,0x5e62000
02c0a51c  ldr x0,[x0, #0x108]
02c0a520  bl 0x029f5a50
02c0a524  adrp x0,0x5e62000
02c0a528  ldr x0,[x0, #0x110]
02c0a52c  bl 0x029f5a50
02c0a530  adrp x0,0x5e62000
02c0a534  ldr x0,[x0, #0x118]
02c0a538  bl 0x029f5a50
02c0a53c  adrp x0,0x5e62000
02c0a540  ldr x0,[x0, #0xb0]
02c0a544  bl 0x029f5a50
02c0a548  mov w8,#0x1
02c0a54c  strb w8,[x20, #0xe95]
02c0a550  movi v0.2D,#0x0
02c0a554  ldr w8,[x19, #0x10]
02c0a558  adrp x27,0x5e62000
02c0a55c  add x9,x19,#0x17c
02c0a560  cmp w8,#0x1
02c0a564  stp q0,q0,[sp, #0x2e0]
02c0a568  stp q0,q0,[sp, #0x300]
02c0a56c  stp q0,q0,[sp, #0x320]
02c0a570  stp q0,q0,[sp, #0x340]
02c0a574  str q0,[sp, #0x2d0]
02c0a578  ldr x27,[x27, #0x40]
02c0a57c  stp q0,q0,[sp, #0x2b0]
02c0a580  str x9,[sp, #0x368]
02c0a584  str q0,[sp, #0x2a0]
02c0a588  b.eq 0x02c0a8c4
02c0a58c  cbnz w8,0x02c0b338
02c0a590  ldr x8,[x19, #0x20]
02c0a594  mov w9,#0xffffffff
02c0a598  str w9,[x19, #0x10]
02c0a59c  cbz x8,0x02c0b360
02c0a5a0  ldr x9,[x8, #0x108]
02c0a5a4  cbz x9,0x02c0b360
02c0a5a8  ldr w10,[x9, #0x18]
02c0a5ac  cbz w10,0x02c0ac14
02c0a5b0  ldr w11,[x9, #0x20]
02c0a5b4  cmp w10,#0x1
02c0a5b8  str w11,[x19, #0x44]
02c0a5bc  b.eq 0x02c0ac14
02c0a5c0  ldr w11,[x9, #0x24]
02c0a5c4  cmp w10,#0x2
02c0a5c8  str w11,[x19, #0x48]
02c0a5cc  b.ls 0x02c0ac14
02c0a5d0  ldr w9,[x9, #0x28]
02c0a5d4  add x0,x19,#0x60
02c0a5d8  mov x1,xzr
02c0a5dc  str w9,[x19, #0x4c]
02c0a5e0  ldr d0,[x8, #0x1d0]
02c0a5e4  str d0,[x19, #0x50]
02c0a5e8  ldr w9,[x8, #0x1d8]
02c0a5ec  str w9,[x19, #0x58]
02c0a5f0  ldur q0,[x8, #0x28]
02c0a5f4  ldur q1,[x8, #0x18]
02c0a5f8  stp q1,q0,[x19, #0x60]
02c0a5fc  bl 0x029f59f4
02c0a600  ldr x8,[x19, #0x20]
02c0a604  cbz x8,0x02c0b360
02c0a608  ldur q0,[x8, #0x48]
02c0a60c  ldur q1,[x8, #0x38]
02c0a610  add x0,x19,#0x80
02c0a614  mov x1,xzr
02c0a618  stp q1,q0,[x19, #0x80]
02c0a61c  bl 0x029f59f4
02c0a620  adrp x22,0x5e62000
02c0a624  ldr x22,[x22, #0xb0]
02c0a628  ldr x0,[x22]
02c0a62c  ldr w8,[x0, #0xe4]
02c0a630  cbnz w8,0x02c0a63c
02c0a634  bl 0x029f5bd0
02c0a638  ldr x0,[x22]
02c0a63c  ldr x8,[x0, #0xb8]
02c0a640  ldr x20,[x8, #0x8]
02c0a644  cbnz x20,0x02c0a6a0
02c0a648  ldr w9,[x0, #0xe4]
02c0a64c  cbnz w9,0x02c0a65c
02c0a650  bl 0x029f5bd0
02c0a654  ldr x8,[x22]
02c0a658  ldr x8,[x8, #0xb8]
02c0a65c  adrp x9,0x5e62000
02c0a660  ldr x9,[x9, #0xf0]
02c0a664  ldr x21,[x8]
02c0a668  ldr x0,[x9]
02c0a66c  bl 0x029f5cec
02c0a670  adrp x8,0x5e62000
02c0a674  mov x1,x21
02c0a678  mov x3,xzr
02c0a67c  ldr x8,[x8, #0x100]
02c0a680  mov x20,x0
02c0a684  ldr x2,[x8]
02c0a688  bl 0x0423534c
02c0a68c  ldr x8,[x22]
02c0a690  mov x1,x20
02c0a694  ldr x0,[x8, #0xb8]
02c0a698  str x20,[x0, #0x8]!
02c0a69c  bl 0x029f59f4
02c0a6a0  add x8,sp,#0x280
02c0a6a4  mov w0,#0x64
02c0a6a8  mov x1,xzr
02c0a6ac  bl 0x046544b8
02c0a6b0  ldr x0,[x27]
02c0a6b4  ldr w8,[x0, #0xe4]
02c0a6b8  cbnz w8,0x02c0a6c0
02c0a6bc  bl 0x029f5bd0
02c0a6c0  ldp q0,q1,[sp, #0x280]
02c0a6c4  add x8,sp,#0x260
02c0a6c8  add x1,sp,#0x240
02c0a6cc  mov x0,x20
02c0a6d0  stp q0,q1,[sp, #0x240]
02c0a6d4  bl 0x02c09f58
02c0a6d8  ldp q0,q1,[sp, #0x260]
02c0a6dc  add x0,x19,#0xa0
02c0a6e0  mov x1,xzr
02c0a6e4  stp q0,q1,[x19, #0xa0]
02c0a6e8  bl 0x029f59f4
02c0a6ec  ldr x0,[x22]
02c0a6f0  ldr w8,[x0, #0xe4]
02c0a6f4  cbnz w8,0x02c0a700
02c0a6f8  bl 0x029f5bd0
02c0a6fc  ldr x0,[x22]
02c0a700  ldr x8,[x0, #0xb8]
02c0a704  ldr x20,[x8, #0x10]
02c0a708  cbnz x20,0x02c0a764
02c0a70c  ldr w9,[x0, #0xe4]
02c0a710  cbnz w9,0x02c0a720
02c0a714  bl 0x029f5bd0
02c0a718  ldr x8,[x22]
02c0a71c  ldr x8,[x8, #0xb8]
02c0a720  adrp x9,0x5e62000
02c0a724  ldr x9,[x9, #0xf0]
02c0a728  ldr x21,[x8]
02c0a72c  ldr x0,[x9]
02c0a730  bl 0x029f5cec
02c0a734  adrp x8,0x5e62000
02c0a738  mov x1,x21
02c0a73c  mov x3,xzr
02c0a740  ldr x8,[x8, #0x108]
02c0a744  mov x20,x0
02c0a748  ldr x2,[x8]
02c0a74c  bl 0x0423534c
02c0a750  ldr x8,[x22]
02c0a754  mov x1,x20
02c0a758  ldr x0,[x8, #0xb8]
02c0a75c  str x20,[x0, #0x10]!
02c0a760  bl 0x029f59f4
02c0a764  add x8,sp,#0x280
02c0a768  mov w0,#0x64
02c0a76c  mov x1,xzr
02c0a770  bl 0x046544b8
02c0a774  ldr x0,[x27]
02c0a778  ldr w8,[x0, #0xe4]
02c0a77c  cbnz w8,0x02c0a784
02c0a780  bl 0x029f5bd0
02c0a784  ldp q0,q1,[sp, #0x280]
02c0a788  add x8,sp,#0x260
02c0a78c  add x1,sp,#0x220
02c0a790  mov x0,x20
02c0a794  stp q0,q1,[sp, #0x220]
02c0a798  bl 0x02c09f58
02c0a79c  ldp q0,q1,[sp, #0x260]
02c0a7a0  add x0,x19,#0xc0
02c0a7a4  mov x1,xzr
02c0a7a8  stp q0,q1,[x19, #0xc0]
02c0a7ac  bl 0x029f59f4
02c0a7b0  ldr x0,[x22]
02c0a7b4  ldr w8,[x0, #0xe4]
02c0a7b8  cbnz w8,0x02c0a7c4
02c0a7bc  bl 0x029f5bd0
02c0a7c0  ldr x0,[x22]
02c0a7c4  ldr x8,[x0, #0xb8]
02c0a7c8  ldr x20,[x8, #0x18]
02c0a7cc  cbnz x20,0x02c0a828
02c0a7d0  ldr w9,[x0, #0xe4]
02c0a7d4  cbnz w9,0x02c0a7e4
02c0a7d8  bl 0x029f5bd0
02c0a7dc  ldr x8,[x22]
02c0a7e0  ldr x8,[x8, #0xb8]
02c0a7e4  adrp x9,0x5e62000
02c0a7e8  ldr x9,[x9, #0xf0]
02c0a7ec  ldr x21,[x8]
02c0a7f0  ldr x0,[x9]
02c0a7f4  bl 0x029f5cec
02c0a7f8  adrp x8,0x5e62000
02c0a7fc  mov x1,x21
02c0a800  mov x3,xzr
02c0a804  ldr x8,[x8, #0x110]
02c0a808  mov x20,x0
02c0a80c  ldr x2,[x8]
02c0a810  bl 0x0423534c
02c0a814  ldr x8,[x22]
02c0a818  mov x1,x20
02c0a81c  ldr x0,[x8, #0xb8]
02c0a820  str x20,[x0, #0x18]!
02c0a824  bl 0x029f59f4
02c0a828  add x8,sp,#0x280
02c0a82c  mov w0,#0x64
02c0a830  mov x1,xzr
02c0a834  bl 0x046544b8
02c0a838  ldr x0,[x27]
02c0a83c  ldr w8,[x0, #0xe4]
02c0a840  cbnz w8,0x02c0a848
02c0a844  bl 0x029f5bd0
02c0a848  ldp q0,q1,[sp, #0x280]
02c0a84c  add x8,sp,#0x260
02c0a850  add x1,sp,#0x200
02c0a854  mov x0,x20
02c0a858  stp q0,q1,[sp, #0x200]
02c0a85c  bl 0x02c09f58
02c0a860  ldp q0,q1,[sp, #0x260]
02c0a864  add x0,x19,#0xe0
02c0a868  mov x1,xzr
02c0a86c  stp q0,q1,[x19, #0xe0]
02c0a870  bl 0x029f59f4
02c0a874  adrp x23,0x5e5d000
02c0a878  adrp x21,0x5e59000
02c0a87c  ldr x23,[x23, #0x4e0]
02c0a880  ldr x21,[x21, #0x1c0]
02c0a884  ldr x8,[x23]
02c0a888  ldr x0,[x21]
02c0a88c  ldr x8,[x8, #0xb8]
02c0a890  ldr w9,[x0, #0xe4]
02c0a894  ldr x20,[x8, #0x10]
02c0a898  cbnz w9,0x02c0a8a0
02c0a89c  bl 0x029f5bd0
02c0a8a0  mov x0,x20
02c0a8a4  mov x1,xzr
02c0a8a8  mov x2,xzr
02c0a8ac  bl 0x057dfa70
02c0a8b0  ldr x8,[x23]
02c0a8b4  ldr x8,[x8, #0xb8]
02c0a8b8  tbz w0,#0x0,0x02c0a8e0
02c0a8bc  ldr w9,[x8]
02c0a8c0  b 0x02c0a8e4
02c0a8c4  ldr x0,[x19, #0x1c0]
02c0a8c8  mov w8,#0xffffffff
02c0a8cc  str w8,[x19, #0x10]
02c0a8d0  cbz x0,0x02c0b360
02c0a8d4  mov x1,xzr
02c0a8d8  bl 0x04ff8844
02c0a8dc  b 0x02c0ac5c
02c0a8e0  mov w9,#0x64
02c0a8e4  ldr x0,[x21]
02c0a8e8  str w9,[x19, #0x100]
02c0a8ec  ldr x20,[x8, #0x10]
02c0a8f0  ldr w9,[x0, #0xe4]
02c0a8f4  cbnz w9,0x02c0a8fc
02c0a8f8  bl 0x029f5bd0
02c0a8fc  mov x0,x20
02c0a900  mov x1,xzr
02c0a904  mov x2,xzr
02c0a908  bl 0x057dfa70
02c0a90c  ldr x8,[x23]
02c0a910  ldr x8,[x8, #0xb8]
02c0a914  tbz w0,#0x0,0x02c0a920
02c0a918  ldr w9,[x8, #0x4]
02c0a91c  b 0x02c0a924
02c0a920  mov w9,#0x64
02c0a924  ldr x0,[x21]
02c0a928  str w9,[x19, #0x104]
02c0a92c  ldr x20,[x8, #0x10]
02c0a930  ldr w9,[x0, #0xe4]
02c0a934  cbnz w9,0x02c0a93c
02c0a938  bl 0x029f5bd0
02c0a93c  mov x0,x20
02c0a940  mov x1,xzr
02c0a944  mov x2,xzr
02c0a948  bl 0x057dfa70
02c0a94c  tbz w0,#0x0,0x02c0a960
02c0a950  ldr x8,[x23]
02c0a954  ldr x8,[x8, #0xb8]
02c0a958  ldr w8,[x8, #0x8]
02c0a95c  b 0x02c0a964
02c0a960  mov w8,#0x64
02c0a964  adrp x23,0x5e5d000
02c0a968  ldr x23,[x23, #0x4d0]
02c0a96c  str w8,[x19, #0x108]
02c0a970  ldr x0,[x23]
02c0a974  ldr w8,[x0, #0xe4]
02c0a978  cbnz w8,0x02c0a984
02c0a97c  bl 0x029f5bd0
02c0a980  ldr x0,[x23]
02c0a984  ldr x8,[x21]
02c0a988  ldr x9,[x0, #0xb8]
02c0a98c  ldr w10,[x8, #0xe4]
02c0a990  ldr x20,[x9, #0x28]
02c0a994  cbnz w10,0x02c0a9a0
02c0a998  mov x0,x8
02c0a99c  bl 0x029f5bd0
02c0a9a0  mov x0,x20
02c0a9a4  mov x1,xzr
02c0a9a8  mov x2,xzr
02c0a9ac  bl 0x057dfa70
02c0a9b0  tbz w0,#0x0,0x02c0a9dc
02c0a9b4  ldr x0,[x23]
02c0a9b8  ldr w8,[x0, #0xe4]
02c0a9bc  cbnz w8,0x02c0a9c8
02c0a9c0  bl 0x029f5bd0
02c0a9c4  ldr x0,[x23]
02c0a9c8  ldr x0,[x0, #0xb8]
02c0a9cc  mov x1,xzr
02c0a9d0  bl 0x04657108
02c0a9d4  mov w8,w0
02c0a9d8  b 0x02c0a9e0
02c0a9dc  mov w8,#0x64
02c0a9e0  ldr x0,[x22]
02c0a9e4  str w8,[x19, #0x10c]
02c0a9e8  ldr w8,[x0, #0xe4]
02c0a9ec  cbnz w8,0x02c0a9f8
02c0a9f0  bl 0x029f5bd0
02c0a9f4  ldr x0,[x22]
02c0a9f8  ldr x8,[x0, #0xb8]
02c0a9fc  ldr x20,[x8, #0x20]
02c0aa00  cbnz x20,0x02c0aa5c
02c0aa04  ldr w9,[x0, #0xe4]
02c0aa08  cbnz w9,0x02c0aa18
02c0aa0c  bl 0x029f5bd0
02c0aa10  ldr x8,[x22]
02c0aa14  ldr x8,[x8, #0xb8]
02c0aa18  adrp x9,0x5e62000
02c0aa1c  ldr x9,[x9, #0xe8]
02c0aa20  ldr x21,[x8]
02c0aa24  ldr x0,[x9]
02c0aa28  bl 0x029f5cec
02c0aa2c  adrp x8,0x5e62000
02c0aa30  mov x1,x21
02c0aa34  mov x3,xzr
02c0aa38  ldr x8,[x8, #0x118]
02c0aa3c  mov x20,x0
02c0aa40  ldr x2,[x8]
02c0aa44  bl 0x042353fc
02c0aa48  ldr x8,[x22]
02c0aa4c  mov x1,x20
02c0aa50  ldr x0,[x8, #0xb8]
02c0aa54  str x20,[x0, #0x20]!
02c0aa58  bl 0x029f59f4
02c0aa5c  ldr x0,[x27]
02c0aa60  ldr w8,[x0, #0xe4]
02c0aa64  cbnz w8,0x02c0aa6c
02c0aa68  bl 0x029f5bd0
02c0aa6c  mov x0,x20
02c0aa70  mov w1,wzr
02c0aa74  bl 0x02c0a054
02c0aa78  adrp x20,0x5e5d000
02c0aa7c  mov w8,w0
02c0aa80  ldr x20,[x20, #0x4d8]
02c0aa84  str w8,[x19, #0x110]
02c0aa88  ldr x0,[x20]
02c0aa8c  ldr w8,[x0, #0xe4]
02c0aa90  cbnz w8,0x02c0aa9c
02c0aa94  bl 0x029f5bd0
02c0aa98  ldr x0,[x20]
02c0aa9c  ldr x8,[x0, #0xb8]
02c0aaa0  add x0,x19,#0x118
02c0aaa4  mov x1,xzr
02c0aaa8  ldp q1,q0,[x8]
02c0aaac  stp q1,q0,[x0]
02c0aab0  bl 0x029f59f4
02c0aab4  ldr x8,[x20]
02c0aab8  add x0,x19,#0x138
02c0aabc  mov x1,xzr
02c0aac0  ldr x8,[x8, #0xb8]
02c0aac4  ldp q0,q1,[x8, #0x40]
02c0aac8  stp q0,q1,[x0]
02c0aacc  bl 0x029f59f4
02c0aad0  ldr x8,[x20]
02c0aad4  add x0,x19,#0x158
02c0aad8  mov x1,xzr
02c0aadc  ldr x8,[x8, #0xb8]
02c0aae0  ldp q0,q1,[x8, #0x20]
02c0aae4  stp q0,q1,[x0]
02c0aae8  bl 0x029f59f4
02c0aaec  ldr x8,[x19, #0x20]
02c0aaf0  cbz x8,0x02c0b360
02c0aaf4  ldrb w8,[x8, #0x1ff]
02c0aaf8  ldur d0,[x19, #0x44]
02c0aafc  mov w10,#0x4
02c0ab00  ldr w9,[x19, #0x4c]
02c0ab04  add x0,x19,#0x188
02c0ab08  mov x1,xzr
02c0ab0c  cmp w8,#0x0
02c0ab10  ldr x8,[sp, #0x368]
02c0ab14  str w9,[x19, #0x184]
02c0ab18  str d0,[x8]
02c0ab1c  ldp q0,q1,[x19, #0x60]
02c0ab20  csinc w8,w10,wzr,ne
02c0ab24  str w8,[x19, #0x178]
02c0ab28  stp q0,q1,[x0]
02c0ab2c  bl 0x029f59f4
02c0ab30  adrp x20,0x5e58000
02c0ab34  ldr s0,[x19, #0x28]
02c0ab38  ldr x20,[x20, #0xf28]
02c0ab3c  str wzr,[x19, #0x1a8]
02c0ab40  ldr d8,[x19, #0x30]
02c0ab44  str s0,[x19, #0x1ac]
02c0ab48  ldr x0,[x20]
02c0ab4c  str wzr,[x19, #0x1b0]
02c0ab50  ldr w8,[x0, #0xe4]
02c0ab54  cbnz w8,0x02c0ab60
02c0ab58  bl 0x029f5bd0
02c0ab5c  ldr x0,[x20]
02c0ab60  ldr x8,[x0, #0xb8]
02c0ab64  mov x0,xzr
02c0ab68  ldr d0,[x8]
02c0ab6c  adrp x8,0x1170000
02c0ab70  ldr d1,[x8, #0x860]
02c0ab74  mov x8,#0x7ff0000000000000
02c0ab78  scvtf d0,d0
02c0ab7c  fmul d0,d8,d0
02c0ab80  fdiv d0,d0,d1
02c0ab84  fmov d1,x8
02c0ab88  mov x8,#-0x8000000000000000
02c0ab8c  fcvtzs x9,d0
02c0ab90  fcmp d0,d1
02c0ab94  csel x8,x8,x9,eq
02c0ab98  str x8,[x19, #0x1b8]
02c0ab9c  bl 0x04ff8438
02c0aba0  mov x1,x0
02c0aba4  str x0,[x19, #0x1c0]
02c0aba8  add x0,x19,#0x1c0
02c0abac  bl 0x029f59f4
02c0abb0  mov x8,#-0x1
02c0abb4  mov w0,wzr
02c0abb8  mov x1,xzr
02c0abbc  str w8,[x19, #0x1d8]
02c0abc0  stp x8,x8,[x19, #0x1c8]
02c0abc4  add x8,sp,#0x280
02c0abc8  stp xzr,xzr,[x19, #0x1e0]
02c0abcc  bl 0x046544b8
02c0abd0  ldp q0,q1,[sp, #0x280]
02c0abd4  add x0,x19,#0x1f0
02c0abd8  mov x1,xzr
02c0abdc  stp q0,q1,[x19, #0x1f0]
02c0abe0  bl 0x029f59f4
02c0abe4  add x8,sp,#0x260
02c0abe8  mov w0,wzr
02c0abec  mov x1,xzr
02c0abf0  bl 0x046544b8
02c0abf4  ldp q0,q1,[sp, #0x260]
02c0abf8  add x0,x19,#0x210
02c0abfc  mov x1,xzr
02c0ac00  stp q0,q1,[x19, #0x210]
02c0ac04  bl 0x029f59f4
02c0ac08  ldr s0,[x19, #0x1ac]
02c0ac0c  strb wzr,[x19, #0x230]
02c0ac10  b 0x02c0ac18
02c0ac14  bl 0x029f5d04
02c0ac18  adrp x8,0x116c000
02c0ac1c  ldr s1,[x8, #0x94]
02c0ac20  fcmp s0,s1
02c0ac24  b.le 0x02c0b220
02c0ac28  ldr w8,[x19, #0x1b0]
02c0ac2c  mov w9,#0x7530
02c0ac30  add w10,w8,#0x1
02c0ac34  cmp w8,w9
02c0ac38  str w10,[x19, #0x1b0]
02c0ac3c  b.ge 0x02c0b220
02c0ac40  ldr x0,[x19, #0x1c0]
02c0ac44  cbz x0,0x02c0b360
02c0ac48  mov x1,xzr
02c0ac4c  bl 0x04ff8604
02c0ac50  ldr x8,[x19, #0x1b8]
02c0ac54  cmp x0,x8
02c0ac58  b.ge 0x02c0b144
02c0ac5c  ldr x0,[x27]
02c0ac60  ldr w8,[x0, #0xe4]
02c0ac64  cbnz w8,0x02c0ac6c
02c0ac68  bl 0x029f5bd0
02c0ac6c  add x0,x19,#0x44
02c0ac70  add x1,x19,#0x48
02c0ac74  add x2,x19,#0x4c
02c0ac78  add x3,x19,#0x60
02c0ac7c  bl 0x02c09bd0
02c0ac80  tbz w0,#0x0,0x02c0ac90
02c0ac84  ldr w20,[x19, #0x44]
02c0ac88  strb wzr,[x19, #0x230]
02c0ac8c  b 0x02c0acec
02c0ac90  ldrb w8,[x19, #0x230]
02c0ac94  ldr w20,[x19, #0x44]
02c0ac98  cbz w8,0x02c0acec
02c0ac9c  ldr w8,[x19, #0x1c8]
02c0aca0  ldr w21,[x19, #0x48]
02c0aca4  cmp w8,w20
02c0aca8  b.ne 0x02c0acf0
02c0acac  ldr w8,[x19, #0x1cc]
02c0acb0  cmp w8,w21
02c0acb4  b.ne 0x02c0acf0
02c0acb8  ldr w8,[x19, #0x1d0]
02c0acbc  ldr w9,[x19, #0x4c]
02c0acc0  cmp w8,w9
02c0acc4  b.ne 0x02c0acf0
02c0acc8  ldr w8,[x19, #0x1d4]
02c0accc  ldr w9,[x19, #0x50]
02c0acd0  cmp w8,w9
02c0acd4  b.ne 0x02c0acf0
02c0acd8  ldr w8,[x19, #0x1d8]
02c0acdc  ldr w9,[x19, #0x54]
02c0ace0  cmp w8,w9
02c0ace4  b.ne 0x02c0acf0
02c0ace8  b 0x02c0ae58
02c0acec  ldur w21,[x19, #0x48]
02c0acf0  ldp q0,q1,[x19, #0xa0]
02c0acf4  add x8,x19,#0x118
02c0acf8  ldr x0,[x27]
02c0acfc  ldr w24,[x19, #0x58]
02c0ad00  ldr w25,[x19, #0x100]
02c0ad04  ldp w22,w23,[x19, #0x50]
02c0ad08  stp q0,q1,[sp, #0x280]
02c0ad0c  ldr w28,[x19, #0x104]
02c0ad10  ldr w29,[x19, #0x110]
02c0ad14  ldr w26,[x19, #0x178]
02c0ad18  ldp q2,q0,[x19, #0xc0]
02c0ad1c  stp q2,q0,[sp, #0x260]
02c0ad20  ldp q0,q1,[x8]
02c0ad24  add x8,x19,#0x138
02c0ad28  stp q0,q1,[sp, #0x1e0]
02c0ad2c  ldp q2,q0,[x8]
02c0ad30  ldr w8,[x0, #0xe4]
02c0ad34  stp q2,q0,[sp, #0x1c0]
02c0ad38  cbnz w8,0x02c0ad40
02c0ad3c  bl 0x029f5bd0
02c0ad40  ldp q0,q1,[sp, #0x280]
02c0ad44  add x8,sp,#0x140
02c0ad48  add x9,sp,#0x160
02c0ad4c  add x5,sp,#0x1a0
02c0ad50  add x6,sp,#0x180
02c0ad54  mov w0,w20
02c0ad58  mov w1,w21
02c0ad5c  mov w2,w22
02c0ad60  stp q0,q1,[sp, #0x1a0]
02c0ad64  ldp q0,q2,[sp, #0x260]
02c0ad68  mov w3,w23
02c0ad6c  mov w4,w24
02c0ad70  mov w7,w25
02c0ad74  str w26,[sp, #0x20]
02c0ad78  stp q0,q2,[sp, #0x180]
02c0ad7c  ldp q1,q0,[sp, #0x1e0]
02c0ad80  str w29,[sp, #0x18]
02c0ad84  stp x9,x8,[sp, #0x8]
02c0ad88  stp q1,q0,[sp, #0x160]
02c0ad8c  ldp q0,q2,[sp, #0x1c0]
02c0ad90  str w28,[sp]
02c0ad94  stp q0,q2,[sp, #0x140]
02c0ad98  bl 0x02c077b0
02c0ad9c  ldp q0,q1,[x19, #0xe0]
02c0ada0  add x20,x19,#0x158
02c0ada4  stp x0,x1,[x19, #0x1e0]
02c0ada8  ldr w2,[x19, #0x54]
02c0adac  add x8,sp,#0x120
02c0adb0  ldp w0,w9,[x19, #0x4c]
02c0adb4  stp q0,q1,[sp, #0x100]
02c0adb8  ldp q2,q1,[x20]
02c0adbc  fmov d0,x1
02c0adc0  ldr w4,[x19, #0x108]
02c0adc4  add x3,sp,#0x100
02c0adc8  ldr w5,[x19, #0x10c]
02c0adcc  ldr w7,[x19, #0x178]
02c0add0  add x6,sp,#0xe0
02c0add4  mov w1,w9
02c0add8  stp q2,q1,[sp, #0xe0]
02c0addc  bl 0x02c08d84
02c0ade0  ldp q0,q1,[sp, #0x120]
02c0ade4  add x0,x19,#0x1f0
02c0ade8  mov x1,xzr
02c0adec  stp q0,q1,[x19, #0x1f0]
02c0adf0  bl 0x029f59f4
02c0adf4  ldp q0,q1,[x19, #0xe0]
02c0adf8  add x8,sp,#0xc0
02c0adfc  ldp w0,w1,[x19, #0x4c]
02c0ae00  ldr w2,[x19, #0x54]
02c0ae04  ldr w4,[x19, #0x108]
02c0ae08  add x3,sp,#0xa0
02c0ae0c  stp q0,q1,[sp, #0xa0]
02c0ae10  ldp q2,q0,[x20]
02c0ae14  ldr w5,[x19, #0x10c]
02c0ae18  add x6,sp,#0x80
02c0ae1c  ldr w7,[x19, #0x178]
02c0ae20  stp q2,q0,[sp, #0x80]
02c0ae24  bl 0x02c09480
02c0ae28  ldp q0,q1,[sp, #0xc0]
02c0ae2c  add x0,x19,#0x210
02c0ae30  mov x1,xzr
02c0ae34  stp q0,q1,[x19, #0x210]
02c0ae38  bl 0x029f59f4
02c0ae3c  ldur q0,[x19, #0x44]
02c0ae40  ldr x9,[sp, #0x368]
02c0ae44  ldr w8,[x19, #0x54]
02c0ae48  stur q0,[x9, #0x4c]
02c0ae4c  mov w9,#0x1
02c0ae50  str w8,[x19, #0x1d8]
02c0ae54  strb w9,[x19, #0x230]
02c0ae58  ldr x0,[x27]
02c0ae5c  ldp q0,q1,[x19, #0x1f0]
02c0ae60  ldr s8,[x19, #0x1e0]
02c0ae64  ldr w8,[x0, #0xe4]
02c0ae68  stp q0,q1,[sp, #0x340]
02c0ae6c  cbnz w8,0x02c0ae7c
02c0ae70  bl 0x029f5bd0
02c0ae74  ldr x0,[x27]
02c0ae78  ldr w8,[x0, #0xe4]
02c0ae7c  adrp x9,0x116c000
02c0ae80  fmov s1,0x40a00000
02c0ae84  mov w10,#0x7f800000
02c0ae88  ldr s0,[x9, #0x1b4]
02c0ae8c  fmov w9,s8
02c0ae90  fmul s0,s8,s0
02c0ae94  ubfx w9,w9,#0x17,#0x8
02c0ae98  cmp w9,#0xff
02c0ae9c  fadd s0,s0,s1
02c0aea0  fmov s1,w10
02c0aea4  fcsel s8,s0,s1,cc
02c0aea8  cbnz w8,0x02c0aeb0
02c0aeac  bl 0x029f5bd0
02c0aeb0  fmov w8,s8
02c0aeb4  ubfx w9,w8,#0x17,#0x8
02c0aeb8  and w20,w8,#0x7fffffff
02c0aebc  cmp w9,#0xfe
02c0aec0  b.hi 0x02c0aed0
02c0aec4  ldr s0,[x19, #0x1ac]
02c0aec8  fcmp s8,s0
02c0aecc  b.ls 0x02c0affc
02c0aed0  ldr x0,[x27]
02c0aed4  ldr w8,[x0, #0xe4]
02c0aed8  cbnz w8,0x02c0aee0
02c0aedc  bl 0x029f5bd0
02c0aee0  lsr w8,w20,#0x17
02c0aee4  cmp w8,#0xff
02c0aee8  b.cc 0x02c0b160
02c0aeec  ldp q0,q1,[x19, #0x60]
02c0aef0  ldr x0,[x27]
02c0aef4  ldp w20,w21,[x19, #0x44]
02c0aef8  ldr w8,[x0, #0xe4]
02c0aefc  ldur w22,[x19, #0x4c]
02c0af00  stp q0,q1,[sp, #0x280]
02c0af04  ldp q0,q1,[sp, #0x340]
02c0af08  stp q0,q1,[sp, #0x260]
02c0af0c  cbnz w8,0x02c0af14
02c0af10  bl 0x029f5bd0
02c0af14  ldp q0,q1,[sp, #0x280]
02c0af18  add x0,sp,#0x60
02c0af1c  add x1,sp,#0x40
02c0af20  mov w2,w20
02c0af24  mov w3,w21
02c0af28  mov w4,w22
02c0af2c  stp q0,q1,[sp, #0x60]
02c0af30  ldp q0,q2,[sp, #0x260]
02c0af34  stp q0,q2,[sp, #0x40]
02c0af38  bl 0x02c0987c
02c0af3c  fmov s8,s0
02c0af40  fmov w8,s8
02c0af44  ubfx w8,w8,#0x17,#0x8
02c0af48  cmp w8,#0xfe
02c0af4c  b.hi 0x02c0b09c
02c0af50  ldr s0,[x19, #0x1ac]
02c0af54  fcmp s8,s0
02c0af58  b.gt 0x02c0b09c
02c0af5c  ldr x0,[x27]
02c0af60  ldr w8,[x0, #0xe4]
02c0af64  cbnz w8,0x02c0af6c
02c0af68  bl 0x029f5bd0
02c0af6c  fmov s0,s8
02c0af70  add x8,sp,#0x280
02c0af74  bl 0x02c08c6c
02c0af78  ldp q0,q1,[sp, #0x280]
02c0af7c  add x8,sp,#0x260
02c0af80  add x0,sp,#0x340
02c0af84  add x1,sp,#0x2e0
02c0af88  mov x2,xzr
02c0af8c  stp q0,q1,[sp, #0x2e0]
02c0af90  bl 0x04658538
02c0af94  ldp q0,q1,[sp, #0x260]
02c0af98  add x8,sp,#0x1e0
02c0af9c  add x0,x19,#0x60
02c0afa0  add x1,sp,#0x300
02c0afa4  mov x2,xzr
02c0afa8  stp q0,q1,[sp, #0x300]
02c0afac  bl 0x04658020
02c0afb0  ldp q0,q1,[sp, #0x1e0]
02c0afb4  add x0,x19,#0x60
02c0afb8  mov x1,xzr
02c0afbc  stp q0,q1,[x19, #0x60]
02c0afc0  bl 0x029f59f4
02c0afc4  add x8,sp,#0x1c0
02c0afc8  add x0,x19,#0x80
02c0afcc  add x1,sp,#0x300
02c0afd0  mov x2,xzr
02c0afd4  bl 0x04658020
02c0afd8  ldp q0,q1,[sp, #0x1c0]
02c0afdc  add x0,x19,#0x80
02c0afe0  mov x1,xzr
02c0afe4  stp q0,q1,[x19, #0x80]
02c0afe8  bl 0x029f59f4
02c0afec  ldr s0,[x19, #0x1ac]
02c0aff0  fsub s0,s0,s8
02c0aff4  str s0,[x19, #0x1ac]
02c0aff8  b 0x02c0ac18
02c0affc  ldp q0,q1,[x19, #0x210]
02c0b000  add x8,sp,#0x280
02c0b004  add x0,x19,#0x60
02c0b008  add x1,sp,#0x320
02c0b00c  mov x2,xzr
02c0b010  stp q0,q1,[sp, #0x320]
02c0b014  bl 0x04658020
02c0b018  ldp q0,q1,[sp, #0x280]
02c0b01c  add x0,x19,#0x60
02c0b020  mov x1,xzr
02c0b024  stp q0,q1,[x19, #0x60]
02c0b028  bl 0x029f59f4
02c0b02c  add x8,sp,#0x260
02c0b030  add x0,x19,#0x80
02c0b034  add x1,sp,#0x320
02c0b038  mov x2,xzr
02c0b03c  bl 0x04658020
02c0b040  ldp q0,q1,[sp, #0x260]
02c0b044  add x0,x19,#0x80
02c0b048  mov x1,xzr
02c0b04c  stp q0,q1,[x19, #0x80]
02c0b050  bl 0x029f59f4
02c0b054  ldp w8,w9,[x19, #0x50]
02c0b058  ldr s0,[x19, #0x1ac]
02c0b05c  ldr w11,[x19, #0x58]
02c0b060  add w10,w9,#0x1
02c0b064  fsub s0,s0,s8
02c0b068  cmp w10,#0x4
02c0b06c  mov w10,#0xa
02c0b070  cinc w8,w8,gt
02c0b074  csinc w9,wzr,w9,gt
02c0b078  madd w10,w8,w10,w9
02c0b07c  str s0,[x19, #0x1ac]
02c0b080  cmp w10,w11
02c0b084  b.gt 0x02c0ac18
02c0b088  ldr w10,[x19, #0x1a8]
02c0b08c  stp w8,w9,[x19, #0x50]
02c0b090  add w8,w10,#0x1
02c0b094  str w8,[x19, #0x1a8]
02c0b098  b 0x02c0ac18
02c0b09c  add x8,sp,#0x280
02c0b0a0  mov w0,wzr
02c0b0a4  mov x1,xzr
02c0b0a8  bl 0x046544b8
02c0b0ac  ldp q0,q1,[sp, #0x280]
02c0b0b0  add x0,sp,#0x340
02c0b0b4  add x1,sp,#0x2e0
02c0b0b8  mov x2,xzr
02c0b0bc  stp q0,q1,[sp, #0x2e0]
02c0b0c0  bl 0x04659720
02c0b0c4  tbz w0,#0x0,0x02c0b220
02c0b0c8  ldr x0,[x27]
02c0b0cc  ldr s8,[x19, #0x1ac]
02c0b0d0  ldr w8,[x0, #0xe4]
02c0b0d4  cbnz w8,0x02c0b0dc
02c0b0d8  bl 0x029f5bd0
02c0b0dc  fmov s0,s8
02c0b0e0  add x8,sp,#0x280
02c0b0e4  bl 0x02c08c6c
02c0b0e8  ldp q0,q1,[sp, #0x280]
02c0b0ec  add x8,sp,#0x260
02c0b0f0  add x0,sp,#0x340
02c0b0f4  add x1,sp,#0x2e0
02c0b0f8  mov x2,xzr
02c0b0fc  stp q0,q1,[sp, #0x2e0]
02c0b100  bl 0x04658538
02c0b104  ldp q0,q1,[sp, #0x260]
02c0b108  add x8,sp,#0x1e0
02c0b10c  add x0,x19,#0x60
02c0b110  add x1,sp,#0x2c0
02c0b114  mov x2,xzr
02c0b118  stp q0,q1,[sp, #0x2c0]
02c0b11c  bl 0x04658020
02c0b120  ldp q0,q1,[sp, #0x1e0]
02c0b124  add x0,x19,#0x60
02c0b128  mov x1,xzr
02c0b12c  stp q0,q1,[x19, #0x60]
02c0b130  bl 0x029f59f4
02c0b134  add x8,sp,#0x1c0
02c0b138  add x0,x19,#0x80
02c0b13c  add x1,sp,#0x2c0
02c0b140  b 0x02c0b204
02c0b144  str xzr,[x19, #0x18]!
02c0b148  mov x0,x19
02c0b14c  mov x1,xzr
02c0b150  bl 0x029f59f4
02c0b154  mov w0,#0x1
02c0b158  stur w0,[x19, #-0x8]
02c0b15c  b 0x02c0b33c
02c0b160  add x8,sp,#0x280
02c0b164  mov w0,wzr
02c0b168  mov x1,xzr
02c0b16c  bl 0x046544b8
02c0b170  ldp q0,q1,[sp, #0x280]
02c0b174  add x0,sp,#0x340
02c0b178  add x1,sp,#0x2e0
02c0b17c  mov x2,xzr
02c0b180  stp q0,q1,[sp, #0x2e0]
02c0b184  bl 0x04659720
02c0b188  tbz w0,#0x0,0x02c0b220
02c0b18c  ldr x0,[x27]
02c0b190  ldr s8,[x19, #0x1ac]
02c0b194  ldr w8,[x0, #0xe4]
02c0b198  cbnz w8,0x02c0b1a0
02c0b19c  bl 0x029f5bd0
02c0b1a0  fmov s0,s8
02c0b1a4  add x8,sp,#0x280
02c0b1a8  bl 0x02c08c6c
02c0b1ac  ldp q0,q1,[sp, #0x280]
02c0b1b0  add x8,sp,#0x260
02c0b1b4  add x0,sp,#0x340
02c0b1b8  add x1,sp,#0x2e0
02c0b1bc  mov x2,xzr
02c0b1c0  stp q0,q1,[sp, #0x2e0]
02c0b1c4  bl 0x04658538
02c0b1c8  ldp q0,q1,[sp, #0x260]
02c0b1cc  add x8,sp,#0x1e0
02c0b1d0  add x0,x19,#0x60
02c0b1d4  add x1,sp,#0x2a0
02c0b1d8  mov x2,xzr
02c0b1dc  stp q0,q1,[sp, #0x2a0]
02c0b1e0  bl 0x04658020
02c0b1e4  ldp q0,q1,[sp, #0x1e0]
02c0b1e8  add x0,x19,#0x60
02c0b1ec  mov x1,xzr
02c0b1f0  stp q0,q1,[x19, #0x60]
02c0b1f4  bl 0x029f59f4
02c0b1f8  add x8,sp,#0x1c0
02c0b1fc  add x0,x19,#0x80
02c0b200  add x1,sp,#0x2a0
02c0b204  mov x2,xzr
02c0b208  bl 0x04658020
02c0b20c  ldp q0,q1,[sp, #0x1c0]
02c0b210  add x0,x19,#0x80
02c0b214  mov x1,xzr
02c0b218  stp q0,q1,[x19, #0x80]
02c0b21c  bl 0x029f59f4
02c0b220  ldr x0,[x27]
02c0b224  ldr w8,[x0, #0xe4]
02c0b228  cbnz w8,0x02c0b230
02c0b22c  bl 0x029f5bd0
02c0b230  add x0,x19,#0x44
02c0b234  add x1,x19,#0x48
02c0b238  add x2,x19,#0x4c
02c0b23c  add x3,x19,#0x60
02c0b240  bl 0x02c09bd0
02c0b244  ldr x21,[x19, #0x38]
02c0b248  cbz x21,0x02c0b338
02c0b24c  adrp x8,0x5e62000
02c0b250  ldr x8,[x8, #0xf8]
02c0b254  ldr x0,[x8]
02c0b258  bl 0x029f5cec
02c0b25c  mov x1,xzr
02c0b260  mov x20,x0
02c0b264  bl 0x04893238
02c0b268  cbz x20,0x02c0b360
02c0b26c  ldr s0,[x19, #0x28]
02c0b270  add x8,sp,#0x280
02c0b274  add x0,x19,#0x60
02c0b278  add x1,x19,#0x188
02c0b27c  mov x2,xzr
02c0b280  str s0,[x20, #0x10]
02c0b284  ldr s1,[x19, #0x40]
02c0b288  fcmp s1,#0.0
02c0b28c  fcsel s0,s0,s1,mi
02c0b290  str s0,[x20, #0x14]
02c0b294  bl 0x04658270
02c0b298  ldp q0,q1,[sp, #0x280]
02c0b29c  add x0,x20,#0x18
02c0b2a0  mov x1,xzr
02c0b2a4  stur q0,[x20, #0x18]
02c0b2a8  stur q1,[x20, #0x28]
02c0b2ac  bl 0x029f59f4
02c0b2b0  ldp q1,q0,[x19, #0x60]
02c0b2b4  add x0,x20,#0x38
02c0b2b8  mov x1,xzr
02c0b2bc  stur q0,[x20, #0x48]
02c0b2c0  stur q1,[x20, #0x38]
02c0b2c4  bl 0x029f59f4
02c0b2c8  ldp q1,q0,[x19, #0x80]
02c0b2cc  add x0,x20,#0x58
02c0b2d0  mov x1,xzr
02c0b2d4  stur q0,[x20, #0x68]
02c0b2d8  stur q1,[x20, #0x58]
02c0b2dc  bl 0x029f59f4
02c0b2e0  ldr w8,[x19, #0x4c]
02c0b2e4  ldr x9,[sp, #0x368]
02c0b2e8  mov x1,x20
02c0b2ec  str w8,[x20, #0x80]
02c0b2f0  ldur d0,[x19, #0x44]
02c0b2f4  str d0,[x20, #0x78]
02c0b2f8  ldr d1,[x9]
02c0b2fc  sub v0.2S,v0.2S,v1.2S
02c0b300  stur d0,[x20, #0x84]
02c0b304  ldr w9,[x19, #0x184]
02c0b308  sub w8,w8,w9
02c0b30c  str w8,[x20, #0x8c]
02c0b310  ldr d0,[x19, #0x50]
02c0b314  str d0,[x20, #0x90]
02c0b318  ldr w8,[x19, #0x58]
02c0b31c  str w8,[x20, #0x98]
02c0b320  ldr w8,[x19, #0x1a8]
02c0b324  str w8,[x20, #0x9c]
02c0b328  ldr x8,[x21, #0x18]
02c0b32c  ldr x0,[x21, #0x40]
02c0b330  ldr x2,[x21, #0x28]
02c0b334  blr x8
02c0b338  mov w0,wzr
02c0b33c  add sp,sp,#0x360
02c0b340  ldp x20,x19,[sp, #0x60]
02c0b344  ldp x22,x21,[sp, #0x50]
02c0b348  ldp x24,x23,[sp, #0x40]
02c0b34c  ldp x26,x25,[sp, #0x30]
02c0b350  ldp x28,x27,[sp, #0x20]
02c0b354  ldp x29,x30,[sp, #0x10]
02c0b358  ldr d8,[sp], #0x70
02c0b35c  ret
02c0b360  bl 0x029f5cfc
