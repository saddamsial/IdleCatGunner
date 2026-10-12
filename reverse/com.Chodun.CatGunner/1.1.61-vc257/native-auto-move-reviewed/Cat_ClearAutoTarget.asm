02c3af70  str x30,[sp, #-0x20]!
02c3af74  stp x20,x19,[sp, #0x10]
02c3af78  mov x19,x0
02c3af7c  str xzr,[x0, #0x178]
02c3af80  add x0,x0,#0x178
02c3af84  mov x1,xzr
02c3af88  bl 0x029f59f4
02c3af8c  add x8,x19,#0x188
02c3af90  ldr s0,[x19, #0x188]
02c3af94  str wzr,[x19, #0x174]
02c3af98  ldur d1,[x8, #0x4]
02c3af9c  adrp x8,0x116c000
02c3afa0  fmul s0,s0,s0
02c3afa4  fmul v1.2S,v1.2S,v1.2S
02c3afa8  fadd s0,s0,s1
02c3afac  dup s1,v1.S[0x1]
02c3afb0  fadd s0,s0,s1
02c3afb4  ldr s1,[x8, #0x268]
02c3afb8  fcmp s0,s1
02c3afbc  b.le 0x02c3b000
02c3afc0  adrp x20,0x625b000
02c3afc4  ldrb w8,[x20, #0x26f]
02c3afc8  cbnz w8,0x02c3afe0
02c3afcc  adrp x0,0x5e58000
02c3afd0  ldr x0,[x0, #0xbf8]
02c3afd4  bl 0x029f5a50
02c3afd8  mov w8,#0x1
02c3afdc  strb w8,[x20, #0x26f]
02c3afe0  adrp x8,0x5e58000
02c3afe4  ldr x8,[x8, #0xbf8]
02c3afe8  ldr x8,[x8]
02c3afec  ldr x8,[x8, #0xb8]
02c3aff0  ldr d0,[x8]
02c3aff4  ldr s1,[x8, #0x8]
02c3aff8  str d0,[x19, #0x188]
02c3affc  str s1,[x19, #0x190]
02c3b000  ldp x20,x19,[sp, #0x10]
02c3b004  ldr x30,[sp], #0x20
02c3b008  ret
