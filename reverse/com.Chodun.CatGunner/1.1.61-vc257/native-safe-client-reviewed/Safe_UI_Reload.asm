02c6c5c4  str x30,[sp, #-0x30]!
02c6c5c8  stp x22,x21,[sp, #0x10]
02c6c5cc  stp x20,x19,[sp, #0x20]
02c6c5d0  adrp x20,0x625c000
02c6c5d4  mov x19,x0
02c6c5d8  ldrb w8,[x20, #0x2a1]
02c6c5dc  tbnz w8,#0x0,0x02c6c5f4
02c6c5e0  adrp x0,0x5e59000
02c6c5e4  ldr x0,[x0, #0x1c0]
02c6c5e8  bl 0x029f5a50
02c6c5ec  mov w8,#0x1
02c6c5f0  strb w8,[x20, #0x2a1]
02c6c5f4  ldr x8,[x19, #0x20]
02c6c5f8  cbz x8,0x02c6c680
02c6c5fc  adrp x22,0x5e59000
02c6c600  mov x20,xzr
02c6c604  ldr x22,[x22, #0x1c0]
02c6c608  ldr w9,[x8, #0x18]
02c6c60c  cmp x20,w9, SXTW 
02c6c610  b.ge 0x02c6c680
02c6c614  cmp x20,x9
02c6c618  b.cs 0x02c6c690
02c6c61c  ldr x0,[x22]
02c6c620  add x8,x8,x20, LSL #0x3
02c6c624  ldr w9,[x0, #0xe4]
02c6c628  ldr x21,[x8, #0x20]
02c6c62c  cbnz w9,0x02c6c634
02c6c630  bl 0x029f5bd0
02c6c634  mov x0,x21
02c6c638  mov x1,xzr
02c6c63c  mov x2,xzr
02c6c640  bl 0x057dfa70
02c6c644  tbz w0,#0x0,0x02c6c670
02c6c648  ldr x8,[x19, #0x20]
02c6c64c  cbz x8,0x02c6c67c
02c6c650  ldr w9,[x8, #0x18]
02c6c654  cmp x20,x9
02c6c658  b.cs 0x02c6c690
02c6c65c  add x8,x8,x20, LSL #0x3
02c6c660  ldr x0,[x8, #0x20]
02c6c664  cbz x0,0x02c6c67c
02c6c668  mov w1,w20
02c6c66c  bl 0x02c6c878
02c6c670  ldr x8,[x19, #0x20]
02c6c674  add x20,x20,#0x1
02c6c678  cbnz x8,0x02c6c608
02c6c67c  bl 0x029f5cfc
02c6c680  ldp x20,x19,[sp, #0x20]
02c6c684  ldp x22,x21,[sp, #0x10]
02c6c688  ldr x30,[sp], #0x30
02c6c68c  ret
02c6c690  bl 0x029f5d04
