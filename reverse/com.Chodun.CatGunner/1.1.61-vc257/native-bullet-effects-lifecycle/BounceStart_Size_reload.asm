02b9b6a8  ldrb w8,[x0, #0x38]
02b9b6ac  cbz w8,0x02b9b6b4
02b9b6b0  ret
02b9b6b4  ldp s0,s1,[x0, #0x28]
02b9b6b8  mov w8,#0x1
02b9b6bc  strb w8,[x0, #0x38]
02b9b6c0  fmul s1,s0,s1
02b9b6c4  fsub s0,s0,s1
02b9b6c8  stp s1,s0,[x0, #0x30]
02b9b6cc  ret
