02ba5df0  str x30,[sp, #-0x30]!
02ba5df4  stp x22,x21,[sp, #0x10]
02ba5df8  stp x20,x19,[sp, #0x20]
02ba5dfc  adrp x21,0x625b000
02ba5e00  adrp x22,0x5e5e000
02ba5e04  mov w19,w1
02ba5e08  ldrb w8,[x21, #0xa4b]
02ba5e0c  ldr x22,[x22, #0x790]
02ba5e10  mov x20,x0
02ba5e14  tbnz w8,#0x0,0x02ba5e2c
02ba5e18  adrp x0,0x5e5e000
02ba5e1c  ldr x0,[x0, #0x790]
02ba5e20  bl 0x029f5a50
02ba5e24  mov w8,#0x1
02ba5e28  strb w8,[x21, #0xa4b]
02ba5e2c  ldr x0,[x22]
02ba5e30  bl 0x029f5cec
02ba5e34  mov w1,wzr
02ba5e38  mov x2,xzr
02ba5e3c  mov x21,x0
02ba5e40  bl 0x02c03830
02ba5e44  cbz x21,0x02ba5e70
02ba5e48  mov x0,x21
02ba5e4c  mov x1,x20
02ba5e50  str x20,[x0, #0x20]!
02ba5e54  bl 0x029f59f4
02ba5e58  mov x0,x21
02ba5e5c  str w19,[x21, #0x28]
02ba5e60  ldp x20,x19,[sp, #0x20]
02ba5e64  ldp x22,x21,[sp, #0x10]
02ba5e68  ldr x30,[sp], #0x30
02ba5e6c  ret
02ba5e70  bl 0x029f5cfc
