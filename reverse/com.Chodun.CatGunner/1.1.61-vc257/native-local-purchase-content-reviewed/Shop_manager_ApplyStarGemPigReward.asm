02c98728  sub sp,sp,#0x30
02c9872c  stp x30,x21,[sp, #0x10]
02c98730  stp x20,x19,[sp, #0x20]
02c98734  adrp x21,0x625c000
02c98738  adrp x20,0x5e5e000
02c9873c  mov x19,x1
02c98740  ldrb w8,[x21, #0x466]
02c98744  ldr x20,[x20, #0x3e0]
02c98748  tbnz w8,#0x0,0x02c98784
02c9874c  adrp x0,0x5e58000
02c98750  ldr x0,[x0, #0xf08]
02c98754  bl 0x029f5a50
02c98758  adrp x0,0x5e59000
02c9875c  ldr x0,[x0, #0x1c0]
02c98760  bl 0x029f5a50
02c98764  adrp x0,0x5e5e000
02c98768  ldr x0,[x0, #0x3e0]
02c9876c  bl 0x029f5a50
02c98770  adrp x0,0x5e64000
02c98774  ldr x0,[x0, #0x460]
02c98778  bl 0x029f5a50
02c9877c  mov w8,#0x1
02c98780  strb w8,[x21, #0x466]
02c98784  ldr x0,[x20]
02c98788  str wzr,[sp, #0xc]
02c9878c  ldr w8,[x0, #0xe4]
02c98790  cbnz w8,0x02c98798
02c98794  bl 0x029f5bd0
02c98798  add x1,sp,#0xc
02c9879c  mov x0,x19
02c987a0  mov x2,xzr
02c987a4  bl 0x02ca0470
02c987a8  tbz w0,#0x0,0x02c98824
02c987ac  ldr x0,[x20]
02c987b0  adrp x19,0x5e59000
02c987b4  ldr w8,[x0, #0xe4]
02c987b8  ldr x19,[x19, #0x1c0]
02c987bc  cbnz w8,0x02c987c8
02c987c0  bl 0x029f5bd0
02c987c4  ldr x0,[x20]
02c987c8  ldr x8,[x19]
02c987cc  ldr x9,[x0, #0xb8]
02c987d0  ldr w10,[x8, #0xe4]
02c987d4  ldr x19,[x9]
02c987d8  cbnz w10,0x02c987e4
02c987dc  mov x0,x8
02c987e0  bl 0x029f5bd0
02c987e4  mov x0,x19
02c987e8  mov x1,xzr
02c987ec  mov x2,xzr
02c987f0  bl 0x057e14b4
02c987f4  tbz w0,#0x0,0x02c9882c
02c987f8  adrp x8,0x5e58000
02c987fc  ldr x8,[x8, #0xf08]
02c98800  ldr x0,[x8]
02c98804  ldr w8,[x0, #0xe4]
02c98808  cbnz w8,0x02c98810
02c9880c  bl 0x029f5bd0
02c98810  adrp x8,0x5e64000
02c98814  mov x1,xzr
02c98818  ldr x8,[x8, #0x460]
02c9881c  ldr x0,[x8]
02c98820  bl 0x0579a8d0
02c98824  mov w0,wzr
02c98828  b 0x02c98858
02c9882c  ldr x0,[x20]
02c98830  ldr w8,[x0, #0xe4]
02c98834  cbnz w8,0x02c98840
02c98838  bl 0x029f5bd0
02c9883c  ldr x0,[x20]
02c98840  ldr x8,[x0, #0xb8]
02c98844  ldr x0,[x8]
02c98848  cbz x0,0x02c9886c
02c9884c  ldr w1,[sp, #0xc]
02c98850  mov x2,xzr
02c98854  bl 0x02ca157c
02c98858  ldp x20,x19,[sp, #0x20]
02c9885c  and w0,w0,#0x1
02c98860  ldp x30,x21,[sp, #0x10]
02c98864  add sp,sp,#0x30
02c98868  ret
02c9886c  bl 0x029f5cfc
