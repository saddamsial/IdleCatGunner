02c05d94  stp x30,x21,[sp, #-0x20]!
02c05d98  stp x20,x19,[sp, #0x10]
02c05d9c  adrp x20,0x625b000
02c05da0  adrp x21,0x5e5d000
02c05da4  mov x19,x0
02c05da8  ldrb w8,[x20, #0xe76]
02c05dac  ldr x21,[x21, #0x4d8]
02c05db0  tbnz w8,#0x0,0x02c05dd4
02c05db4  adrp x0,0x5e59000
02c05db8  ldr x0,[x0, #0x1c0]
02c05dbc  bl 0x029f5a50
02c05dc0  adrp x0,0x5e5d000
02c05dc4  ldr x0,[x0, #0x4d8]
02c05dc8  bl 0x029f5a50
02c05dcc  mov w8,#0x1
02c05dd0  strb w8,[x20, #0xe76]
02c05dd4  ldr x0,[x21]
02c05dd8  adrp x20,0x5e59000
02c05ddc  ldr w8,[x0, #0xe4]
02c05de0  ldr x20,[x20, #0x1c0]
02c05de4  cbnz w8,0x02c05df0
02c05de8  bl 0x029f5bd0
02c05dec  ldr x0,[x21]
02c05df0  ldr x8,[x20]
02c05df4  ldr x9,[x0, #0xb8]
02c05df8  ldr w10,[x8, #0xe4]
02c05dfc  ldr x20,[x9, #0x70]
02c05e00  cbnz w10,0x02c05e0c
02c05e04  mov x0,x8
02c05e08  bl 0x029f5bd0
02c05e0c  mov x0,x20
02c05e10  mov x1,xzr
02c05e14  mov x2,xzr
02c05e18  bl 0x057dfa70
02c05e1c  movi d0,#0x0
02c05e20  tbz w0,#0x0,0x02c05e50
02c05e24  ldr x0,[x21]
02c05e28  ldr w8,[x0, #0xe4]
02c05e2c  cbnz w8,0x02c05e38
02c05e30  bl 0x029f5bd0
02c05e34  ldr x0,[x21]
02c05e38  ldr x8,[x0, #0xb8]
02c05e3c  ldr s0,[x8, #0x64]
02c05e40  mov w8,#0x42700000
02c05e44  fmov s1,w8
02c05e48  scvtf s0,s0
02c05e4c  fmul s0,s0,s1
02c05e50  ldr s1,[x19, #0x20]
02c05e54  ldp x20,x19,[sp, #0x10]
02c05e58  fadd s0,s0,s1
02c05e5c  ldp x30,x21,[sp], #0x20
02c05e60  ret
