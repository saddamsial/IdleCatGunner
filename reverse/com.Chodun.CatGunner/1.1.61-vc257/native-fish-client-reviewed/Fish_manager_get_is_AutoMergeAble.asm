02c5e1e0  str x30,[sp, #-0x20]!
02c5e1e4  stp x20,x19,[sp, #0x10]
02c5e1e8  adrp x19,0x625c000
02c5e1ec  adrp x20,0x5e5e000
02c5e1f0  ldrb w8,[x19, #0x1ff]
02c5e1f4  ldr x20,[x20, #0xb8]
02c5e1f8  tbnz w8,#0x0,0x02c5e210
02c5e1fc  adrp x0,0x5e5e000
02c5e200  ldr x0,[x0, #0xb8]
02c5e204  bl 0x029f5a50
02c5e208  mov w8,#0x1
02c5e20c  strb w8,[x19, #0x1ff]
02c5e210  ldr x0,[x20]
02c5e214  ldr w8,[x0, #0xe4]
02c5e218  cbnz w8,0x02c5e220
02c5e21c  bl 0x029f5bd0
02c5e220  ldp x20,x19,[sp, #0x10]
02c5e224  mov w0,#0x2
02c5e228  mov x1,xzr
02c5e22c  ldr x30,[sp], #0x20
02c5e230  b 0x02c9077c
