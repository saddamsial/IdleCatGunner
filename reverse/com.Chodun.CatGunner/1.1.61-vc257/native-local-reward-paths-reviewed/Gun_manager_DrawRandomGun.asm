02c686ac  str x30,[sp, #-0x30]!
02c686b0  stp x22,x21,[sp, #0x10]
02c686b4  stp x20,x19,[sp, #0x20]
02c686b8  adrp x21,0x625c000
02c686bc  mov w20,w1
02c686c0  mov x19,x0
02c686c4  ldrb w8,[x21, #0x263]
02c686c8  tbnz w8,#0x0,0x02c686e0
02c686cc  adrp x0,0x5e59000
02c686d0  ldr x0,[x0, #0x1c0]
02c686d4  bl 0x029f5a50
02c686d8  mov w8,#0x1
02c686dc  strb w8,[x21, #0x263]
02c686e0  mov x0,x19
02c686e4  bl 0x02c67de0
02c686e8  cmn w0,#0x1
02c686ec  b.eq 0x02c68794
02c686f0  mov w21,w0
02c686f4  add w0,w20,w20, LSL #0x2
02c686f8  mov x2,xzr
02c686fc  add w1,w0,#0x5
02c68700  bl 0x057d5614
02c68704  ldr x8,[x19, #0x40]
02c68708  cbz x8,0x02c687ac
02c6870c  ldr w9,[x8, #0x18]
02c68710  cmp w21,w9
02c68714  b.cs 0x02c687b0
02c68718  add x8,x8,w21, SXTW  #0x2
02c6871c  adrp x22,0x5e59000
02c68720  mov w20,w0
02c68724  ldr x22,[x22, #0x1c0]
02c68728  mov w1,w21
02c6872c  mov w2,wzr
02c68730  str w0,[x8, #0x20]
02c68734  mov x0,x19
02c68738  bl 0x02c6802c
02c6873c  ldr x0,[x22]
02c68740  ldr x22,[x19, #0x58]
02c68744  ldr w8,[x0, #0xe4]
02c68748  cbnz w8,0x02c68750
02c6874c  bl 0x029f5bd0
02c68750  mov x0,x22
02c68754  mov x1,xzr
02c68758  mov x2,xzr
02c6875c  bl 0x057dfa70
02c68760  tbz w0,#0x0,0x02c68788
02c68764  ldr x0,[x19, #0x58]
02c68768  cbz x0,0x02c687ac
02c6876c  mov x1,xzr
02c68770  bl 0x02c73c20
02c68774  ldr x0,[x19, #0x58]
02c68778  cbz x0,0x02c687ac
02c6877c  mov w1,w21
02c68780  mov x2,xzr
02c68784  bl 0x02c761fc
02c68788  mov x0,x19
02c6878c  bl 0x02c67c50
02c68790  b 0x02c68798
02c68794  mov w20,#0xffffffff
02c68798  mov w0,w20
02c6879c  ldp x20,x19,[sp, #0x20]
02c687a0  ldp x22,x21,[sp, #0x10]
02c687a4  ldr x30,[sp], #0x30
02c687a8  ret
02c687ac  bl 0x029f5cfc
02c687b0  bl 0x029f5d04
