02c6ff64  stp x30,x21,[sp, #-0x20]!
02c6ff68  stp x20,x19,[sp, #0x10]
02c6ff6c  adrp x20,0x625c000
02c6ff70  adrp x21,0x5e5d000
02c6ff74  mov x19,x0
02c6ff78  ldrb w8,[x20, #0x2bb]
02c6ff7c  ldr x21,[x21, #0xd40]
02c6ff80  tbnz w8,#0x0,0x02c6ff98
02c6ff84  adrp x0,0x5e5d000
02c6ff88  ldr x0,[x0, #0xd40]
02c6ff8c  bl 0x029f5a50
02c6ff90  mov w8,#0x1
02c6ff94  strb w8,[x20, #0x2bb]
02c6ff98  ldr x8,[x21]
02c6ff9c  ldr x9,[x8, #0xb8]
02c6ffa0  ldr w8,[x19, #0x88]
02c6ffa4  ldr x0,[x9]
02c6ffa8  cmp w8,#0x1
02c6ffac  b.eq 0x02c6ffe0
02c6ffb0  cmp w8,#0x2
02c6ffb4  b.eq 0x02c6ffc8
02c6ffb8  cmp w8,#0x3
02c6ffbc  b.ne 0x02c6fff8
02c6ffc0  mov w0,#0x1
02c6ffc4  b 0x02c6fffc
02c6ffc8  cbz x0,0x02c70008
02c6ffcc  ldr w1,[x19, #0x90]
02c6ffd0  ldp x20,x19,[sp, #0x10]
02c6ffd4  mov x2,xzr
02c6ffd8  ldp x30,x21,[sp], #0x20
02c6ffdc  b 0x02c67f8c
02c6ffe0  cbz x0,0x02c70008
02c6ffe4  ldr w1,[x19, #0x90]
02c6ffe8  ldp x20,x19,[sp, #0x10]
02c6ffec  mov x2,xzr
02c6fff0  ldp x30,x21,[sp], #0x20
02c6fff4  b 0x02c67eec
02c6fff8  mov w0,wzr
02c6fffc  ldp x20,x19,[sp, #0x10]
02c70000  ldp x30,x21,[sp], #0x20
02c70004  ret
02c70008  bl 0x029f5cfc
