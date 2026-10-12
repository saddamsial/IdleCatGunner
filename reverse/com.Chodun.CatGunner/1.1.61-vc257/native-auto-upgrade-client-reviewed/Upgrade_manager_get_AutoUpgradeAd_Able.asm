02cb35c0  str x30,[sp, #-0x20]!
02cb35c4  stp x20,x19,[sp, #0x10]
02cb35c8  adrp x20,0x625c000
02cb35cc  adrp x19,0x5e5d000
02cb35d0  ldrb w8,[x20, #0x56a]
02cb35d4  ldr x19,[x19, #0x920]
02cb35d8  tbnz w8,#0x0,0x02cb35fc
02cb35dc  adrp x0,0x5e5d000
02cb35e0  ldr x0,[x0, #0x920]
02cb35e4  bl 0x029f5a50
02cb35e8  adrp x0,0x5e5d000
02cb35ec  ldr x0,[x0, #0x4e8]
02cb35f0  bl 0x029f5a50
02cb35f4  mov w8,#0x1
02cb35f8  strb w8,[x20, #0x56a]
02cb35fc  ldr x0,[x19]
02cb3600  ldr w8,[x0, #0xe4]
02cb3604  cbnz w8,0x02cb3610
02cb3608  bl 0x029f5bd0
02cb360c  ldr x0,[x19]
02cb3610  ldr x8,[x0, #0xb8]
02cb3614  ldrb w8,[x8, #0xa]
02cb3618  cbnz w8,0x02cb363c
02cb361c  adrp x19,0x5e5d000
02cb3620  ldr x19,[x19, #0x4e8]
02cb3624  ldr x0,[x19]
02cb3628  ldr w8,[x0, #0xe4]
02cb362c  cbnz w8,0x02cb3634
02cb3630  bl 0x029f5bd0
02cb3634  bl 0x02cb345c
02cb3638  tbz w0,#0x0,0x02cb3650
02cb363c  mov w8,wzr
02cb3640  ldp x20,x19,[sp, #0x10]
02cb3644  and w0,w8,#0x1
02cb3648  ldr x30,[sp], #0x20
02cb364c  ret
02cb3650  ldr x0,[x19]
02cb3654  ldr w8,[x0, #0xe4]
02cb3658  cbnz w8,0x02cb3660
02cb365c  bl 0x029f5bd0
02cb3660  bl 0x02cb3558
02cb3664  eor w8,w0,#0x1
02cb3668  b 0x02cb3640
