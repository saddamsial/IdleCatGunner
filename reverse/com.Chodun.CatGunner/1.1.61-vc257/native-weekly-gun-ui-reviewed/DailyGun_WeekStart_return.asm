02c8ab78  sub sp,sp,#0x30
02c8ab7c  str x30,[sp, #0x10]
02c8ab80  stp x20,x19,[sp, #0x20]
02c8ab84  adrp x20,0x625c000
02c8ab88  adrp x19,0x5e59000
02c8ab8c  ldrb w8,[x20, #0x3a4]
02c8ab90  ldr x19,[x19, #0x7d0]
02c8ab94  str x0,[sp, #0x18]
02c8ab98  tbnz w8,#0x0,0x02c8abb0
02c8ab9c  adrp x0,0x5e59000
02c8aba0  ldr x0,[x0, #0x7d0]
02c8aba4  bl 0x029f5a50
02c8aba8  mov w8,#0x1
02c8abac  strb w8,[x20, #0x3a4]
02c8abb0  ldr x0,[x19]
02c8abb4  str xzr,[sp, #0x8]
02c8abb8  ldr w8,[x0, #0xe4]
02c8abbc  cbnz w8,0x02c8abc4
02c8abc0  bl 0x029f5bd0
02c8abc4  add x0,sp,#0x18
02c8abc8  mov x1,xzr
02c8abcc  bl 0x04830de8
02c8abd0  mov w8,#0x2493
02c8abd4  add w19,w0,#0x6
02c8abd8  add x0,sp,#0x18
02c8abdc  movk w8,#0x9249, LSL #16
02c8abe0  mov x1,xzr
02c8abe4  smull x8,w19,w8
02c8abe8  lsr x8,x8,#0x20
02c8abec  add w8,w8,w19
02c8abf0  asr w9,w8,#0x2
02c8abf4  add w8,w9,w8, LSR #0x1f
02c8abf8  lsl w9,w8,#0x3
02c8abfc  sub w20,w9,w8
02c8ac00  bl 0x04830b04
02c8ac04  sub w8,w20,w19
02c8ac08  str x0,[sp, #0x8]
02c8ac0c  add x0,sp,#0x8
02c8ac10  scvtf d0,w8
02c8ac14  mov x1,xzr
02c8ac18  bl 0x0482f924
02c8ac1c  ldp x20,x19,[sp, #0x20]
02c8ac20  ldr x30,[sp, #0x10]
02c8ac24  add sp,sp,#0x30
02c8ac28  ret
