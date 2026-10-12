02c5bb40  str x30,[sp, #-0x30]!
02c5bb44  stp x22,x21,[sp, #0x10]
02c5bb48  stp x20,x19,[sp, #0x20]
02c5bb4c  adrp x21,0x625c000
02c5bb50  adrp x20,0x5e5e000
02c5bb54  mov x19,x0
02c5bb58  ldrb w8,[x21, #0x1e1]
02c5bb5c  ldr x20,[x20, #0x70]
02c5bb60  tbnz w8,#0x0,0x02c5bb90
02c5bb64  adrp x0,0x5e59000
02c5bb68  ldr x0,[x0, #0x1c0]
02c5bb6c  bl 0x029f5a50
02c5bb70  adrp x0,0x5e5e000
02c5bb74  ldr x0,[x0, #0x70]
02c5bb78  bl 0x029f5a50
02c5bb7c  adrp x0,0x5e61000
02c5bb80  ldr x0,[x0, #0xf28]
02c5bb84  bl 0x029f5a50
02c5bb88  mov w8,#0x1
02c5bb8c  strb w8,[x21, #0x1e1]
02c5bb90  ldr x0,[x20]
02c5bb94  ldr w8,[x0, #0xe4]
02c5bb98  cbnz w8,0x02c5bba4
02c5bb9c  bl 0x029f5bd0
02c5bba0  ldr x0,[x20]
02c5bba4  ldr x8,[x0, #0xb8]
02c5bba8  ldr x20,[x8]
02c5bbac  cbz x20,0x02c5bce4
02c5bbb0  mov x0,x20
02c5bbb4  mov x1,xzr
02c5bbb8  bl 0x02c57710
02c5bbbc  ldr x8,[x19, #0x38]
02c5bbc0  cbz x8,0x02c5bce4
02c5bbc4  cmp w0,#0x1
02c5bbc8  mov w21,w0
02c5bbcc  mov x0,x8
02c5bbd0  cset w1,eq
02c5bbd4  mov x2,xzr
02c5bbd8  bl 0x057dff3c
02c5bbdc  ldr x0,[x19, #0x40]
02c5bbe0  cbz x0,0x02c5bce4
02c5bbe4  cmp w21,#0x2
02c5bbe8  mov x2,xzr
02c5bbec  cset w1,eq
02c5bbf0  bl 0x057dff3c
02c5bbf4  ldr x0,[x19, #0x48]
02c5bbf8  cbz x0,0x02c5bce4
02c5bbfc  adrp x22,0x5e59000
02c5bc00  cmp w21,#0x3
02c5bc04  mov x2,xzr
02c5bc08  ldr x22,[x22, #0x1c0]
02c5bc0c  cset w1,eq
02c5bc10  bl 0x057dff3c
02c5bc14  ldr x0,[x22]
02c5bc18  ldr x22,[x19, #0x68]
02c5bc1c  ldr w8,[x0, #0xe4]
02c5bc20  cbnz w8,0x02c5bc28
02c5bc24  bl 0x029f5bd0
02c5bc28  mov x0,x22
02c5bc2c  mov x1,xzr
02c5bc30  mov x2,xzr
02c5bc34  bl 0x057dfa70
02c5bc38  tbz w0,#0x0,0x02c5bc54
02c5bc3c  ldr x0,[x19, #0x68]
02c5bc40  cbz x0,0x02c5bce4
02c5bc44  cmp w21,#0x0
02c5bc48  mov x2,xzr
02c5bc4c  cset w1,eq
02c5bc50  bl 0x057dff3c
02c5bc54  adrp x21,0x5e61000
02c5bc58  mov x0,x20
02c5bc5c  mov x1,xzr
02c5bc60  ldr x21,[x21, #0xf28]
02c5bc64  ldr x19,[x19, #0x50]
02c5bc68  bl 0x02c576fc
02c5bc6c  adrp x22,0x5e58000
02c5bc70  add x1,sp,#0xc
02c5bc74  ldr x22,[x22, #0xa10]
02c5bc78  str w0,[sp, #0xc]
02c5bc7c  ldr x8,[x22, #0x48]
02c5bc80  mov x0,x8
02c5bc84  bl 0x029f5bd8
02c5bc88  mov x20,x0
02c5bc8c  ldr x0,[x22, #0x48]
02c5bc90  mov w8,#0x2
02c5bc94  add x1,sp,#0x8
02c5bc98  str w8,[sp, #0x8]
02c5bc9c  bl 0x029f5bd8
02c5bca0  ldr x8,[x21]
02c5bca4  mov x2,x0
02c5bca8  mov x1,x20
02c5bcac  mov x3,xzr
02c5bcb0  mov x0,x8
02c5bcb4  bl 0x046c1d14
02c5bcb8  cbz x19,0x02c5bce4
02c5bcbc  ldr x8,[x19]
02c5bcc0  mov x1,x0
02c5bcc4  mov x0,x19
02c5bcc8  ldr x9,[x8, #0x558]
02c5bccc  ldr x2,[x8, #0x560]
02c5bcd0  blr x9
02c5bcd4  ldp x20,x19,[sp, #0x20]
02c5bcd8  ldp x22,x21,[sp, #0x10]
02c5bcdc  ldr x30,[sp], #0x30
02c5bce0  ret
02c5bce4  bl 0x029f5cfc
