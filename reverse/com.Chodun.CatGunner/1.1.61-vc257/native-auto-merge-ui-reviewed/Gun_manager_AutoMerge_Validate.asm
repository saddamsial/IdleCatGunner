02c69694  stp x30,x19,[sp, #-0x10]!
02c69698  mov x19,x0
02c6969c  bl 0x02c694d4
02c696a0  tbnz w0,#0x0,0x02c696b0
02c696a4  ldrb w8,[x19, #0x70]
02c696a8  cbz w8,0x02c696b0
02c696ac  strb wzr,[x19, #0x70]
02c696b0  ldp x30,x19,[sp], #0x10
02c696b4  ret
