02c375b8  stp x30,x21,[sp, #-0x20]!
02c375bc  stp x20,x19,[sp, #0x10]
02c375c0  adrp x20,0x625c000
02c375c4  mov x19,x0
02c375c8  ldrb w8,[x20, #0x75]
02c375cc  tbnz w8,#0x0,0x02c375e4
02c375d0  adrp x0,0x5e5d000
02c375d4  ldr x0,[x0, #0x4c0]
02c375d8  bl 0x029f5a50
02c375dc  mov w8,#0x1
02c375e0  strb w8,[x20, #0x75]
02c375e4  adrp x20,0x625c000
02c375e8  ldrb w8,[x20, #0xbd]
02c375ec  cbnz w8,0x02c37604
02c375f0  adrp x0,0x5e5d000
02c375f4  ldr x0,[x0, #0x920]
02c375f8  bl 0x029f5a50
02c375fc  mov w8,#0x1
02c37600  strb w8,[x20, #0xbd]
02c37604  adrp x20,0x5e5d000
02c37608  ldr x20,[x20, #0x920]
02c3760c  ldr x0,[x20]
02c37610  ldr w8,[x0, #0xe4]
02c37614  cbnz w8,0x02c37620
02c37618  bl 0x029f5bd0
02c3761c  ldr x0,[x20]
02c37620  ldr x8,[x0, #0xb8]
02c37624  ldrb w8,[x8, #0xb]
02c37628  cbz w8,0x02c37634
02c3762c  mov w8,#0x1
02c37630  b 0x02c37690
02c37634  adrp x20,0x5e5d000
02c37638  mov x21,xzr
02c3763c  ldr x20,[x20, #0x4c0]
02c37640  ldr x0,[x20]
02c37644  ldr w8,[x0, #0xe4]
02c37648  cbnz w8,0x02c37654
02c3764c  bl 0x029f5bd0
02c37650  ldr x0,[x20]
02c37654  ldr x8,[x0, #0xb8]
02c37658  ldrsw x8,[x8, #0x8]
02c3765c  cmp x21,x8
02c37660  cset w8,ge
02c37664  b.ge 0x02c37690
02c37668  ldr x9,[x19, #0x38]
02c3766c  cbz x9,0x02c376a4
02c37670  ldr w10,[x9, #0x18]
02c37674  cmp x21,x10
02c37678  b.cs 0x02c376a0
02c3767c  add x9,x9,x21, LSL #0x2
02c37680  add x21,x21,#0x1
02c37684  ldr s0,[x9, #0x20]
02c37688  fcmp s0,#0.0
02c3768c  b.hi 0x02c37644
02c37690  ldp x20,x19,[sp, #0x10]
02c37694  mov w0,w8
02c37698  ldp x30,x21,[sp], #0x20
02c3769c  ret
02c376a0  bl 0x029f5d04
02c376a4  bl 0x029f5cfc
