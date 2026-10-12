02b9be34  str x30,[sp, #-0x20]!
02b9be38  stp x20,x19,[sp, #0x10]
02b9be3c  adrp x20,0x625b000
02b9be40  mov x19,x0
02b9be44  ldrb w8,[x20, #0x9b8]
02b9be48  tbnz w8,#0x0,0x02b9be60
02b9be4c  adrp x0,0x5e5e000
02b9be50  ldr x0,[x0, #0x368]
02b9be54  bl 0x029f5a50
02b9be58  mov w8,#0x1
02b9be5c  strb w8,[x20, #0x9b8]
02b9be60  ldrb w8,[x19, #0x3c]
02b9be64  str wzr,[x19, #0x20]
02b9be68  cbnz w8,0x02b9beb0
02b9be6c  mov w8,#0x1
02b9be70  mov x0,x19
02b9be74  mov x1,xzr
02b9be78  strb w8,[x19, #0x3c]
02b9be7c  bl 0x057dc1c8
02b9be80  cbz x0,0x02b9bebc
02b9be84  mov x1,xzr
02b9be88  bl 0x057e00b4
02b9be8c  tbz w0,#0x0,0x02b9beb0
02b9be90  adrp x8,0x5e5e000
02b9be94  mov x0,x19
02b9be98  mov x2,xzr
02b9be9c  ldr x8,[x8, #0x368]
02b9bea0  ldp x20,x19,[sp, #0x10]
02b9bea4  ldr x1,[x8]
02b9bea8  ldr x30,[sp], #0x20
02b9beac  b 0x057e1df4
02b9beb0  ldp x20,x19,[sp, #0x10]
02b9beb4  ldr x30,[sp], #0x20
02b9beb8  ret
02b9bebc  bl 0x029f5cfc
