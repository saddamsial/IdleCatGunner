02c38cd0  str x30,[sp, #-0x20]!
02c38cd4  stp x20,x19,[sp, #0x10]
02c38cd8  adrp x20,0x625c000
02c38cdc  mov x19,x0
02c38ce0  ldrb w8,[x20, #0x87]
02c38ce4  tbnz w8,#0x0,0x02c38cfc
02c38ce8  adrp x0,0x5e63000
02c38cec  ldr x0,[x0, #0x1d8]
02c38cf0  bl 0x029f5a50
02c38cf4  mov w8,#0x1
02c38cf8  strb w8,[x20, #0x87]
02c38cfc  ldrb w8,[x19, #0x1b0]
02c38d00  cbz w8,0x02c38d10
02c38d04  ldp x20,x19,[sp, #0x10]
02c38d08  ldr x30,[sp], #0x20
02c38d0c  ret
02c38d10  adrp x20,0x5e63000
02c38d14  ldr x20,[x20, #0x1d8]
02c38d18  ldr x0,[x20]
02c38d1c  ldr w8,[x0, #0xe4]
02c38d20  cbnz w8,0x02c38d2c
02c38d24  bl 0x029f5bd0
02c38d28  ldr x0,[x20]
02c38d2c  ldr x0,[x0, #0xb8]
02c38d30  mov x1,x19
02c38d34  str x19,[x0, #0x68]!
02c38d38  ldp x20,x19,[sp, #0x10]
02c38d3c  ldr x30,[sp], #0x20
02c38d40  b 0x029f59f4
