02c8d3cc  str x30,[sp, #-0x20]!
02c8d3d0  stp x20,x19,[sp, #0x10]
02c8d3d4  adrp x20,0x625c000
02c8d3d8  adrp x19,0x5e5d000
02c8d3dc  ldrb w8,[x20, #0x457]
02c8d3e0  ldr x19,[x19, #0x920]
02c8d3e4  tbnz w8,#0x0,0x02c8d3fc
02c8d3e8  adrp x0,0x5e5d000
02c8d3ec  ldr x0,[x0, #0x920]
02c8d3f0  bl 0x029f5a50
02c8d3f4  mov w8,#0x1
02c8d3f8  strb w8,[x20, #0x457]
02c8d3fc  ldr x0,[x19]
02c8d400  ldr w8,[x0, #0xe4]
02c8d404  cbz w8,0x02c8d414
02c8d408  ldr x8,[x0, #0xb8]
02c8d40c  ldrb w20,[x8, #0x8]
02c8d410  b 0x02c8d438
02c8d414  bl 0x029f5bd0
02c8d418  ldr x0,[x19]
02c8d41c  ldr x8,[x0, #0xb8]
02c8d420  ldr w9,[x0, #0xe4]
02c8d424  ldrb w20,[x8, #0x8]
02c8d428  cbnz w9,0x02c8d438
02c8d42c  bl 0x029f5bd0
02c8d430  ldr x8,[x19]
02c8d434  ldr x8,[x8, #0xb8]
02c8d438  ldrb w8,[x8, #0x9]
02c8d43c  add w0,w8,w20
02c8d440  ldp x20,x19,[sp, #0x10]
02c8d444  ldr x30,[sp], #0x20
02c8d448  ret
