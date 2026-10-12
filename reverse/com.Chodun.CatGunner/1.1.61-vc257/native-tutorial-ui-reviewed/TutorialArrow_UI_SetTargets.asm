02cae70c  stp x30,x23,[sp, #-0x30]!
02cae710  stp x22,x21,[sp, #0x10]
02cae714  stp x20,x19,[sp, #0x20]
02cae718  adrp x22,0x625c000
02cae71c  mov x20,x2
02cae720  mov x21,x1
02cae724  ldrb w8,[x22, #0x52e]
02cae728  mov x19,x0
02cae72c  tbnz w8,#0x0,0x02cae744
02cae730  adrp x0,0x5e59000
02cae734  ldr x0,[x0, #0x1c0]
02cae738  bl 0x029f5a50
02cae73c  mov w8,#0x1
02cae740  strb w8,[x22, #0x52e]
02cae744  mov x22,x19
02cae748  mov x1,x21
02cae74c  str x21,[x22, #0x20]!
02cae750  mov x0,x22
02cae754  bl 0x029f59f4
02cae758  mov x21,x19
02cae75c  mov x1,x20
02cae760  str x20,[x21, #0x28]!
02cae764  mov x0,x21
02cae768  bl 0x029f59f4
02cae76c  mov x20,x19
02cae770  ldr x1,[x20, #0x50]!
02cae774  cbz x1,0x02cae794
02cae778  mov x0,x19
02cae77c  mov x2,xzr
02cae780  bl 0x057e237c
02cae784  mov x0,x20
02cae788  mov x1,xzr
02cae78c  str xzr,[x19, #0x50]
02cae790  bl 0x029f59f4
02cae794  mov x0,x19
02cae798  mov x1,xzr
02cae79c  bl 0x057dc1c8
02cae7a0  cbz x0,0x02cae84c
02cae7a4  mov x1,xzr
02cae7a8  bl 0x057e00b4
02cae7ac  tbz w0,#0x0,0x02cae83c
02cae7b0  adrp x23,0x5e59000
02cae7b4  ldr x23,[x23, #0x1c0]
02cae7b8  ldr x22,[x22]
02cae7bc  ldr x0,[x23]
02cae7c0  ldr w8,[x0, #0xe4]
02cae7c4  cbnz w8,0x02cae7cc
02cae7c8  bl 0x029f5bd0
02cae7cc  mov x0,x22
02cae7d0  mov x1,xzr
02cae7d4  mov x2,xzr
02cae7d8  bl 0x057dfa70
02cae7dc  tbz w0,#0x0,0x02cae83c
02cae7e0  ldr x0,[x23]
02cae7e4  ldr x21,[x21]
02cae7e8  ldr w8,[x0, #0xe4]
02cae7ec  cbnz w8,0x02cae7f4
02cae7f0  bl 0x029f5bd0
02cae7f4  mov x0,x21
02cae7f8  mov x1,xzr
02cae7fc  mov x2,xzr
02cae800  bl 0x057dfa70
02cae804  tbz w0,#0x0,0x02cae83c
02cae808  mov x0,x19
02cae80c  bl 0x02cae65c
02cae810  mov x1,x0
02cae814  mov x0,x19
02cae818  mov x2,xzr
02cae81c  bl 0x057e2120
02cae820  mov x1,x0
02cae824  mov x0,x20
02cae828  str x1,[x19, #0x50]
02cae82c  ldp x20,x19,[sp, #0x20]
02cae830  ldp x22,x21,[sp, #0x10]
02cae834  ldp x30,x23,[sp], #0x30
02cae838  b 0x029f59f4
02cae83c  ldp x20,x19,[sp, #0x20]
02cae840  ldp x22,x21,[sp, #0x10]
02cae844  ldp x30,x23,[sp], #0x30
02cae848  ret
02cae84c  bl 0x029f5cfc
