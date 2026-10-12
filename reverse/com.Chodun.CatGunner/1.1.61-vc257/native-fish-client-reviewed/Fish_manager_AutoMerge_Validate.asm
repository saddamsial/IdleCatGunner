02c5e398  stp x30,x19,[sp, #-0x10]!
02c5e39c  mov x19,x0
02c5e3a0  bl 0x02c5e1e0
02c5e3a4  tbnz w0,#0x0,0x02c5e3b4
02c5e3a8  ldrb w8,[x19, #0xb0]
02c5e3ac  cbz w8,0x02c5e3b4
02c5e3b0  strb wzr,[x19, #0xb0]
02c5e3b4  ldp x30,x19,[sp], #0x10
02c5e3b8  ret
