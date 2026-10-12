02c5ab44  stp x30,x23,[sp, #-0x30]!
02c5ab48  stp x22,x21,[sp, #0x10]
02c5ab4c  stp x20,x19,[sp, #0x20]
02c5ab50  adrp x20,0x625c000
02c5ab54  adrp x21,0x5e5e000
02c5ab58  mov x19,x0
02c5ab5c  ldrb w8,[x20, #0x1d8]
02c5ab60  ldr x21,[x21, #0x70]
02c5ab64  tbnz w8,#0x0,0x02c5ab94
02c5ab68  adrp x0,0x5e62000
02c5ab6c  ldr x0,[x0, #0xfe8]
02c5ab70  bl 0x029f5a50
02c5ab74  adrp x0,0x5e63000
02c5ab78  ldr x0,[x0, #0x128]
02c5ab7c  bl 0x029f5a50
02c5ab80  adrp x0,0x5e5e000
02c5ab84  ldr x0,[x0, #0x70]
02c5ab88  bl 0x029f5a50
02c5ab8c  mov w8,#0x1
02c5ab90  strb w8,[x20, #0x1d8]
02c5ab94  ldr x0,[x21]
02c5ab98  ldr w8,[x0, #0xe4]
02c5ab9c  cbnz w8,0x02c5aba4
02c5aba0  bl 0x029f5bd0
02c5aba4  mov x0,xzr
02c5aba8  bl 0x02c581f4
02c5abac  ldr x8,[x19, #0x20]
02c5abb0  cbz x8,0x02c5ac20
02c5abb4  adrp x23,0x5e63000
02c5abb8  mov x20,x0
02c5abbc  mov w21,wzr
02c5abc0  ldr x23,[x23, #0x128]
02c5abc4  ldr w9,[x8, #0x18]
02c5abc8  cmp w21,w9
02c5abcc  b.ge 0x02c5ac24
02c5abd0  b.cs 0x02c5ac34
02c5abd4  cbz x20,0x02c5ac20
02c5abd8  add x8,x8,w21, SXTW  #0x3
02c5abdc  ldr w9,[x20, #0x18]
02c5abe0  ldr x22,[x8, #0x20]
02c5abe4  cmp w21,w9
02c5abe8  b.ge 0x02c5ac04
02c5abec  ldr x2,[x23]
02c5abf0  mov x0,x20
02c5abf4  mov w1,w21
02c5abf8  bl 0x044f7718
02c5abfc  mov w1,w0
02c5ac00  b 0x02c5ac08
02c5ac04  mov w1,#0xffffffff
02c5ac08  cbz x22,0x02c5ac20
02c5ac0c  mov x0,x22
02c5ac10  bl 0x02c5a8bc
02c5ac14  ldr x8,[x19, #0x20]
02c5ac18  add w21,w21,#0x1
02c5ac1c  cbnz x8,0x02c5abc4
02c5ac20  bl 0x029f5cfc
02c5ac24  ldp x20,x19,[sp, #0x20]
02c5ac28  ldp x22,x21,[sp, #0x10]
02c5ac2c  ldp x30,x23,[sp], #0x30
02c5ac30  ret
02c5ac34  bl 0x029f5d04
