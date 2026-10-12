02cafce0  stp x30,x21,[sp, #-0x20]!
02cafce4  stp x20,x19,[sp, #0x10]
02cafce8  adrp x20,0x625c000
02cafcec  adrp x21,0x5e64000
02cafcf0  mov x19,x0
02cafcf4  ldrb w8,[x20, #0x53e]
02cafcf8  ldr x21,[x21, #0xb30]
02cafcfc  tbnz w8,#0x0,0x02cafd14
02cafd00  adrp x0,0x5e64000
02cafd04  ldr x0,[x0, #0xb30]
02cafd08  bl 0x029f5a50
02cafd0c  mov w8,#0x1
02cafd10  strb w8,[x20, #0x53e]
02cafd14  ldr x0,[x21]
02cafd18  bl 0x029f5cec
02cafd1c  mov x1,xzr
02cafd20  mov x20,x0
02cafd24  bl 0x04893238
02cafd28  mov x0,x20
02cafd2c  mov x1,x19
02cafd30  str wzr,[x20, #0x10]
02cafd34  str x19,[x0, #0x20]!
02cafd38  bl 0x029f59f4
02cafd3c  mov x0,x20
02cafd40  ldp x20,x19,[sp, #0x10]
02cafd44  ldp x30,x21,[sp], #0x20
02cafd48  ret
