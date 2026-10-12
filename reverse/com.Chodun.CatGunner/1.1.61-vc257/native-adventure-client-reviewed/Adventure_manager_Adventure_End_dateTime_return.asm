02c2cb98  str x30,[sp, #-0x30]!
02c2cb9c  stp x22,x21,[sp, #0x10]
02c2cba0  stp x20,x19,[sp, #0x20]
02c2cba4  adrp x22,0x625c000
02c2cba8  mov w20,w2
02c2cbac  mov x19,x1
02c2cbb0  ldrb w8,[x22, #0x2]
02c2cbb4  mov x21,x0
02c2cbb8  tbnz w8,#0x0,0x02c2cbd0
02c2cbbc  adrp x0,0x5e59000
02c2cbc0  ldr x0,[x0, #0x7d0]
02c2cbc4  bl 0x029f5a50
02c2cbc8  mov w8,#0x1
02c2cbcc  strb w8,[x22, #0x2]
02c2cbd0  cbz x19,0x02c2cc1c
02c2cbd4  adrp x22,0x5e59000
02c2cbd8  mov x0,x21
02c2cbdc  mov w1,w20
02c2cbe0  ldr x22,[x22, #0x7d0]
02c2cbe4  bl 0x02c2d080
02c2cbe8  ldr x8,[x22]
02c2cbec  mov w20,w0
02c2cbf0  ldr w9,[x8, #0xe4]
02c2cbf4  cbnz w9,0x02c2cc00
02c2cbf8  mov x0,x8
02c2cbfc  bl 0x029f5bd0
02c2cc00  scvtf d0,w20
02c2cc04  add x0,x19,#0x18
02c2cc08  mov x1,xzr
02c2cc0c  ldp x20,x19,[sp, #0x20]
02c2cc10  ldp x22,x21,[sp, #0x10]
02c2cc14  ldr x30,[sp], #0x30
02c2cc18  b 0x0482f990
02c2cc1c  bl 0x029f5cfc
