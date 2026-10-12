02cabd08  str x30,[sp, #-0x20]!
02cabd0c  stp x20,x19,[sp, #0x10]
02cabd10  adrp x20,0x625c000
02cabd14  adrp x19,0x5e5d000
02cabd18  ldrb w8,[x20, #0x512]
02cabd1c  ldr x19,[x19, #0xd68]
02cabd20  tbnz w8,#0x0,0x02cabd38
02cabd24  adrp x0,0x5e5d000
02cabd28  ldr x0,[x0, #0xd68]
02cabd2c  bl 0x029f5a50
02cabd30  mov w8,#0x1
02cabd34  strb w8,[x20, #0x512]
02cabd38  ldr x0,[x19]
02cabd3c  ldr w8,[x0, #0xe4]
02cabd40  cbnz w8,0x02cabd4c
02cabd44  bl 0x029f5bd0
02cabd48  ldr x0,[x19]
02cabd4c  ldr x8,[x0, #0xb8]
02cabd50  ldr x0,[x8, #0x8]
02cabd54  cbz x0,0x02cabd98
02cabd58  bl 0x02ca985c
02cabd5c  tbz w0,#0x0,0x02cabd8c
02cabd60  ldr x0,[x19]
02cabd64  ldr w8,[x0, #0xe4]
02cabd68  cbnz w8,0x02cabd74
02cabd6c  bl 0x029f5bd0
02cabd70  ldr x0,[x19]
02cabd74  ldr x8,[x0, #0xb8]
02cabd78  ldr x0,[x8, #0x8]
02cabd7c  cbz x0,0x02cabd98
02cabd80  ldp x20,x19,[sp, #0x10]
02cabd84  ldr x30,[sp], #0x20
02cabd88  b 0x02ca9adc
02cabd8c  ldp x20,x19,[sp, #0x10]
02cabd90  ldr x30,[sp], #0x20
02cabd94  ret
02cabd98  bl 0x029f5cfc
