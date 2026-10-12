02c6745c  stp x30,x21,[sp, #-0x20]!
02c67460  stp x20,x19,[sp, #0x10]
02c67464  adrp x20,0x625c000
02c67468  adrp x21,0x5e63000
02c6746c  mov w19,w0
02c67470  ldrb w8,[x20, #0x25a]
02c67474  ldr x21,[x21, #0x2d0]
02c67478  tbnz w8,#0x0,0x02c67490
02c6747c  adrp x0,0x5e63000
02c67480  ldr x0,[x0, #0x2d0]
02c67484  bl 0x029f5a50
02c67488  mov w8,#0x1
02c6748c  strb w8,[x20, #0x25a]
02c67490  ldr x0,[x21]
02c67494  mov w20,wzr
02c67498  ldr w8,[x0, #0xe4]
02c6749c  cbnz w8,0x02c674a8
02c674a0  bl 0x029f5bd0
02c674a4  ldr x0,[x21]
02c674a8  ldr x8,[x0, #0xb8]
02c674ac  ldr x8,[x8]
02c674b0  cbz x8,0x02c67514
02c674b4  ldr w9,[x8, #0x18]
02c674b8  cmp w20,w9
02c674bc  b.ge 0x02c67500
02c674c0  ldr w9,[x0, #0xe4]
02c674c4  cbnz w9,0x02c674dc
02c674c8  bl 0x029f5bd0
02c674cc  ldr x0,[x21]
02c674d0  ldr x8,[x0, #0xb8]
02c674d4  ldr x8,[x8]
02c674d8  cbz x8,0x02c67514
02c674dc  ldr w9,[x8, #0x18]
02c674e0  cmp w20,w9
02c674e4  b.cs 0x02c67518
02c674e8  add x8,x8,w20, SXTW  #0x2
02c674ec  ldr w8,[x8, #0x20]
02c674f0  cmp w8,w19
02c674f4  b.eq 0x02c67504
02c674f8  add w20,w20,#0x1
02c674fc  b 0x02c67498
02c67500  mov w20,#0xffffffff
02c67504  mov w0,w20
02c67508  ldp x20,x19,[sp, #0x10]
02c6750c  ldp x30,x21,[sp], #0x20
02c67510  ret
02c67514  bl 0x029f5cfc
02c67518  bl 0x029f5d04
