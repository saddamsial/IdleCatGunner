02cafb08  stp x30,x21,[sp, #-0x20]!
02cafb0c  stp x20,x19,[sp, #0x10]
02cafb10  adrp x20,0x625c000
02cafb14  adrp x21,0x5e64000
02cafb18  mov x19,x0
02cafb1c  ldrb w8,[x20, #0x53b]
02cafb20  ldr x21,[x21, #0xb18]
02cafb24  tbnz w8,#0x0,0x02cafb3c
02cafb28  adrp x0,0x5e64000
02cafb2c  ldr x0,[x0, #0xb18]
02cafb30  bl 0x029f5a50
02cafb34  mov w8,#0x1
02cafb38  strb w8,[x20, #0x53b]
02cafb3c  ldr x0,[x21]
02cafb40  bl 0x029f5cec
02cafb44  mov x1,xzr
02cafb48  mov x20,x0
02cafb4c  bl 0x04893238
02cafb50  mov x0,x20
02cafb54  mov x1,x19
02cafb58  str wzr,[x20, #0x10]
02cafb5c  str x19,[x0, #0x20]!
02cafb60  bl 0x029f59f4
02cafb64  mov x0,x20
02cafb68  ldp x20,x19,[sp, #0x10]
02cafb6c  ldp x30,x21,[sp], #0x20
02cafb70  ret
