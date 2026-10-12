02c7c6e4  str x30,[sp, #-0x30]!
02c7c6e8  stp x22,x21,[sp, #0x10]
02c7c6ec  stp x20,x19,[sp, #0x20]
02c7c6f0  adrp x20,0x625c000
02c7c6f4  mov x19,x0
02c7c6f8  ldrb w8,[x20, #0x32f]
02c7c6fc  tbnz w8,#0x0,0x02c7c714
02c7c700  adrp x0,0x5e59000
02c7c704  ldr x0,[x0, #0x1c0]
02c7c708  bl 0x029f5a50
02c7c70c  mov w8,#0x1
02c7c710  strb w8,[x20, #0x32f]
02c7c714  bl 0x02c7d764
02c7c718  tbnz w0,#0x0,0x02c7c728
02c7c71c  ldrb w8,[x19, #0x60]
02c7c720  cbz w8,0x02c7c728
02c7c724  strb wzr,[x19, #0x60]
02c7c728  adrp x22,0x5e59000
02c7c72c  ldr x22,[x22, #0x1c0]
02c7c730  bl 0x02c7d764
02c7c734  tbz w0,#0x0,0x02c7c748
02c7c738  ldrb w8,[x19, #0x60]
02c7c73c  cmp w8,#0x0
02c7c740  cset w20,ne
02c7c744  b 0x02c7c74c
02c7c748  mov w20,wzr
02c7c74c  ldr x0,[x22]
02c7c750  ldr x21,[x19, #0x68]
02c7c754  ldr w8,[x0, #0xe4]
02c7c758  cbnz w8,0x02c7c760
02c7c75c  bl 0x029f5bd0
02c7c760  mov x0,x21
02c7c764  mov x1,xzr
02c7c768  mov x2,xzr
02c7c76c  bl 0x057dfa70
02c7c770  tbz w0,#0x0,0x02c7c798
02c7c774  ldr x0,[x19, #0x68]
02c7c778  cbz w20,0x02c7c78c
02c7c77c  cbz x0,0x02c7c874
02c7c780  mov x1,xzr
02c7c784  bl 0x02c2738c
02c7c788  b 0x02c7c798
02c7c78c  cbz x0,0x02c7c874
02c7c790  mov x1,xzr
02c7c794  bl 0x02c273c4
02c7c798  ldr x0,[x22]
02c7c79c  ldr x21,[x19, #0x70]
02c7c7a0  ldr w8,[x0, #0xe4]
02c7c7a4  cbnz w8,0x02c7c7ac
02c7c7a8  bl 0x029f5bd0
02c7c7ac  mov x0,x21
02c7c7b0  mov x1,xzr
02c7c7b4  mov x2,xzr
02c7c7b8  bl 0x057dfa70
02c7c7bc  tbz w0,#0x0,0x02c7c7d4
02c7c7c0  ldr x0,[x19, #0x70]
02c7c7c4  cbz x0,0x02c7c874
02c7c7c8  mov w1,w20
02c7c7cc  mov x2,xzr
02c7c7d0  bl 0x057dff3c
02c7c7d4  ldr x0,[x22]
02c7c7d8  ldr x21,[x19, #0x78]
02c7c7dc  ldr w8,[x0, #0xe4]
02c7c7e0  cbnz w8,0x02c7c7e8
02c7c7e4  bl 0x029f5bd0
02c7c7e8  mov x0,x21
02c7c7ec  mov x1,xzr
02c7c7f0  mov x2,xzr
02c7c7f4  bl 0x057dfa70
02c7c7f8  tbz w0,#0x0,0x02c7c810
02c7c7fc  ldr x0,[x19, #0x78]
02c7c800  cbz x0,0x02c7c874
02c7c804  eor w1,w20,#0x1
02c7c808  mov x2,xzr
02c7c80c  bl 0x057dff3c
02c7c810  ldr x0,[x22]
02c7c814  ldr x20,[x19, #0x80]
02c7c818  ldr w8,[x0, #0xe4]
02c7c81c  cbnz w8,0x02c7c824
02c7c820  bl 0x029f5bd0
02c7c824  mov x0,x20
02c7c828  mov x1,xzr
02c7c82c  mov x2,xzr
02c7c830  bl 0x057dfa70
02c7c834  tbz w0,#0x0,0x02c7c864
02c7c838  ldr x19,[x19, #0x80]
02c7c83c  mov x0,xzr
02c7c840  bl 0x02ca7008
02c7c844  cbz x19,0x02c7c874
02c7c848  and w1,w0,#0x1
02c7c84c  mov x0,x19
02c7c850  mov x2,xzr
02c7c854  ldp x20,x19,[sp, #0x20]
02c7c858  ldp x22,x21,[sp, #0x10]
02c7c85c  ldr x30,[sp], #0x30
02c7c860  b 0x057dff3c
02c7c864  ldp x20,x19,[sp, #0x20]
02c7c868  ldp x22,x21,[sp, #0x10]
02c7c86c  ldr x30,[sp], #0x30
02c7c870  ret
02c7c874  bl 0x029f5cfc
