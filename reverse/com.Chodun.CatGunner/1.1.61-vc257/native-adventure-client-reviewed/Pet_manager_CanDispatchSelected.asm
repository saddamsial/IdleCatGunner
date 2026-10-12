02c7cd4c  mov x8,x0
02c7cd50  mov w0,wzr
02c7cd54  tbnz w1,#0x1f,0x02c7cda4
02c7cd58  ldr x9,[x8, #0x30]
02c7cd5c  cbz x9,0x02c7cda4
02c7cd60  ldr w10,[x9, #0x18]
02c7cd64  cmp w10,w1
02c7cd68  b.le 0x02c7cda8
02c7cd6c  add x9,x9,w1, UXTW  #0x2
02c7cd70  ldr w9,[x9, #0x20]
02c7cd74  cmn w9,#0x1
02c7cd78  b.eq 0x02c7cda8
02c7cd7c  ldr x8,[x8, #0x48]
02c7cd80  cbz x8,0x02c7cdb0
02c7cd84  ldr w9,[x8, #0x18]
02c7cd88  cmp w9,w1
02c7cd8c  b.le 0x02c7cdb0
02c7cd90  mov w9,w1
02c7cd94  add x8,x8,x9, LSL #0x2
02c7cd98  ldr w8,[x8, #0x20]
02c7cd9c  cmn w8,#0x1
02c7cda0  cset w0,eq
02c7cda4  ret
02c7cda8  mov w0,wzr
02c7cdac  ret
02c7cdb0  mov w0,#0x1
02c7cdb4  ret
