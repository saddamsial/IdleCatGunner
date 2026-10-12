02cafbe0  stp x30,x21,[sp, #-0x20]!
02cafbe4  stp x20,x19,[sp, #0x10]
02cafbe8  adrp x20,0x625c000
02cafbec  adrp x21,0x5e64000
02cafbf0  mov x19,x0
02cafbf4  ldrb w8,[x20, #0x53d]
02cafbf8  ldr x21,[x21, #0xb20]
02cafbfc  tbnz w8,#0x0,0x02cafc14
02cafc00  adrp x0,0x5e64000
02cafc04  ldr x0,[x0, #0xb20]
02cafc08  bl 0x029f5a50
02cafc0c  mov w8,#0x1
02cafc10  strb w8,[x20, #0x53d]
02cafc14  ldr x0,[x21]
02cafc18  bl 0x029f5cec
02cafc1c  mov x1,xzr
02cafc20  mov x20,x0
02cafc24  bl 0x04893238
02cafc28  mov x0,x20
02cafc2c  mov x1,x19
02cafc30  str wzr,[x20, #0x10]
02cafc34  str x19,[x0, #0x20]!
02cafc38  bl 0x029f59f4
02cafc3c  mov x0,x20
02cafc40  ldp x20,x19,[sp, #0x10]
02cafc44  ldp x30,x21,[sp], #0x20
02cafc48  ret
