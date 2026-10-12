02b9bd48  ldrb w8,[x0, #0x4c]
02b9bd4c  cbz w8,0x02b9bd54
02b9bd50  ret
02b9bd54  fmov s0,0x3f000000
02b9bd58  ldr s1,[x0, #0x34]
02b9bd5c  mov w8,#0x1
02b9bd60  strb w8,[x0, #0x4c]
02b9bd64  fmul s0,s1,s0
02b9bd68  str s0,[x0, #0x38]
02b9bd6c  ret
