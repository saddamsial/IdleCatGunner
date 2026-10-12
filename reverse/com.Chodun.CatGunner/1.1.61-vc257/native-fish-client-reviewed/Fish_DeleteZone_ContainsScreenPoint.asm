02c60150  stp d9,d8,[sp, #-0x40]!
02c60154  str x30,[sp, #0x10]
02c60158  stp x22,x21,[sp, #0x20]
02c6015c  stp x20,x19,[sp, #0x30]
02c60160  fmov s8,s1
02c60164  fmov s9,s0
02c60168  adrp x22,0x625c000
02c6016c  adrp x21,0x5e5c000
02c60170  ldrb w8,[x22, #0x217]
02c60174  mov x19,x1
02c60178  ldr x21,[x21, #0xf00]
02c6017c  mov x20,x0
02c60180  tbnz w8,#0x0,0x02c60198
02c60184  adrp x0,0x5e5c000
02c60188  ldr x0,[x0, #0xf00]
02c6018c  bl 0x029f5a50
02c60190  mov w8,#0x1
02c60194  strb w8,[x22, #0x217]
02c60198  ldr x0,[x21]
02c6019c  ldr x20,[x20, #0x50]
02c601a0  ldr w8,[x0, #0xe4]
02c601a4  cbnz w8,0x02c601ac
02c601a8  bl 0x029f5bd0
02c601ac  mov x0,x20
02c601b0  mov x1,x19
02c601b4  ldr x30,[sp, #0x10]
02c601b8  ldp x20,x19,[sp, #0x30]
02c601bc  fmov s0,s9
02c601c0  ldp x22,x21,[sp, #0x20]
02c601c4  fmov s1,s8
02c601c8  mov x2,xzr
02c601cc  ldp d9,d8,[sp], #0x40
02c601d0  b 0x05aa0e54
