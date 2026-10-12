02cabeb4  str x30,[sp, #-0x20]!
02cabeb8  stp x20,x19,[sp, #0x10]
02cabebc  adrp x20,0x625c000
02cabec0  mov x19,x0
02cabec4  ldrb w8,[x20, #0x513]
02cabec8  tbnz w8,#0x0,0x02cabeec
02cabecc  adrp x0,0x5e62000
02cabed0  ldr x0,[x0, #0x148]
02cabed4  bl 0x029f5a50
02cabed8  adrp x0,0x5e5d000
02cabedc  ldr x0,[x0, #0xc20]
02cabee0  bl 0x029f5a50
02cabee4  mov w8,#0x1
02cabee8  strb w8,[x20, #0x513]
02cabeec  ldr x0,[x19, #0x30]
02cabef0  cbz x0,0x02cabf68
02cabef4  adrp x8,0x5e62000
02cabef8  mov x1,xzr
02cabefc  ldr x8,[x8, #0x148]
02cabf00  ldr x8,[x8]
02cabf04  ldr x8,[x8, #0xb8]
02cabf08  ldr x20,[x8]
02cabf0c  bl 0x057eed98
02cabf10  cbz x20,0x02cabf68
02cabf14  ldrb w8,[x19, #0x38]
02cabf18  adrp x19,0x5e5d000
02cabf1c  mov w9,#0x5
02cabf20  ldr x19,[x19, #0xc20]
02cabf24  mov x0,x20
02cabf28  mov x2,xzr
02cabf2c  cmp w8,#0x0
02cabf30  mov w8,#0xf
02cabf34  csel w1,w9,w8,eq
02cabf38  bl 0x02c0b844
02cabf3c  ldr x0,[x19]
02cabf40  ldr w8,[x0, #0xe4]
02cabf44  cbnz w8,0x02cabf50
02cabf48  bl 0x029f5bd0
02cabf4c  ldr x0,[x19]
02cabf50  ldr x8,[x0, #0xb8]
02cabf54  ldr x0,[x8, #0x10]
02cabf58  cbz x0,0x02cabf68
02cabf5c  ldp x20,x19,[sp, #0x10]
02cabf60  ldr x30,[sp], #0x20
02cabf64  b 0x02cabf6c
02cabf68  bl 0x029f5cfc
