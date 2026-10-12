02ba0c24  stp x30,x21,[sp, #-0x20]!
02ba0c28  stp x20,x19,[sp, #0x10]
02ba0c2c  adrp x20,0x625b000
02ba0c30  adrp x21,0x5e5e000
02ba0c34  mov x19,x0
02ba0c38  ldrb w8,[x20, #0xa0f]
02ba0c3c  ldr x21,[x21, #0x4f8]
02ba0c40  tbnz w8,#0x0,0x02ba0c58
02ba0c44  adrp x0,0x5e5e000
02ba0c48  ldr x0,[x0, #0x4f8]
02ba0c4c  bl 0x029f5a50
02ba0c50  mov w8,#0x1
02ba0c54  strb w8,[x20, #0xa0f]
02ba0c58  ldr x8,[x21]
02ba0c5c  ldr x8,[x8, #0xb8]
02ba0c60  ldr x0,[x8]
02ba0c64  cbz x0,0x02ba0c78
02ba0c68  ldr w1,[x19, #0x20]
02ba0c6c  ldp x20,x19,[sp, #0x10]
02ba0c70  ldp x30,x21,[sp], #0x20
02ba0c74  b 0x02b9f7c0
02ba0c78  bl 0x029f5cfc
