02be0aa8  sub sp,sp,#0x30
02be0aac  str x30,[sp, #0x10]
02be0ab0  stp x20,x19,[sp, #0x20]
02be0ab4  adrp x20,0x625b000
02be0ab8  adrp x19,0x5e5e000
02be0abc  ldrb w8,[x20, #0xc62]
02be0ac0  ldr x19,[x19, #0x528]
02be0ac4  tbnz w8,#0x0,0x02be0ae8
02be0ac8  adrp x0,0x5e5e000
02be0acc  ldr x0,[x0, #0x528]
02be0ad0  bl 0x029f5a50
02be0ad4  adrp x0,0x5e60000
02be0ad8  ldr x0,[x0, #0xdb8]
02be0adc  bl 0x029f5a50
02be0ae0  mov w8,#0x1
02be0ae4  strb w8,[x20, #0xc62]
02be0ae8  ldr x0,[x19]
02be0aec  adrp x19,0x5e60000
02be0af0  ldr w8,[x0, #0xe4]
02be0af4  ldr x19,[x19, #0xdb8]
02be0af8  cbnz w8,0x02be0b00
02be0afc  bl 0x029f5bd0
02be0b00  ldr x0,[x19]
02be0b04  mov w1,#0x1
02be0b08  mov w2,wzr
02be0b0c  mov w3,#0x1
02be0b10  mov w4,wzr
02be0b14  mov x5,xzr
02be0b18  mov x6,xzr
02be0b1c  mov w7,#0x1
02be0b20  str xzr,[sp]
02be0b24  bl 0x02bccb00
02be0b28  ldp x20,x19,[sp, #0x20]
02be0b2c  ldr x30,[sp, #0x10]
02be0b30  add sp,sp,#0x30
02be0b34  ret
