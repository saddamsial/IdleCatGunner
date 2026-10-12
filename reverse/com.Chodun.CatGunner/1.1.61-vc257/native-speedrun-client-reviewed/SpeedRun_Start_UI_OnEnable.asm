02cabbc0  stp x30,x23,[sp, #-0x30]!
02cabbc4  stp x22,x21,[sp, #0x10]
02cabbc8  stp x20,x19,[sp, #0x20]
02cabbcc  adrp x22,0x625c000
02cabbd0  adrp x23,0x5e59000
02cabbd4  adrp x20,0x5e64000
02cabbd8  adrp x21,0x5e5e000
02cabbdc  ldr x23,[x23, #0x288]
02cabbe0  ldrb w8,[x22, #0x50f]
02cabbe4  ldr x20,[x20, #0xa68]
02cabbe8  ldr x21,[x21, #0xb8]
02cabbec  mov x19,x0
02cabbf0  tbnz w8,#0x0,0x02cabc20
02cabbf4  adrp x0,0x5e59000
02cabbf8  ldr x0,[x0, #0x288]
02cabbfc  bl 0x029f5a50
02cabc00  adrp x0,0x5e5e000
02cabc04  ldr x0,[x0, #0xb8]
02cabc08  bl 0x029f5a50
02cabc0c  adrp x0,0x5e64000
02cabc10  ldr x0,[x0, #0xa68]
02cabc14  bl 0x029f5a50
02cabc18  mov w8,#0x1
02cabc1c  strb w8,[x22, #0x50f]
02cabc20  ldr x0,[x23]
02cabc24  bl 0x029f5cec
02cabc28  ldr x2,[x20]
02cabc2c  mov x1,x19
02cabc30  mov x3,xzr
02cabc34  mov x20,x0
02cabc38  bl 0x047b3618
02cabc3c  ldr x0,[x21]
02cabc40  ldr w8,[x0, #0xe4]
02cabc44  cbnz w8,0x02cabc4c
02cabc48  bl 0x029f5bd0
02cabc4c  mov x0,x20
02cabc50  ldp x20,x19,[sp, #0x20]
02cabc54  ldp x22,x21,[sp, #0x10]
02cabc58  mov x1,xzr
02cabc5c  ldp x30,x23,[sp], #0x30
02cabc60  b 0x02c909dc
