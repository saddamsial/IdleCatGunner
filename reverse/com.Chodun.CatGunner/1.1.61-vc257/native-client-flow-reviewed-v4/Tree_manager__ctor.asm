02cade00  str x30,[sp, #-0x40]!
02cade04  stp x24,x23,[sp, #0x10]
02cade08  stp x22,x21,[sp, #0x20]
02cade0c  stp x20,x19,[sp, #0x30]
02cade10  adrp x23,0x5e5b000
02cade14  adrp x24,0x625c000
02cade18  adrp x20,0x5e5b000
02cade1c  adrp x22,0x5e64000
02cade20  adrp x21,0x5e64000
02cade24  ldr x23,[x23, #0xde0]
02cade28  ldr x20,[x20, #0xde8]
02cade2c  ldrb w8,[x24, #0x528]
02cade30  ldr x22,[x22, #0xac0]
02cade34  ldr x21,[x21, #0xac8]
02cade38  mov x19,x0
02cade3c  tbnz w8,#0x0,0x02cade78
02cade40  adrp x0,0x5e64000
02cade44  ldr x0,[x0, #0xac8]
02cade48  bl 0x029f5a50
02cade4c  adrp x0,0x5e64000
02cade50  ldr x0,[x0, #0xac0]
02cade54  bl 0x029f5a50
02cade58  adrp x0,0x5e5b000
02cade5c  ldr x0,[x0, #0xde8]
02cade60  bl 0x029f5a50
02cade64  adrp x0,0x5e5b000
02cade68  ldr x0,[x0, #0xde0]
02cade6c  bl 0x029f5a50
02cade70  mov w8,#0x1
02cade74  strb w8,[x24, #0x528]
02cade78  ldr x0,[x23]
02cade7c  mov w8,#0xffffffff
02cade80  str w8,[x19, #0x34]
02cade84  bl 0x029f5cec
02cade88  ldr x1,[x20]
02cade8c  mov x20,x0
02cade90  bl 0x042bb9a4
02cade94  mov x0,x19
02cade98  mov x1,x20
02cade9c  str x20,[x0, #0x48]!
02cadea0  bl 0x029f59f4
02cadea4  ldr x0,[x22]
02cadea8  bl 0x029f5cec
02cadeac  ldr x1,[x21]
02cadeb0  mov x20,x0
02cadeb4  bl 0x03dadfa0
02cadeb8  mov x0,x19
02cadebc  mov x1,x20
02cadec0  str x20,[x0, #0x80]!
02cadec4  bl 0x029f59f4
02cadec8  ldr x0,[x22]
02cadecc  bl 0x029f5cec
02caded0  ldr x1,[x21]
02caded4  mov x20,x0
02caded8  bl 0x03dadfa0
02cadedc  mov x0,x19
02cadee0  mov x1,x20
02cadee4  str x20,[x0, #0x88]!
02cadee8  bl 0x029f59f4
02cadeec  adrp x8,0x116f000
02cadef0  mov w9,#0x43340000
02cadef4  mov x0,x19
02cadef8  ldr d0,[x8, #0xb78]
02cadefc  str w9,[x19, #0x9c]
02cadf00  mov x1,xzr
02cadf04  str wzr,[x19, #0xd8]
02cadf08  ldp x22,x21,[sp, #0x20]
02cadf0c  str d0,[x19, #0xd0]
02cadf10  ldp x20,x19,[sp, #0x30]
02cadf14  ldp x24,x23,[sp, #0x10]
02cadf18  ldr x30,[sp], #0x40
02cadf1c  b 0x057e2ee0
