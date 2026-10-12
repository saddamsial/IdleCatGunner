02c6d93c  mov x8,x0
02c6d940  mov w0,wzr
02c6d944  tbnz w1,#0x1f,0x02c6d96c
02c6d948  ldr x8,[x8, #0x30]
02c6d94c  cbz x8,0x02c6d96c
02c6d950  ldr w9,[x8, #0x18]
02c6d954  cmp w9,w1
02c6d958  b.le 0x02c6d970
02c6d95c  add x8,x8,w1, UXTW  #0x2
02c6d960  ldr w8,[x8, #0x20]
02c6d964  cmp w8,#0x13
02c6d968  cset w0,gt
02c6d96c  ret
02c6d970  mov w0,wzr
02c6d974  ret
