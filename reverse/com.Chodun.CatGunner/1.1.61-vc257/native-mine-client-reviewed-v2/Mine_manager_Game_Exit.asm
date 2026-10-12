02c49a98  str x30,[sp, #-0x20]!
02c49a9c  stp x20,x19,[sp, #0x10]
02c49aa0  mov w1,#0x2
02c49aa4  mov x19,x0
02c49aa8  bl 0x02c49324
02c49aac  ldr x0,[x19, #0x30]
02c49ab0  cbz x0,0x02c49b48
02c49ab4  mov w1,wzr
02c49ab8  mov x2,xzr
02c49abc  bl 0x057dff3c
02c49ac0  ldr x0,[x19, #0x38]
02c49ac4  cbz x0,0x02c49b48
02c49ac8  mov w1,wzr
02c49acc  mov x2,xzr
02c49ad0  bl 0x057dff3c
02c49ad4  adrp x20,0x625b000
02c49ad8  ldrb w8,[x20, #0xa57]
02c49adc  cbnz w8,0x02c49af4
02c49ae0  adrp x0,0x5e5d000
02c49ae4  ldr x0,[x0, #0xd70]
02c49ae8  bl 0x029f5a50
02c49aec  mov w8,#0x1
02c49af0  strb w8,[x20, #0xa57]
02c49af4  adrp x8,0x5e5d000
02c49af8  ldr x8,[x8, #0xd70]
02c49afc  ldr x8,[x8]
02c49b00  ldr x8,[x8, #0xb8]
02c49b04  ldr x0,[x8]
02c49b08  cbz x0,0x02c49b48
02c49b0c  mov x1,xzr
02c49b10  bl 0x02c22750
02c49b14  ldr x1,[x19, #0x80]
02c49b18  cbz x1,0x02c49b28
02c49b1c  mov x0,x19
02c49b20  mov x2,xzr
02c49b24  bl 0x057e2250
02c49b28  mov x0,x19
02c49b2c  bl 0x02c49b4c
02c49b30  mov x1,x0
02c49b34  mov x0,x19
02c49b38  mov x2,xzr
02c49b3c  ldp x20,x19,[sp, #0x10]
02c49b40  ldr x30,[sp], #0x20
02c49b44  b 0x057e2120
02c49b48  bl 0x029f5cfc
