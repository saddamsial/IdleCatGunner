02c2e778  cmp w0,#0x2
02c2e77c  b.eq 0x02c2e7bc
02c2e780  cmp w0,#0x1
02c2e784  b.eq 0x02c2e79c
02c2e788  cbnz w0,0x02c2e7b4
02c2e78c  cmp w1,#0x5
02c2e790  b.cs 0x02c2e7b4
02c2e794  mov w8,#0x13
02c2e798  b 0x02c2e7a8
02c2e79c  cmp w1,#0x6
02c2e7a0  b.cs 0x02c2e7b4
02c2e7a4  mov w8,#0x25
02c2e7a8  lsr w8,w8,w1
02c2e7ac  and w0,w8,#0x1
02c2e7b0  ret
02c2e7b4  mov w0,wzr
02c2e7b8  ret
02c2e7bc  mov w8,#0x49
02c2e7c0  cmp w1,#0x7
02c2e7c4  lsr w8,w8,w1
02c2e7c8  and w8,w8,#0x1
02c2e7cc  csel w0,w8,wzr,cc
02c2e7d0  ret
