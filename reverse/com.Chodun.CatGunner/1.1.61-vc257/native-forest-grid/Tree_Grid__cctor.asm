02cac838  sub sp,sp,#0x40
02cac83c  str x30,[sp, #0x10]
02cac840  stp x22,x21,[sp, #0x20]
02cac844  stp x20,x19,[sp, #0x30]
02cac848  adrp x22,0x625c000
02cac84c  adrp x21,0x5e62000
02cac850  adrp x19,0x5e62000
02cac854  adrp x20,0x5e64000
02cac858  ldr x21,[x21, #0xd8]
02cac85c  ldrb w8,[x22, #0x516]
02cac860  ldr x19,[x19, #0xe0]
02cac864  ldr x20,[x20, #0xa88]
02cac868  tbnz w8,#0x0,0x02cac898
02cac86c  adrp x0,0x5e62000
02cac870  ldr x0,[x0, #0xd8]
02cac874  bl 0x029f5a50
02cac878  adrp x0,0x5e64000
02cac87c  ldr x0,[x0, #0xa88]
02cac880  bl 0x029f5a50
02cac884  adrp x0,0x5e62000
02cac888  ldr x0,[x0, #0xe0]
02cac88c  bl 0x029f5a50
02cac890  mov w8,#0x1
02cac894  strb w8,[x22, #0x516]
02cac898  adrp x8,0x116e000
02cac89c  add x8,x8,#0x140
02cac8a0  ldr x0,[x21]
02cac8a4  ldr q0,[x8]
02cac8a8  mov x1,sp
02cac8ac  str q0,[sp]
02cac8b0  bl 0x029f5b48
02cac8b4  ldr x1,[x19]
02cac8b8  mov x2,xzr
02cac8bc  mov x19,x0
02cac8c0  bl 0x047779e0
02cac8c4  ldr x8,[x20]
02cac8c8  mov x1,x19
02cac8cc  ldr x8,[x8, #0xb8]
02cac8d0  str x19,[x8]
02cac8d4  ldr x8,[x20]
02cac8d8  ldr x0,[x8, #0xb8]
02cac8dc  bl 0x029f59f4
02cac8e0  ldp x20,x19,[sp, #0x30]
02cac8e4  ldr x30,[sp, #0x10]
02cac8e8  ldp x22,x21,[sp, #0x20]
02cac8ec  add sp,sp,#0x40
02cac8f0  ret
