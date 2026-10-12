02c57130  sub sp,sp,#0x50
02c57134  stp x30,x23,[sp, #0x20]
02c57138  stp x22,x21,[sp, #0x30]
02c5713c  stp x20,x19,[sp, #0x40]
02c57140  adrp x20,0x625c000
02c57144  adrp x21,0x5e5e000
02c57148  mov x19,x0
02c5714c  ldrb w8,[x20, #0x19f]
02c57150  ldr x21,[x21, #0x70]
02c57154  tbnz w8,#0x0,0x02c57184
02c57158  adrp x0,0x5e63000
02c5715c  ldr x0,[x0, #0x90]
02c57160  bl 0x029f5a50
02c57164  adrp x0,0x5e63000
02c57168  ldr x0,[x0, #0x698]
02c5716c  bl 0x029f5a50
02c57170  adrp x0,0x5e5e000
02c57174  ldr x0,[x0, #0x70]
02c57178  bl 0x029f5a50
02c5717c  mov w8,#0x1
02c57180  strb w8,[x20, #0x19f]
02c57184  ldr x0,[x21]
02c57188  ldr w8,[x0, #0xe4]
02c5718c  cbnz w8,0x02c57198
02c57190  bl 0x029f5bd0
02c57194  ldr x0,[x21]
02c57198  ldr x8,[x0, #0xb8]
02c5719c  ldr x8,[x8, #0x28]
02c571a0  cbz x8,0x02c57264
02c571a4  ldp w2,w9,[x8, #0x18]
02c571a8  add w9,w9,#0x1
02c571ac  cmp w2,#0x1
02c571b0  stp wzr,w9,[x8, #0x18]
02c571b4  b.lt 0x02c571c8
02c571b8  ldr x0,[x8, #0x10]
02c571bc  mov w1,wzr
02c571c0  mov x3,xzr
02c571c4  bl 0x04873aac
02c571c8  ldr x22,[x19, #0x28]!
02c571cc  cbz x22,0x02c571d8
02c571d0  ldr x8,[x22, #0x18]
02c571d4  cbnz x8,0x02c57204
02c571d8  adrp x8,0x5e63000
02c571dc  mov w1,#0x3c
02c571e0  ldr x8,[x8, #0x90]
02c571e4  ldr x0,[x8]
02c571e8  bl 0x029f5b40
02c571ec  mov x1,x0
02c571f0  str x0,[x19]
02c571f4  mov x0,x19
02c571f8  bl 0x029f59f4
02c571fc  ldr x22,[x19]
02c57200  cbz x22,0x02c57264
02c57204  mov x20,xzr
02c57208  mov w23,#0x20
02c5720c  ldrsw x8,[x22, #0x18]
02c57210  cmp x20,x8
02c57214  b.ge 0x02c57268
02c57218  ldr x0,[x21]
02c5721c  ldr w8,[x0, #0xe4]
02c57220  cbnz w8,0x02c57228
02c57224  bl 0x029f5bd0
02c57228  mov x8,sp
02c5722c  mov w0,w20
02c57230  bl 0x02c56c34
02c57234  ldr w8,[x22, #0x18]
02c57238  cmp x20,x8
02c5723c  b.cs 0x02c5727c
02c57240  ldp q1,q0,[sp]
02c57244  add x0,x22,x23
02c57248  mov x1,xzr
02c5724c  stp q1,q0,[x0]
02c57250  bl 0x029f59f4
02c57254  ldr x22,[x19]
02c57258  add x20,x20,#0x1
02c5725c  add x23,x23,#0x20
02c57260  cbnz x22,0x02c5720c
02c57264  bl 0x029f5cfc
02c57268  ldp x20,x19,[sp, #0x40]
02c5726c  ldp x22,x21,[sp, #0x30]
02c57270  ldp x30,x23,[sp, #0x20]
02c57274  add sp,sp,#0x50
02c57278  ret
02c5727c  bl 0x029f5d04
