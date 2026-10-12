02c33b78  stp x30,x21,[sp, #-0x20]!
02c33b7c  stp x20,x19,[sp, #0x10]
02c33b80  mov x20,x0
02c33b84  ldr x0,[x0, #0x28]
02c33b88  str w1,[x20, #0x24]
02c33b8c  cbz x0,0x02c33c04
02c33b90  cmp w1,#0x0
02c33b94  mov w19,w2
02c33b98  mov w21,w1
02c33b9c  cset w1,eq
02c33ba0  mov x2,xzr
02c33ba4  bl 0x057dff3c
02c33ba8  ldr x0,[x20, #0x30]
02c33bac  cbz x0,0x02c33c04
02c33bb0  cmp w21,#0x1
02c33bb4  mov x2,xzr
02c33bb8  cset w1,eq
02c33bbc  bl 0x057dff3c
02c33bc0  ldr x0,[x20, #0x38]
02c33bc4  cbz x0,0x02c33c04
02c33bc8  cmp w21,#0x2
02c33bcc  mov x2,xzr
02c33bd0  cset w1,eq
02c33bd4  bl 0x057dff3c
02c33bd8  cbz w21,0x02c33be8
02c33bdc  ldp x20,x19,[sp, #0x10]
02c33be0  ldp x30,x21,[sp], #0x20
02c33be4  ret
02c33be8  ldr x0,[x20, #0x40]
02c33bec  cbz x0,0x02c33c04
02c33bf0  mov w1,w19
02c33bf4  ldp x20,x19,[sp, #0x10]
02c33bf8  mov x2,xzr
02c33bfc  ldp x30,x21,[sp], #0x20
02c33c00  b 0x02c821e8
02c33c04  bl 0x029f5cfc
