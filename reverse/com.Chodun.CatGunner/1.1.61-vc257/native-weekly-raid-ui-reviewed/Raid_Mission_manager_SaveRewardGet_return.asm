02c54ed4  str x30,[sp, #-0x20]!
02c54ed8  stp x20,x19,[sp, #0x10]
02c54edc  adrp x20,0x625c000
02c54ee0  mov x19,x0
02c54ee4  ldrb w8,[x20, #0x181]
02c54ee8  tbnz w8,#0x0,0x02c54f00
02c54eec  adrp x0,0x5e62000
02c54ef0  ldr x0,[x0, #0x6b0]
02c54ef4  bl 0x029f5a50
02c54ef8  mov w8,#0x1
02c54efc  strb w8,[x20, #0x181]
02c54f00  ldr x0,[x19, #0x38]
02c54f04  cbz x0,0x02c54f3c
02c54f08  mov x1,xzr
02c54f0c  bl 0x04874260
02c54f10  cbz x0,0x02c54f30
02c54f14  adrp x8,0x5e62000
02c54f18  mov x19,x0
02c54f1c  ldr x8,[x8, #0x6b0]
02c54f20  ldr x20,[x8]
02c54f24  mov x1,x20
02c54f28  bl 0x029f5bd4
02c54f2c  cbz x0,0x02c54f40
02c54f30  ldp x20,x19,[sp, #0x10]
02c54f34  ldr x30,[sp], #0x20
02c54f38  ret
02c54f3c  bl 0x029f5cfc
02c54f40  mov x0,x19
02c54f44  mov x1,x20
02c54f48  bl 0x029f607c
