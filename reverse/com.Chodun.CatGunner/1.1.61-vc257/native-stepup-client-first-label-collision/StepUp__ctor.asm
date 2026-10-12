02ca3adc  str x30,[sp, #-0x30]!
02ca3ae0  stp x22,x21,[sp, #0x10]
02ca3ae4  stp x20,x19,[sp, #0x20]
02ca3ae8  adrp x21,0x625c000
02ca3aec  adrp x22,0x5e62000
02ca3af0  adrp x20,0x5e64000
02ca3af4  ldrb w8,[x21, #0x4a1]
02ca3af8  ldr x22,[x22, #0x6b0]
02ca3afc  ldr x20,[x20, #0x1b8]
02ca3b00  mov x19,x0
02ca3b04  tbnz w8,#0x0,0x02ca3b28
02ca3b08  adrp x0,0x5e62000
02ca3b0c  ldr x0,[x0, #0x6b0]
02ca3b10  bl 0x029f5a50
02ca3b14  adrp x0,0x5e64000
02ca3b18  ldr x0,[x0, #0x1b8]
02ca3b1c  bl 0x029f5a50
02ca3b20  mov w8,#0x1
02ca3b24  strb w8,[x21, #0x4a1]
02ca3b28  ldr x0,[x22]
02ca3b2c  mov w1,#0x5
02ca3b30  bl 0x029f5b40
02ca3b34  mov x1,x0
02ca3b38  mov x0,x19
02ca3b3c  str x1,[x0, #0x38]!
02ca3b40  bl 0x029f59f4
02ca3b44  ldr x1,[x20]
02ca3b48  mov x0,x19
02ca3b4c  str x1,[x0, #0x48]!
02ca3b50  bl 0x029f59f4
02ca3b54  mov x0,x19
02ca3b58  ldp x20,x19,[sp, #0x20]
02ca3b5c  ldp x22,x21,[sp, #0x10]
02ca3b60  mov x1,xzr
02ca3b64  ldr x30,[sp], #0x30
02ca3b68  b 0x057e2ee0
