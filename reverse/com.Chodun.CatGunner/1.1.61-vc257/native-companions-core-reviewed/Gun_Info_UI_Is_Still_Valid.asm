02c7008c  stp x30,x21,[sp, #-0x20]!
02c70090  stp x20,x19,[sp, #0x10]
02c70094  adrp x20,0x625c000
02c70098  mov x19,x0
02c7009c  ldrb w8,[x20, #0x2bd]
02c700a0  tbnz w8,#0x0,0x02c700d0
02c700a4  adrp x0,0x5e5d000
02c700a8  ldr x0,[x0, #0xd40]
02c700ac  bl 0x029f5a50
02c700b0  adrp x0,0x5e59000
02c700b4  ldr x0,[x0, #0x1c0]
02c700b8  bl 0x029f5a50
02c700bc  adrp x0,0x5e62000
02c700c0  ldr x0,[x0, #0x648]
02c700c4  bl 0x029f5a50
02c700c8  mov w8,#0x1
02c700cc  strb w8,[x20, #0x2bd]
02c700d0  ldr w8,[x19, #0x88]
02c700d4  cmp w8,#0x3
02c700d8  b.eq 0x02c70130
02c700dc  adrp x9,0x5e5d000
02c700e0  cmp w8,#0x2
02c700e4  ldr x9,[x9, #0xd40]
02c700e8  ldr x9,[x9]
02c700ec  ldr x9,[x9, #0xb8]
02c700f0  ldr x9,[x9]
02c700f4  b.eq 0x02c70118
02c700f8  cmp w8,#0x1
02c700fc  b.ne 0x02c701b4
02c70100  ldr w8,[x19, #0x90]
02c70104  tbnz w8,#0x1f,0x02c701b4
02c70108  cbz x9,0x02c701c4
02c7010c  ldr x9,[x9, #0x40]
02c70110  cbnz x9,0x02c70190
02c70114  b 0x02c701c4
02c70118  cbz x9,0x02c701c4
02c7011c  ldr x9,[x9, #0x28]
02c70120  cbz x9,0x02c701b4
02c70124  ldr w8,[x19, #0x90]
02c70128  tbz w8,#0x1f,0x02c70190
02c7012c  b 0x02c701b4
02c70130  adrp x21,0x5e62000
02c70134  adrp x8,0x5e59000
02c70138  ldr x21,[x21, #0x648]
02c7013c  ldr x8,[x8, #0x1c0]
02c70140  ldr x9,[x21]
02c70144  ldr x0,[x8]
02c70148  ldr x8,[x9, #0xb8]
02c7014c  ldr w9,[x0, #0xe4]
02c70150  ldr x20,[x8]
02c70154  cbnz w9,0x02c7015c
02c70158  bl 0x029f5bd0
02c7015c  mov x0,x20
02c70160  mov x1,xzr
02c70164  mov x2,xzr
02c70168  bl 0x057dfa70
02c7016c  tbz w0,#0x0,0x02c701b4
02c70170  ldr w8,[x19, #0x90]
02c70174  tbnz w8,#0x1f,0x02c701b4
02c70178  ldr x9,[x21]
02c7017c  ldr x9,[x9, #0xb8]
02c70180  ldr x9,[x9]
02c70184  cbz x9,0x02c701c4
02c70188  ldr x9,[x9, #0x20]
02c7018c  cbz x9,0x02c701c4
02c70190  ldr w10,[x9, #0x18]
02c70194  cmp w8,w10
02c70198  b.ge 0x02c701b4
02c7019c  add x8,x9,w8, UXTW  #0x2
02c701a0  ldr w9,[x19, #0x8c]
02c701a4  ldr w8,[x8, #0x20]
02c701a8  cmp w8,w9
02c701ac  cset w0,eq
02c701b0  b 0x02c701b8
02c701b4  mov w0,wzr
02c701b8  ldp x20,x19,[sp, #0x10]
02c701bc  ldp x30,x21,[sp], #0x20
02c701c0  ret
02c701c4  bl 0x029f5cfc
