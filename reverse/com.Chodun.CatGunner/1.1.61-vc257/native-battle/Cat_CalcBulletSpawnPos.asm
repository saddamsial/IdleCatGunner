02c424cc  str d10,[sp, #-0x30]!
02c424d0  stp d9,d8,[sp, #0x8]
02c424d4  str x30,[sp, #0x18]
02c424d8  stp x20,x19,[sp, #0x20]
02c424dc  adrp x20,0x625c000
02c424e0  mov x19,x0
02c424e4  ldrb w8,[x20, #0xb7]
02c424e8  tbnz w8,#0x0,0x02c42500
02c424ec  adrp x0,0x5e63000
02c424f0  ldr x0,[x0, #0x1d8]
02c424f4  bl 0x029f5a50
02c424f8  mov w8,#0x1
02c424fc  strb w8,[x20, #0xb7]
02c42500  ldr x0,[x19, #0xe0]
02c42504  cbz x0,0x02c42578
02c42508  adrp x19,0x5e63000
02c4250c  mov x1,xzr
02c42510  ldr x19,[x19, #0x1d8]
02c42514  bl 0x057eed98
02c42518  fmov s8,s0
02c4251c  fmov s10,s1
02c42520  ldr x0,[x19]
02c42524  fmov s9,s2
02c42528  ldr w8,[x0, #0xe4]
02c4252c  cbnz w8,0x02c42538
02c42530  bl 0x029f5bd0
02c42534  ldr x0,[x19]
02c42538  fmov s0,0x40000000
02c4253c  ldr x8,[x0, #0xb8]
02c42540  ldr x30,[sp, #0x18]
02c42544  ldp x20,x19,[sp, #0x20]
02c42548  ldp s2,s1,[x8, #0x38]
02c4254c  fsub s0,s0,s10
02c42550  fdiv s0,s0,s1
02c42554  ldr s1,[x8, #0x40]
02c42558  fmul s2,s0,s2
02c4255c  fmul s1,s0,s1
02c42560  fadd s0,s8,s2
02c42564  fadd s2,s9,s1
02c42568  fmov s1,0x40000000
02c4256c  ldp d9,d8,[sp, #0x8]
02c42570  ldr d10,[sp], #0x30
02c42574  ret
02c42578  bl 0x029f5cfc
