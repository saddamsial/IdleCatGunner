02c2fae0  str x30,[sp, #-0x30]!
02c2fae4  stp x22,x21,[sp, #0x10]
02c2fae8  stp x20,x19,[sp, #0x20]
02c2faec  adrp x20,0x625c000
02c2faf0  mov x19,x0
02c2faf4  ldrb w8,[x20, #0x22]
02c2faf8  tbnz w8,#0x0,0x02c2fb28
02c2fafc  adrp x0,0x5e5d000
02c2fb00  ldr x0,[x0, #0xd28]
02c2fb04  bl 0x029f5a50
02c2fb08  adrp x0,0x5e59000
02c2fb0c  ldr x0,[x0, #0x1c0]
02c2fb10  bl 0x029f5a50
02c2fb14  adrp x0,0x5e5a000
02c2fb18  ldr x0,[x0, #0x710]
02c2fb1c  bl 0x029f5a50
02c2fb20  mov w8,#0x1
02c2fb24  strb w8,[x20, #0x22]
02c2fb28  ldr w8,[x19, #0x10]
02c2fb2c  ldr x20,[x19, #0x20]
02c2fb30  cmp w8,#0x1
02c2fb34  b.eq 0x02c2fb78
02c2fb38  cbnz w8,0x02c2fc20
02c2fb3c  adrp x8,0x5e5a000
02c2fb40  mov w9,#0xffffffff
02c2fb44  ldr x8,[x8, #0x710]
02c2fb48  str w9,[x19, #0x10]
02c2fb4c  ldr x0,[x8]
02c2fb50  bl 0x029f5cec
02c2fb54  fmov s0,0x3f800000
02c2fb58  mov x1,xzr
02c2fb5c  mov x21,x0
02c2fb60  bl 0x057e84e0
02c2fb64  mov x0,x19
02c2fb68  mov x1,x21
02c2fb6c  str x21,[x0, #0x28]!
02c2fb70  bl 0x029f59f4
02c2fb74  b 0x02c2fb80
02c2fb78  mov w8,#0xffffffff
02c2fb7c  str w8,[x19, #0x10]
02c2fb80  adrp x22,0x5e5d000
02c2fb84  adrp x21,0x5e59000
02c2fb88  ldr x22,[x22, #0xd28]
02c2fb8c  ldr x0,[x22]
02c2fb90  ldr w8,[x0, #0xe4]
02c2fb94  ldr x21,[x21, #0x1c0]
02c2fb98  cbnz w8,0x02c2fba4
02c2fb9c  bl 0x029f5bd0
02c2fba0  ldr x0,[x22]
02c2fba4  ldr x8,[x21]
02c2fba8  ldr x9,[x0, #0xb8]
02c2fbac  ldr w10,[x8, #0xe4]
02c2fbb0  ldr x21,[x9, #0x10]
02c2fbb4  cbnz w10,0x02c2fbc0
02c2fbb8  mov x0,x8
02c2fbbc  bl 0x029f5bd0
02c2fbc0  mov x0,x21
02c2fbc4  mov x1,xzr
02c2fbc8  mov x2,xzr
02c2fbcc  bl 0x057dfa70
02c2fbd0  tbz w0,#0x0,0x02c2fc04
02c2fbd4  ldr x0,[x22]
02c2fbd8  ldr w8,[x0, #0xe4]
02c2fbdc  cbnz w8,0x02c2fbe8
02c2fbe0  bl 0x029f5bd0
02c2fbe4  ldr x0,[x22]
02c2fbe8  ldr x8,[x0, #0xb8]
02c2fbec  ldr x0,[x8, #0x10]
02c2fbf0  cbz x0,0x02c2fc34
02c2fbf4  bl 0x02c2d168
02c2fbf8  cbz x20,0x02c2fc34
02c2fbfc  mov x0,x20
02c2fc00  bl 0x02c2f6b8
02c2fc04  ldr x1,[x19, #0x28]
02c2fc08  str x1,[x19, #0x18]!
02c2fc0c  mov x0,x19
02c2fc10  bl 0x029f59f4
02c2fc14  mov w0,#0x1
02c2fc18  stur w0,[x19, #-0x8]
02c2fc1c  b 0x02c2fc24
02c2fc20  mov w0,wzr
02c2fc24  ldp x20,x19,[sp, #0x20]
02c2fc28  ldp x22,x21,[sp, #0x10]
02c2fc2c  ldr x30,[sp], #0x30
02c2fc30  ret
02c2fc34  bl 0x029f5cfc
