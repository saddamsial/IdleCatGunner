02c444d8  str x30,[sp, #-0x20]!
02c444dc  stp x20,x19,[sp, #0x10]
02c444e0  adrp x20,0x625c000
02c444e4  mov x19,x0
02c444e8  ldrb w8,[x20, #0x1c6]
02c444ec  tbnz w8,#0x0,0x02c44504
02c444f0  adrp x0,0x5e5e000
02c444f4  ldr x0,[x0, #0x70]
02c444f8  bl 0x029f5a50
02c444fc  mov w8,#0x1
02c44500  strb w8,[x20, #0x1c6]
02c44504  ldr w19,[x19, #0x100]
02c44508  cmn w19,#0x1
02c4450c  b.eq 0x02c44538
02c44510  adrp x8,0x5e5e000
02c44514  ldr x8,[x8, #0x70]
02c44518  ldr x0,[x8]
02c4451c  ldr w8,[x0, #0xe4]
02c44520  cbnz w8,0x02c44528
02c44524  bl 0x029f5bd0
02c44528  bl 0x02c549a0
02c4452c  cmp w19,w0
02c44530  cset w0,eq
02c44534  b 0x02c4453c
02c44538  mov w0,wzr
02c4453c  ldp x20,x19,[sp, #0x10]
02c44540  ldr x30,[sp], #0x20
02c44544  ret
