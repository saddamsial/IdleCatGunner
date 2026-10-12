02c6d8d8  mov x8,x0
02c6d8dc  mov w0,wzr
02c6d8e0  tbnz w1,#0x1f,0x02c6d8f8
02c6d8e4  ldr x8,[x8, #0x30]
02c6d8e8  cbz x8,0x02c6d8f8
02c6d8ec  ldr w8,[x8, #0x18]
02c6d8f0  cmp w8,w1
02c6d8f4  cset w0,gt
02c6d8f8  ret
