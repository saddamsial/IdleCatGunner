02c6a570  str x30,[sp, #-0x30]!
02c6a574  stp x22,x21,[sp, #0x10]
02c6a578  stp x20,x19,[sp, #0x20]
02c6a57c  adrp x20,0x625c000
02c6a580  mov w21,w1
02c6a584  mov x19,x0
02c6a588  ldrb w8,[x20, #0x27e]
02c6a58c  tbnz w8,#0x0,0x02c6a5a4
02c6a590  adrp x0,0x5e59000
02c6a594  ldr x0,[x0, #0x1c0]
02c6a598  bl 0x029f5a50
02c6a59c  mov w8,#0x1
02c6a5a0  strb w8,[x20, #0x27e]
02c6a5a4  mov x0,x19
02c6a5a8  bl 0x02c67de0
02c6a5ac  mov w20,w0
02c6a5b0  cmn w0,#0x1
02c6a5b4  b.eq 0x02c6a640
02c6a5b8  ldr x8,[x19, #0x40]
02c6a5bc  cbz x8,0x02c6a654
02c6a5c0  ldr w9,[x8, #0x18]
02c6a5c4  cmp w20,w9
02c6a5c8  b.cs 0x02c6a658
02c6a5cc  add x8,x8,w20, SXTW  #0x2
02c6a5d0  adrp x22,0x5e59000
02c6a5d4  mov x0,x19
02c6a5d8  ldr x22,[x22, #0x1c0]
02c6a5dc  mov w1,w20
02c6a5e0  mov w2,wzr
02c6a5e4  str w21,[x8, #0x20]
02c6a5e8  bl 0x02c6802c
02c6a5ec  ldr x0,[x22]
02c6a5f0  ldr x21,[x19, #0x58]
02c6a5f4  ldr w8,[x0, #0xe4]
02c6a5f8  cbnz w8,0x02c6a600
02c6a5fc  bl 0x029f5bd0
02c6a600  mov x0,x21
02c6a604  mov x1,xzr
02c6a608  mov x2,xzr
02c6a60c  bl 0x057dfa70
02c6a610  tbz w0,#0x0,0x02c6a638
02c6a614  ldr x0,[x19, #0x58]
02c6a618  cbz x0,0x02c6a654
02c6a61c  mov x1,xzr
02c6a620  bl 0x02c73c20
02c6a624  ldr x0,[x19, #0x58]
02c6a628  cbz x0,0x02c6a654
02c6a62c  mov w1,w20
02c6a630  mov x2,xzr
02c6a634  bl 0x02c761fc
02c6a638  mov x0,x19
02c6a63c  bl 0x02c67c50
02c6a640  mov w0,w20
02c6a644  ldp x20,x19,[sp, #0x20]
02c6a648  ldp x22,x21,[sp, #0x10]
02c6a64c  ldr x30,[sp], #0x30
02c6a650  ret
02c6a654  bl 0x029f5cfc
02c6a658  bl 0x029f5d04
