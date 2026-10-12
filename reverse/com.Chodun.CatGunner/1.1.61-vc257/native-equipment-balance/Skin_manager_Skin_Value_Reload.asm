02ca7618  sub sp,sp,#0x40
02ca761c  stp x30,x23,[sp, #0x10]
02ca7620  stp x22,x21,[sp, #0x20]
02ca7624  stp x20,x19,[sp, #0x30]
02ca7628  adrp x20,0x625c000
02ca762c  mov x19,x0
02ca7630  ldrb w8,[x20, #0x4e5]
02ca7634  tbnz w8,#0x0,0x02ca7670
02ca7638  adrp x0,0x5e5d000
02ca763c  ldr x0,[x0, #0x5b0]
02ca7640  bl 0x029f5a50
02ca7644  adrp x0,0x5e5d000
02ca7648  ldr x0,[x0, #0x4e0]
02ca764c  bl 0x029f5a50
02ca7650  adrp x0,0x5e64000
02ca7654  ldr x0,[x0, #0x9c8]
02ca7658  bl 0x029f5a50
02ca765c  adrp x0,0x5e63000
02ca7660  ldr x0,[x0, #0x810]
02ca7664  bl 0x029f5a50
02ca7668  mov w8,#0x1
02ca766c  strb w8,[x20, #0x4e5]
02ca7670  adrp x20,0x5e5d000
02ca7674  adrp x21,0x5e5d000
02ca7678  ldr x20,[x20, #0x4e0]
02ca767c  ldrb w8,[x19, #0x48]
02ca7680  ldr x21,[x21, #0x5b0]
02ca7684  cbz w8,0x02ca7724
02ca7688  ldr x8,[x20]
02ca768c  movi v0.2S,#0x64
02ca7690  ldr x0,[x19, #0x78]
02ca7694  mov w9,#0x64
02ca7698  ldr x8,[x8, #0xb8]
02ca769c  str d0,[x8]
02ca76a0  str w9,[x8, #0x8]
02ca76a4  cbz x0,0x02ca7898
02ca76a8  adrp x20,0x5e64000
02ca76ac  ldr x20,[x20, #0x9c8]
02ca76b0  ldr x8,[x0]
02ca76b4  ldr x1,[x20]
02ca76b8  ldr x9,[x8, #0x558]
02ca76bc  ldr x2,[x8, #0x560]
02ca76c0  blr x9
02ca76c4  ldr x0,[x19, #0x80]
02ca76c8  cbz x0,0x02ca7898
02ca76cc  ldr x8,[x0]
02ca76d0  ldr x1,[x20]
02ca76d4  ldr x9,[x8, #0x558]
02ca76d8  ldr x2,[x8, #0x560]
02ca76dc  blr x9
02ca76e0  ldr x0,[x19, #0x88]
02ca76e4  cbz x0,0x02ca7898
02ca76e8  ldr x8,[x0]
02ca76ec  ldr x1,[x20]
02ca76f0  ldr x9,[x8, #0x558]
02ca76f4  ldr x2,[x8, #0x560]
02ca76f8  blr x9
02ca76fc  ldr x8,[x21]
02ca7700  ldr x8,[x8, #0xb8]
02ca7704  ldr x0,[x8, #0x8]
02ca7708  cbz x0,0x02ca7898
02ca770c  ldp x20,x19,[sp, #0x30]
02ca7710  mov x1,xzr
02ca7714  ldp x22,x21,[sp, #0x20]
02ca7718  ldp x30,x23,[sp, #0x10]
02ca771c  add sp,sp,#0x40
02ca7720  b 0x02c43744
02ca7724  mov x0,x19
02ca7728  bl 0x02ca7c5c
02ca772c  ldr x8,[x20]
02ca7730  add w9,w0,#0x64
02ca7734  mov x0,x19
02ca7738  ldr x8,[x8, #0xb8]
02ca773c  str w9,[x8]
02ca7740  bl 0x02ca7ce8
02ca7744  ldr x8,[x20]
02ca7748  add w9,w0,#0x64
02ca774c  mov x0,x19
02ca7750  ldr x8,[x8, #0xb8]
02ca7754  str w9,[x8, #0x4]
02ca7758  bl 0x02ca7d74
02ca775c  ldr x8,[x20]
02ca7760  add w9,w0,#0x64
02ca7764  ldr x20,[x19, #0x78]
02ca7768  mov x0,x19
02ca776c  ldr x8,[x8, #0xb8]
02ca7770  str w9,[x8, #0x8]
02ca7774  bl 0x02ca7c5c
02ca7778  adrp x22,0x5e58000
02ca777c  add x1,sp,#0xc
02ca7780  ldr x22,[x22, #0xa10]
02ca7784  str w0,[sp, #0xc]
02ca7788  ldr x8,[x22, #0x48]
02ca778c  mov x0,x8
02ca7790  bl 0x029f5bd8
02ca7794  adrp x23,0x5e63000
02ca7798  mov x1,x0
02ca779c  mov x2,xzr
02ca77a0  ldr x23,[x23, #0x810]
02ca77a4  ldr x8,[x23]
02ca77a8  mov x0,x8
02ca77ac  bl 0x046b6c0c
02ca77b0  cbz x20,0x02ca7898
02ca77b4  ldr x8,[x20]
02ca77b8  mov x1,x0
02ca77bc  mov x0,x20
02ca77c0  ldr x9,[x8, #0x558]
02ca77c4  ldr x2,[x8, #0x560]
02ca77c8  blr x9
02ca77cc  ldr x20,[x19, #0x80]
02ca77d0  mov x0,x19
02ca77d4  bl 0x02ca7ce8
02ca77d8  ldr x8,[x22, #0x48]
02ca77dc  str w0,[sp, #0x8]
02ca77e0  add x1,sp,#0x8
02ca77e4  mov x0,x8
02ca77e8  bl 0x029f5bd8
02ca77ec  ldr x8,[x23]
02ca77f0  mov x1,x0
02ca77f4  mov x2,xzr
02ca77f8  mov x0,x8
02ca77fc  bl 0x046b6c0c
02ca7800  cbz x20,0x02ca7898
02ca7804  ldr x8,[x20]
02ca7808  mov x1,x0
02ca780c  mov x0,x20
02ca7810  ldr x9,[x8, #0x558]
02ca7814  ldr x2,[x8, #0x560]
02ca7818  blr x9
02ca781c  ldr x20,[x19, #0x88]
02ca7820  mov x0,x19
02ca7824  bl 0x02ca7d74
02ca7828  ldr x8,[x22, #0x48]
02ca782c  str w0,[sp, #0x4]
02ca7830  add x1,sp,#0x4
02ca7834  mov x0,x8
02ca7838  bl 0x029f5bd8
02ca783c  ldr x8,[x23]
02ca7840  mov x1,x0
02ca7844  mov x2,xzr
02ca7848  mov x0,x8
02ca784c  bl 0x046b6c0c
02ca7850  cbz x20,0x02ca7898
02ca7854  ldr x8,[x20]
02ca7858  mov x1,x0
02ca785c  mov x0,x20
02ca7860  ldr x9,[x8, #0x558]
02ca7864  ldr x2,[x8, #0x560]
02ca7868  blr x9
02ca786c  ldr x8,[x21]
02ca7870  ldr x8,[x8, #0xb8]
02ca7874  ldr x0,[x8, #0x8]
02ca7878  cbz x0,0x02ca7898
02ca787c  mov x1,xzr
02ca7880  bl 0x02c43744
02ca7884  ldp x20,x19,[sp, #0x30]
02ca7888  ldp x22,x21,[sp, #0x20]
02ca788c  ldp x30,x23,[sp, #0x10]
02ca7890  add sp,sp,#0x40
02ca7894  ret
02ca7898  bl 0x029f5cfc
