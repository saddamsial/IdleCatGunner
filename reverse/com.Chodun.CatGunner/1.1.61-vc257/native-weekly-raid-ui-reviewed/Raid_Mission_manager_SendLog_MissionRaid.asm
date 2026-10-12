02c549f0  stp x30,x23,[sp, #-0x30]!
02c549f4  stp x22,x21,[sp, #0x10]
02c549f8  stp x20,x19,[sp, #0x20]
02c549fc  adrp x23,0x625c000
02c54a00  adrp x22,0x5e5d000
02c54a04  mov w19,w2
02c54a08  ldrb w8,[x23, #0x184]
02c54a0c  ldr x22,[x22, #0x540]
02c54a10  mov w20,w1
02c54a14  mov x21,x0
02c54a18  tbnz w8,#0x0,0x02c54a30
02c54a1c  adrp x0,0x5e5d000
02c54a20  ldr x0,[x0, #0x540]
02c54a24  bl 0x029f5a50
02c54a28  mov w8,#0x1
02c54a2c  strb w8,[x23, #0x184]
02c54a30  ldr x0,[x22]
02c54a34  ldrb w21,[x21, #0x48]
02c54a38  ldr w8,[x0, #0xe4]
02c54a3c  cbnz w8,0x02c54a44
02c54a40  bl 0x029f5bd0
02c54a44  mov w0,w20
02c54a48  mov w1,w21
02c54a4c  mov w2,w19
02c54a50  mov x3,xzr
02c54a54  bl 0x02b98984
02c54a58  ldp x20,x19,[sp, #0x20]
02c54a5c  ldp x22,x21,[sp, #0x10]
02c54a60  ldp x30,x23,[sp], #0x30
02c54a64  ret
