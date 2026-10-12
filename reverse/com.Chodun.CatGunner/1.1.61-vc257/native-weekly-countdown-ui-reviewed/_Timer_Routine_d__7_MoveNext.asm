02c8c580  str x30,[sp, #-0x30]!
02c8c584  stp x22,x21,[sp, #0x10]
02c8c588  stp x20,x19,[sp, #0x20]
02c8c58c  adrp x20,0x625c000
02c8c590  mov x19,x0
02c8c594  ldrb w8,[x20, #0x3b6]
02c8c598  tbnz w8,#0x0,0x02c8c5c8
02c8c59c  adrp x0,0x5e62000
02c8c5a0  ldr x0,[x0, #0x660]
02c8c5a4  bl 0x029f5a50
02c8c5a8  adrp x0,0x5e59000
02c8c5ac  ldr x0,[x0, #0x1c0]
02c8c5b0  bl 0x029f5a50
02c8c5b4  adrp x0,0x5e5b000
02c8c5b8  ldr x0,[x0, #0xed0]
02c8c5bc  bl 0x029f5a50
02c8c5c0  mov w8,#0x1
02c8c5c4  strb w8,[x20, #0x3b6]
02c8c5c8  ldr w8,[x19, #0x10]
02c8c5cc  ldr x20,[x19, #0x20]
02c8c5d0  cmp w8,#0x1
02c8c5d4  b.eq 0x02c8c618
02c8c5d8  cbnz w8,0x02c8c74c
02c8c5dc  adrp x8,0x5e5b000
02c8c5e0  mov w9,#0xffffffff
02c8c5e4  ldr x8,[x8, #0xed0]
02c8c5e8  str w9,[x19, #0x10]
02c8c5ec  ldr x0,[x8]
02c8c5f0  bl 0x029f5cec
02c8c5f4  fmov s0,0x3f800000
02c8c5f8  mov x1,xzr
02c8c5fc  mov x21,x0
02c8c600  bl 0x057e85dc
02c8c604  mov x0,x19
02c8c608  mov x1,x21
02c8c60c  str x21,[x0, #0x28]!
02c8c610  bl 0x029f59f4
02c8c614  b 0x02c8c620
02c8c618  mov w8,#0xffffffff
02c8c61c  str w8,[x19, #0x10]
02c8c620  cbz x20,0x02c8c748
02c8c624  adrp x8,0x5e59000
02c8c628  ldr x8,[x8, #0x1c0]
02c8c62c  ldr x21,[x20, #0x28]
02c8c630  ldr x0,[x8]
02c8c634  ldr w8,[x0, #0xe4]
02c8c638  cbnz w8,0x02c8c640
02c8c63c  bl 0x029f5bd0
02c8c640  adrp x22,0x5e62000
02c8c644  mov x0,x21
02c8c648  mov x1,xzr
02c8c64c  ldr x22,[x22, #0x660]
02c8c650  mov x2,xzr
02c8c654  bl 0x057dfa70
02c8c658  tbz w0,#0x0,0x02c8c694
02c8c65c  ldr x0,[x22]
02c8c660  ldr x21,[x20, #0x28]
02c8c664  ldr w8,[x0, #0xe4]
02c8c668  cbnz w8,0x02c8c670
02c8c66c  bl 0x029f5bd0
02c8c670  bl 0x02c8ac2c
02c8c674  bl 0x02c8ad70
02c8c678  cbz x21,0x02c8c748
02c8c67c  ldr x8,[x21]
02c8c680  mov x1,x0
02c8c684  mov x0,x21
02c8c688  ldr x9,[x8, #0x558]
02c8c68c  ldr x2,[x8, #0x560]
02c8c690  blr x9
02c8c694  ldr x0,[x22]
02c8c698  ldr w8,[x0, #0xe4]
02c8c69c  cbnz w8,0x02c8c6a8
02c8c6a0  bl 0x029f5bd0
02c8c6a4  ldr x0,[x22]
02c8c6a8  ldr x8,[x0, #0xb8]
02c8c6ac  ldr x0,[x8]
02c8c6b0  cbz x0,0x02c8c748
02c8c6b4  bl 0x02c8b2d0
02c8c6b8  ldr x8,[x22]
02c8c6bc  ldr x8,[x8, #0xb8]
02c8c6c0  ldr x8,[x8]
02c8c6c4  cbz x8,0x02c8c748
02c8c6c8  ldur x0,[x20, #0x38]
02c8c6cc  ldr x1,[x8, #0x28]
02c8c6d0  mov x2,xzr
02c8c6d4  bl 0x046bf4e4
02c8c6d8  tbz w0,#0x0,0x02c8c75c
02c8c6dc  ldr x0,[x22]
02c8c6e0  ldr w8,[x0, #0xe4]
02c8c6e4  cbnz w8,0x02c8c6f0
02c8c6e8  bl 0x029f5bd0
02c8c6ec  ldr x0,[x22]
02c8c6f0  ldr x8,[x0, #0xb8]
02c8c6f4  ldr x8,[x8]
02c8c6f8  cbz x8,0x02c8c748
02c8c6fc  ldr x1,[x8, #0x28]
02c8c700  add x0,x20,#0x38
02c8c704  str x1,[x20, #0x38]
02c8c708  bl 0x029f59f4
02c8c70c  ldr x8,[x20, #0x20]
02c8c710  cbz x8,0x02c8c748
02c8c714  mov x21,xzr
02c8c718  ldr w9,[x8, #0x18]
02c8c71c  cmp x21,w9, SXTW 
02c8c720  b.ge 0x02c8c754
02c8c724  cmp x21,x9
02c8c728  b.cs 0x02c8c784
02c8c72c  add x9,x8,x21, LSL #0x3
02c8c730  ldr x0,[x9, #0x20]
02c8c734  cbz x0,0x02c8c740
02c8c738  bl 0x02c8bb7c
02c8c73c  ldr x8,[x20, #0x20]
02c8c740  add x21,x21,#0x1
02c8c744  cbnz x8,0x02c8c718
02c8c748  bl 0x029f5cfc
02c8c74c  mov w0,wzr
02c8c750  b 0x02c8c774
02c8c754  mov x0,x20
02c8c758  bl 0x02c8b80c
02c8c75c  ldr x1,[x19, #0x28]
02c8c760  str x1,[x19, #0x18]!
02c8c764  mov x0,x19
02c8c768  bl 0x029f59f4
02c8c76c  mov w0,#0x1
02c8c770  stur w0,[x19, #-0x8]
02c8c774  ldp x20,x19,[sp, #0x20]
02c8c778  ldp x22,x21,[sp, #0x10]
02c8c77c  ldr x30,[sp], #0x30
02c8c780  ret
02c8c784  bl 0x029f5d04
