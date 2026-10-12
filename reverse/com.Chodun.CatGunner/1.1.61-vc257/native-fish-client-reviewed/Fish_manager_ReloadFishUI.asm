02c5eeb0  stp x30,x21,[sp, #-0x20]!
02c5eeb4  stp x20,x19,[sp, #0x10]
02c5eeb8  adrp x20,0x625c000
02c5eebc  adrp x21,0x5e59000
02c5eec0  mov x19,x0
02c5eec4  ldrb w8,[x20, #0x20a]
02c5eec8  ldr x21,[x21, #0x1c0]
02c5eecc  tbnz w8,#0x0,0x02c5eee4
02c5eed0  adrp x0,0x5e59000
02c5eed4  ldr x0,[x0, #0x1c0]
02c5eed8  bl 0x029f5a50
02c5eedc  mov w8,#0x1
02c5eee0  strb w8,[x20, #0x20a]
02c5eee4  ldr x0,[x21]
02c5eee8  ldr x20,[x19, #0x48]
02c5eeec  ldr w8,[x0, #0xe4]
02c5eef0  cbnz w8,0x02c5eef8
02c5eef4  bl 0x029f5bd0
02c5eef8  mov x0,x20
02c5eefc  mov x1,xzr
02c5ef00  mov x2,xzr
02c5ef04  bl 0x057dfa70
02c5ef08  tbz w0,#0x0,0x02c5ef20
02c5ef0c  ldr x0,[x19, #0x48]
02c5ef10  cbz x0,0x02c5ef6c
02c5ef14  mov w1,#0x1
02c5ef18  mov x2,xzr
02c5ef1c  bl 0x057dff3c
02c5ef20  ldr x0,[x21]
02c5ef24  ldr x20,[x19, #0xa0]
02c5ef28  ldr w8,[x0, #0xe4]
02c5ef2c  cbnz w8,0x02c5ef34
02c5ef30  bl 0x029f5bd0
02c5ef34  mov x0,x20
02c5ef38  mov x1,xzr
02c5ef3c  mov x2,xzr
02c5ef40  bl 0x057dfa70
02c5ef44  tbz w0,#0x0,0x02c5ef54
02c5ef48  ldr x0,[x19, #0xa0]
02c5ef4c  cbz x0,0x02c5ef6c
02c5ef50  bl 0x02c5ef70
02c5ef54  mov x0,x19
02c5ef58  bl 0x02c5d5a0
02c5ef5c  mov x0,x19
02c5ef60  ldp x20,x19,[sp, #0x10]
02c5ef64  ldp x30,x21,[sp], #0x20
02c5ef68  b 0x02c5d820
02c5ef6c  bl 0x029f5cfc
