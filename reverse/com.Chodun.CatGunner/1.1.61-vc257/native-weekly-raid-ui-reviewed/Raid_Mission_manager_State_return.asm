02c53078  str x30,[sp, #-0x20]!
02c5307c  stp x20,x19,[sp, #0x10]
02c53080  cmp w1,#0x7
02c53084  b.hi 0x02c53104
02c53088  mov w19,w1
02c5308c  mov x20,x0
02c53090  bl 0x02c53c8c
02c53094  ldr x9,[x20, #0x30]
02c53098  cbz x9,0x02c5311c
02c5309c  ldr w8,[x9, #0x18]
02c530a0  cmp w8,w19
02c530a4  b.ls 0x02c53120
02c530a8  mov w8,w19
02c530ac  add x9,x9,x8
02c530b0  ldrb w9,[x9, #0x20]
02c530b4  cbz w9,0x02c53104
02c530b8  ldr x9,[x20, #0x38]
02c530bc  cbz x9,0x02c5311c
02c530c0  ldr w10,[x9, #0x18]
02c530c4  cmp w10,w19
02c530c8  b.ls 0x02c53120
02c530cc  add x9,x9,x8
02c530d0  ldrb w9,[x9, #0x20]
02c530d4  cbz w9,0x02c53114
02c530d8  ldr x9,[x20, #0x40]
02c530dc  cbz x9,0x02c5311c
02c530e0  ldr w10,[x9, #0x18]
02c530e4  cmp w10,w19
02c530e8  b.ls 0x02c53120
02c530ec  add x8,x9,x8
02c530f0  ldrb w8,[x8, #0x20]
02c530f4  cmp w8,#0x0
02c530f8  mov w8,#0x2
02c530fc  cinc w0,w8,ne
02c53100  b 0x02c53108
02c53104  mov w0,wzr
02c53108  ldp x20,x19,[sp, #0x10]
02c5310c  ldr x30,[sp], #0x20
02c53110  ret
02c53114  mov w0,#0x1
02c53118  b 0x02c53108
02c5311c  bl 0x029f5cfc
02c53120  bl 0x029f5d04
