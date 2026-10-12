02c2e5f8  stp x30,x21,[sp, #-0x20]!
02c2e5fc  stp x20,x19,[sp, #0x10]
02c2e600  mov w20,w1
02c2e604  mov w1,w2
02c2e608  mov w19,w2
02c2e60c  mov x21,x0
02c2e610  bl 0x02c2db58
02c2e614  tbz w0,#0x0,0x02c2e64c
02c2e618  mov x0,x21
02c2e61c  mov w1,w20
02c2e620  mov w2,w19
02c2e624  bl 0x02c2db00
02c2e628  tbz w0,#0x0,0x02c2e654
02c2e62c  mov x0,x21
02c2e630  mov w1,w20
02c2e634  mov w2,w19
02c2e638  bl 0x02c2e56c
02c2e63c  mov w8,#0x2
02c2e640  tst w0,#0x1
02c2e644  cinc w0,w8,ne
02c2e648  b 0x02c2e658
02c2e64c  mov w0,wzr
02c2e650  b 0x02c2e658
02c2e654  mov w0,#0x1
02c2e658  ldp x20,x19,[sp, #0x10]
02c2e65c  ldp x30,x21,[sp], #0x20
02c2e660  ret
