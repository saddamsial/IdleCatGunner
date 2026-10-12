02c6809c  stp x30,x21,[sp, #-0x20]!
02c680a0  stp x20,x19,[sp, #0x10]
02c680a4  ldr x8,[x0, #0x68]
02c680a8  mov w19,w2
02c680ac  mov x21,x0
02c680b0  mov w20,w1
02c680b4  cbz x8,0x02c680d0
02c680b8  ldr x9,[x21, #0x28]
02c680bc  cbz x9,0x02c680d8
02c680c0  ldr w8,[x8, #0x18]
02c680c4  ldr w9,[x9, #0x18]
02c680c8  cmp w8,w9
02c680cc  b.eq 0x02c680d8
02c680d0  mov x0,x21
02c680d4  bl 0x02c678d0
02c680d8  tbnz w20,#0x1f,0x02c680fc
02c680dc  ldr x8,[x21, #0x68]
02c680e0  cbz x8,0x02c68108
02c680e4  ldr w9,[x8, #0x18]
02c680e8  cmp w9,w20
02c680ec  b.le 0x02c680fc
02c680f0  add x8,x8,w20, UXTW 
02c680f4  and w9,w19,#0x1
02c680f8  strb w9,[x8, #0x20]
02c680fc  ldp x20,x19,[sp, #0x10]
02c68100  ldp x30,x21,[sp], #0x20
02c68104  ret
02c68108  bl 0x029f5cfc
