02c52608  str x30,[sp, #-0x30]!
02c5260c  stp x22,x21,[sp, #0x10]
02c52610  stp x20,x19,[sp, #0x20]
02c52614  adrp x20,0x625c000
02c52618  adrp x22,0x5e5e000
02c5261c  adrp x21,0x5e59000
02c52620  ldrb w8,[x20, #0x167]
02c52624  ldr x22,[x22, #0x68]
02c52628  ldr x21,[x21, #0x1c0]
02c5262c  mov x19,x0
02c52630  tbnz w8,#0x0,0x02c52654
02c52634  adrp x0,0x5e59000
02c52638  ldr x0,[x0, #0x1c0]
02c5263c  bl 0x029f5a50
02c52640  adrp x0,0x5e5e000
02c52644  ldr x0,[x0, #0x68]
02c52648  bl 0x029f5a50
02c5264c  mov w8,#0x1
02c52650  strb w8,[x20, #0x167]
02c52654  ldr x8,[x22]
02c52658  ldr x0,[x21]
02c5265c  ldr x8,[x8, #0xb8]
02c52660  ldr w9,[x0, #0xe4]
02c52664  ldr x20,[x8]
02c52668  cbnz w9,0x02c52670
02c5266c  bl 0x029f5bd0
02c52670  mov x0,x20
02c52674  mov x1,xzr
02c52678  mov x2,xzr
02c5267c  bl 0x057e14b4
02c52680  tbnz w0,#0x0,0x02c526dc
02c52684  ldr x0,[x21]
02c52688  ldr x21,[x19, #0x20]
02c5268c  ldr w8,[x0, #0xe4]
02c52690  cbnz w8,0x02c52698
02c52694  bl 0x029f5bd0
02c52698  mov x0,x21
02c5269c  mov x1,xzr
02c526a0  mov x2,xzr
02c526a4  bl 0x057dfa70
02c526a8  tbz w0,#0x0,0x02c526dc
02c526ac  cbz x20,0x02c526ec
02c526b0  ldr x19,[x19, #0x20]
02c526b4  mov x0,x20
02c526b8  bl 0x02c52828
02c526bc  cbz x19,0x02c526ec
02c526c0  and w1,w0,#0x1
02c526c4  mov x0,x19
02c526c8  mov x2,xzr
02c526cc  ldp x20,x19,[sp, #0x20]
02c526d0  ldp x22,x21,[sp, #0x10]
02c526d4  ldr x30,[sp], #0x30
02c526d8  b 0x057dff3c
02c526dc  ldp x20,x19,[sp, #0x20]
02c526e0  ldp x22,x21,[sp, #0x10]
02c526e4  ldr x30,[sp], #0x30
02c526e8  ret
02c526ec  bl 0x029f5cfc
