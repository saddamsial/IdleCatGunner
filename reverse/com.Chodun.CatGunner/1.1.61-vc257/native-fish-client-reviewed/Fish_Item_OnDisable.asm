02c60ec4  stp x30,x19,[sp, #-0x10]!
02c60ec8  ldrb w8,[x0, #0x84]
02c60ecc  mov x19,x0
02c60ed0  cbz w8,0x02c60edc
02c60ed4  mov x0,x19
02c60ed8  bl 0x02c60f18
02c60edc  mov x0,x19
02c60ee0  bl 0x02c60fe0
02c60ee4  mov x0,x19
02c60ee8  mov x1,xzr
02c60eec  bl 0x057dc0f8
02c60ef0  cbz x0,0x02c60f14
02c60ef4  ldp s1,s2,[x19, #0xa0]
02c60ef8  mov x1,xzr
02c60efc  ldr s0,[x19, #0x9c]
02c60f00  bl 0x057ef654
02c60f04  mov x0,x19
02c60f08  strb wzr,[x19, #0xb0]
02c60f0c  ldp x30,x19,[sp], #0x10
02c60f10  b 0x02c61024
02c60f14  bl 0x029f5cfc
