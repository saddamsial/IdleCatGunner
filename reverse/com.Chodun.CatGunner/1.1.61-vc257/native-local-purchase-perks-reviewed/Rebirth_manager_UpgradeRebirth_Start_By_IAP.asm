02c88594  stp x30,x21,[sp, #-0x20]!
02c88598  stp x20,x19,[sp, #0x10]
02c8859c  adrp x20,0x625c000
02c885a0  adrp x21,0x5e59000
02c885a4  mov x19,x0
02c885a8  ldrb w8,[x20, #0x38b]
02c885ac  ldr x21,[x21, #0x1c0]
02c885b0  tbnz w8,#0x0,0x02c885c8
02c885b4  adrp x0,0x5e59000
02c885b8  ldr x0,[x0, #0x1c0]
02c885bc  bl 0x029f5a50
02c885c0  mov w8,#0x1
02c885c4  strb w8,[x20, #0x38b]
02c885c8  mov x0,x19
02c885cc  bl 0x02c883a0
02c885d0  ldr w8,[x19, #0x50]
02c885d4  add w8,w8,#0x1
02c885d8  str w8,[x19, #0x50]
02c885dc  bl 0x02c882c0
02c885e0  mov x20,x19
02c885e4  mov x1,x0
02c885e8  str x0,[x20, #0x58]!
02c885ec  mov x0,x20
02c885f0  bl 0x029f59f4
02c885f4  mov w8,#0x101
02c885f8  mov x0,xzr
02c885fc  sturh w8,[x20, #-0x10]
02c88600  bl 0x02c0faf8
02c88604  ldr x0,[x21]
02c88608  ldur x20,[x20, #-0x18]
02c8860c  ldr w8,[x0, #0xe4]
02c88610  cbnz w8,0x02c88618
02c88614  bl 0x029f5bd0
02c88618  mov x0,x20
02c8861c  mov x1,xzr
02c88620  mov x2,xzr
02c88624  bl 0x057dfa70
02c88628  tbz w0,#0x0,0x02c88640
02c8862c  ldr x0,[x19, #0x40]
02c88630  cbz x0,0x02c8864c
02c88634  ldp x20,x19,[sp, #0x10]
02c88638  ldp x30,x21,[sp], #0x20
02c8863c  b 0x02c88650
02c88640  ldp x20,x19,[sp, #0x10]
02c88644  ldp x30,x21,[sp], #0x20
02c88648  ret
02c8864c  bl 0x029f5cfc
