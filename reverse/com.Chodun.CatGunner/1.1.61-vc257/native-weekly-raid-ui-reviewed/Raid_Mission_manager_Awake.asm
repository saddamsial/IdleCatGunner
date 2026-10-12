02c53a38  stp x30,x21,[sp, #-0x20]!
02c53a3c  stp x20,x19,[sp, #0x10]
02c53a40  adrp x21,0x625c000
02c53a44  adrp x20,0x5e5e000
02c53a48  mov x19,x0
02c53a4c  ldrb w8,[x21, #0x16e]
02c53a50  ldr x20,[x20, #0x68]
02c53a54  tbnz w8,#0x0,0x02c53a6c
02c53a58  adrp x0,0x5e5e000
02c53a5c  ldr x0,[x0, #0x68]
02c53a60  bl 0x029f5a50
02c53a64  mov w8,#0x1
02c53a68  strb w8,[x21, #0x16e]
02c53a6c  ldr x8,[x20]
02c53a70  mov x1,x19
02c53a74  ldr x8,[x8, #0xb8]
02c53a78  str x19,[x8]
02c53a7c  ldr x8,[x20]
02c53a80  ldr x0,[x8, #0xb8]
02c53a84  bl 0x029f59f4
02c53a88  ldr x8,[x19, #0x20]
02c53a8c  cbz x8,0x02c53a9c
02c53a90  ldr w8,[x8, #0x18]
02c53a94  cmp w8,#0x8
02c53a98  b.eq 0x02c53aa4
02c53a9c  mov x0,x19
02c53aa0  bl 0x02c5412c
02c53aa4  mov x0,x19
02c53aa8  ldp x20,x19,[sp, #0x10]
02c53aac  ldp x30,x21,[sp], #0x20
02c53ab0  b 0x02c53ad0
