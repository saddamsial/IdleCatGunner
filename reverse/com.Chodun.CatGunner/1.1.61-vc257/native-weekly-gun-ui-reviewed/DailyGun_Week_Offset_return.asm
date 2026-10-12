02c8b1c0  str x30,[sp, #-0x20]!
02c8b1c4  stp x20,x19,[sp, #0x10]
02c8b1c8  adrp x19,0x625c000
02c8b1cc  adrp x20,0x5e62000
02c8b1d0  ldrb w8,[x19, #0x3a8]
02c8b1d4  ldr x20,[x20, #0x660]
02c8b1d8  tbnz w8,#0x0,0x02c8b1f0
02c8b1dc  adrp x0,0x5e62000
02c8b1e0  ldr x0,[x0, #0x660]
02c8b1e4  bl 0x029f5a50
02c8b1e8  mov w8,#0x1
02c8b1ec  strb w8,[x19, #0x3a8]
02c8b1f0  ldr x0,[x20]
02c8b1f4  ldr w8,[x0, #0xe4]
02c8b1f8  cbnz w8,0x02c8b200
02c8b1fc  bl 0x029f5bd0
02c8b200  bl 0x02c8b074
02c8b204  mov w8,#0x6667
02c8b208  ldp x20,x19,[sp, #0x10]
02c8b20c  movk w8,#0x6666, LSL #16
02c8b210  smull x8,w0,w8
02c8b214  lsr x9,x8,#0x3f
02c8b218  asr x8,x8,#0x21
02c8b21c  add w8,w8,w9
02c8b220  add w8,w8,w8, LSL #0x2
02c8b224  sub w8,w0,w8
02c8b228  add w9,w8,#0x5
02c8b22c  cmn w8,#0x6
02c8b230  csel w0,w9,w8,hi
02c8b234  ldr x30,[sp], #0x20
02c8b238  ret
