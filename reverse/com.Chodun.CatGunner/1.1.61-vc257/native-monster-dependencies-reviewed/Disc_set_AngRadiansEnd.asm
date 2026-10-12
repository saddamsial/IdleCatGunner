04b58204  str d8,[sp, #-0x30]!
04b58208  stp x30,x21,[sp, #0x10]
04b5820c  stp x20,x19,[sp, #0x20]
04b58210  fmov s8,s0
04b58214  adrp x21,0x6263000
04b58218  adrp x20,0x5e8e000
04b5821c  ldrb w8,[x21, #0x907]
04b58220  ldr x20,[x20, #0x938]
04b58224  mov x19,x0
04b58228  tbnz w8,#0x0,0x04b58240
04b5822c  adrp x0,0x5e8e000
04b58230  ldr x0,[x0, #0x938]
04b58234  bl 0x029f5a50
04b58238  mov w8,#0x1
04b5823c  strb w8,[x21, #0x907]
04b58240  ldr x0,[x20]
04b58244  ldr w8,[x0, #0xe4]
04b58248  cbnz w8,0x04b58254
04b5824c  bl 0x029f5bd0
04b58250  ldr x0,[x20]
04b58254  ldr x8,[x0, #0xb8]
04b58258  mov x0,x19
04b5825c  str s8,[x19, #0xe4]
04b58260  ldp x20,x19,[sp, #0x20]
04b58264  fmov s0,s8
04b58268  ldp x30,x21,[sp, #0x10]
04b5826c  ldr w1,[x8, #0x90]
04b58270  ldr d8,[sp], #0x30
04b58274  b 0x04b566c0
