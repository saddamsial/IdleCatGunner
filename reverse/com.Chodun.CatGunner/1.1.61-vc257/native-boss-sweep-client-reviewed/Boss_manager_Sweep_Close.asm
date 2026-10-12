02c47788  str x30,[sp, #-0x20]!
02c4778c  stp x20,x19,[sp, #0x10]
02c47790  adrp x20,0x625c000
02c47794  mov x19,x0
02c47798  ldrb w8,[x20, #0xec]
02c4779c  tbnz w8,#0x0,0x02c477cc
02c477a0  adrp x0,0x5e5d000
02c477a4  ldr x0,[x0, #0x910]
02c477a8  bl 0x029f5a50
02c477ac  adrp x0,0x5e59000
02c477b0  ldr x0,[x0, #0x1c0]
02c477b4  bl 0x029f5a50
02c477b8  adrp x0,0x5e5d000
02c477bc  ldr x0,[x0, #0x920]
02c477c0  bl 0x029f5a50
02c477c4  mov w8,#0x1
02c477c8  strb w8,[x20, #0xec]
02c477cc  ldr x0,[x19, #0xd8]
02c477d0  strb wzr,[x19, #0x108]
02c477d4  cbz x0,0x02c47884
02c477d8  mov w1,wzr
02c477dc  mov x2,xzr
02c477e0  bl 0x057dff3c
02c477e4  ldrb w8,[x19, #0x7e]
02c477e8  cbnz w8,0x02c47878
02c477ec  adrp x8,0x5e5d000
02c477f0  ldr x8,[x8, #0x920]
02c477f4  ldr x0,[x8]
02c477f8  ldr w8,[x0, #0xe4]
02c477fc  cbnz w8,0x02c47804
02c47800  bl 0x029f5bd0
02c47804  mov x0,xzr
02c47808  bl 0x02c92704
02c4780c  tbnz w0,#0x0,0x02c47878
02c47810  adrp x20,0x5e5d000
02c47814  adrp x8,0x5e59000
02c47818  ldr x20,[x20, #0x910]
02c4781c  ldr x8,[x8, #0x1c0]
02c47820  ldr x9,[x20]
02c47824  ldr x0,[x8]
02c47828  ldr x8,[x9, #0xb8]
02c4782c  ldr w9,[x0, #0xe4]
02c47830  ldr x19,[x8]
02c47834  cbnz w9,0x02c4783c
02c47838  bl 0x029f5bd0
02c4783c  mov x0,x19
02c47840  mov x1,xzr
02c47844  mov x2,xzr
02c47848  bl 0x057dfa70
02c4784c  tbz w0,#0x0,0x02c47878
02c47850  ldr x8,[x20]
02c47854  ldr x8,[x8, #0xb8]
02c47858  ldr x0,[x8]
02c4785c  cbz x0,0x02c47884
02c47860  ldp x20,x19,[sp, #0x10]
02c47864  mov w1,#0x3
02c47868  mov x2,xzr
02c4786c  mov x3,xzr
02c47870  ldr x30,[sp], #0x20
02c47874  b 0x02b8ddb4
02c47878  ldp x20,x19,[sp, #0x10]
02c4787c  ldr x30,[sp], #0x20
02c47880  ret
02c47884  bl 0x029f5cfc
