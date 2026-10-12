02c5fa88  str x30,[sp, #-0x30]!
02c5fa8c  stp x22,x21,[sp, #0x10]
02c5fa90  stp x20,x19,[sp, #0x20]
02c5fa94  adrp x20,0x625c000
02c5fa98  adrp x21,0x5e59000
02c5fa9c  mov x19,x0
02c5faa0  ldrb w8,[x20, #0x213]
02c5faa4  ldr x21,[x21, #0x1c0]
02c5faa8  tbnz w8,#0x0,0x02c5facc
02c5faac  adrp x0,0x5e5d000
02c5fab0  ldr x0,[x0, #0xd38]
02c5fab4  bl 0x029f5a50
02c5fab8  adrp x0,0x5e59000
02c5fabc  ldr x0,[x0, #0x1c0]
02c5fac0  bl 0x029f5a50
02c5fac4  mov w8,#0x1
02c5fac8  strb w8,[x20, #0x213]
02c5facc  ldr x0,[x21]
02c5fad0  ldr x20,[x19, #0x40]
02c5fad4  ldr w8,[x0, #0xe4]
02c5fad8  cbnz w8,0x02c5fae0
02c5fadc  bl 0x029f5bd0
02c5fae0  mov x0,x20
02c5fae4  mov x1,xzr
02c5fae8  mov x2,xzr
02c5faec  bl 0x057dfa70
02c5faf0  tbz w0,#0x0,0x02c5fb80
02c5faf4  ldr x0,[x19, #0x40]
02c5faf8  cbz x0,0x02c5fb94
02c5fafc  ldrb w8,[x0, #0x48]
02c5fb00  cbz w8,0x02c5fb80
02c5fb04  ldr w20,[x0, #0x44]
02c5fb08  bl 0x02c5fb98
02c5fb0c  adrp x22,0x5e5d000
02c5fb10  ldr x22,[x22, #0xd38]
02c5fb14  ldr x8,[x22]
02c5fb18  ldr x8,[x8, #0xb8]
02c5fb1c  ldr x0,[x8]
02c5fb20  cbz x0,0x02c5fb94
02c5fb24  mov w1,w20
02c5fb28  bl 0x02c5f360
02c5fb2c  ldr x8,[x22]
02c5fb30  ldr x8,[x8, #0xb8]
02c5fb34  ldr x8,[x8]
02c5fb38  cbz x8,0x02c5fb94
02c5fb3c  ldr x0,[x21]
02c5fb40  ldr x20,[x8, #0xa0]
02c5fb44  ldr w9,[x0, #0xe4]
02c5fb48  cbnz w9,0x02c5fb50
02c5fb4c  bl 0x029f5bd0
02c5fb50  mov x0,x20
02c5fb54  mov x1,xzr
02c5fb58  mov x2,xzr
02c5fb5c  bl 0x057dfa70
02c5fb60  tbz w0,#0x0,0x02c5fb80
02c5fb64  ldr x8,[x22]
02c5fb68  ldr x8,[x8, #0xb8]
02c5fb6c  ldr x8,[x8]
02c5fb70  cbz x8,0x02c5fb94
02c5fb74  ldr x0,[x8, #0xa0]
02c5fb78  cbz x0,0x02c5fb94
02c5fb7c  bl 0x02c5fbe0
02c5fb80  mov x0,x19
02c5fb84  ldp x20,x19,[sp, #0x20]
02c5fb88  ldp x22,x21,[sp, #0x10]
02c5fb8c  ldr x30,[sp], #0x30
02c5fb90  b 0x02c5fcf0
02c5fb94  bl 0x029f5cfc
