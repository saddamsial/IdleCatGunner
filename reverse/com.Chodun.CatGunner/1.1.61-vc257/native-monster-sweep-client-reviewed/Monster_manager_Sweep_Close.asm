02c4fa08  str x30,[sp, #-0x20]!
02c4fa0c  stp x20,x19,[sp, #0x10]
02c4fa10  adrp x20,0x625c000
02c4fa14  mov x19,x0
02c4fa18  ldrb w8,[x20, #0x149]
02c4fa1c  tbnz w8,#0x0,0x02c4fa4c
02c4fa20  adrp x0,0x5e5d000
02c4fa24  ldr x0,[x0, #0x910]
02c4fa28  bl 0x029f5a50
02c4fa2c  adrp x0,0x5e59000
02c4fa30  ldr x0,[x0, #0x1c0]
02c4fa34  bl 0x029f5a50
02c4fa38  adrp x0,0x5e5d000
02c4fa3c  ldr x0,[x0, #0x920]
02c4fa40  bl 0x029f5a50
02c4fa44  mov w8,#0x1
02c4fa48  strb w8,[x20, #0x149]
02c4fa4c  ldr x0,[x19, #0x108]
02c4fa50  strb wzr,[x19, #0x138]
02c4fa54  cbz x0,0x02c4fb10
02c4fa58  mov w1,wzr
02c4fa5c  mov x2,xzr
02c4fa60  bl 0x057dff3c
02c4fa64  ldrb w8,[x19, #0xba]
02c4fa68  cbnz w8,0x02c4fb04
02c4fa6c  adrp x8,0x5e5d000
02c4fa70  ldr x8,[x8, #0x920]
02c4fa74  ldr x0,[x8]
02c4fa78  ldr w8,[x0, #0xe4]
02c4fa7c  cbnz w8,0x02c4fa84
02c4fa80  bl 0x029f5bd0
02c4fa84  mov x0,xzr
02c4fa88  bl 0x02c92704
02c4fa8c  tbnz w0,#0x0,0x02c4fb04
02c4fa90  ldr w8,[x19, #0x13c]
02c4fa94  cmp w8,#0x1
02c4fa98  b.lt 0x02c4fb04
02c4fa9c  adrp x20,0x5e5d000
02c4faa0  adrp x8,0x5e59000
02c4faa4  ldr x20,[x20, #0x910]
02c4faa8  ldr x8,[x8, #0x1c0]
02c4faac  ldr x9,[x20]
02c4fab0  ldr x0,[x8]
02c4fab4  ldr x8,[x9, #0xb8]
02c4fab8  ldr w9,[x0, #0xe4]
02c4fabc  ldr x19,[x8]
02c4fac0  cbnz w9,0x02c4fac8
02c4fac4  bl 0x029f5bd0
02c4fac8  mov x0,x19
02c4facc  mov x1,xzr
02c4fad0  mov x2,xzr
02c4fad4  bl 0x057dfa70
02c4fad8  tbz w0,#0x0,0x02c4fb04
02c4fadc  ldr x8,[x20]
02c4fae0  ldr x8,[x8, #0xb8]
02c4fae4  ldr x0,[x8]
02c4fae8  cbz x0,0x02c4fb10
02c4faec  ldp x20,x19,[sp, #0x10]
02c4faf0  mov w1,#0x4
02c4faf4  mov x2,xzr
02c4faf8  mov x3,xzr
02c4fafc  ldr x30,[sp], #0x20
02c4fb00  b 0x02b8ddb4
02c4fb04  ldp x20,x19,[sp, #0x10]
02c4fb08  ldr x30,[sp], #0x20
02c4fb0c  ret
02c4fb10  bl 0x029f5cfc
