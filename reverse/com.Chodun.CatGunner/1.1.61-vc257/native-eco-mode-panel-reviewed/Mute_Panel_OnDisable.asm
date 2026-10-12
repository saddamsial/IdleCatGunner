02c44b14  str x30,[sp, #-0x20]!
02c44b18  stp x20,x19,[sp, #0x10]
02c44b1c  adrp x19,0x625c000
02c44b20  adrp x20,0x5e5d000
02c44b24  ldrb w8,[x19, #0xce]
02c44b28  ldr x20,[x20, #0x5b0]
02c44b2c  tbnz w8,#0x0,0x02c44b44
02c44b30  adrp x0,0x5e5d000
02c44b34  ldr x0,[x0, #0x5b0]
02c44b38  bl 0x029f5a50
02c44b3c  mov w8,#0x1
02c44b40  strb w8,[x19, #0xce]
02c44b44  ldr x8,[x20]
02c44b48  ldp x20,x19,[sp, #0x10]
02c44b4c  ldr x8,[x8, #0xb8]
02c44b50  strb wzr,[x8]
02c44b54  ldr x30,[sp], #0x20
02c44b58  ret
