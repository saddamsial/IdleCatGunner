02cafc74  stp x30,x21,[sp, #-0x20]!
02cafc78  stp x20,x19,[sp, #0x10]
02cafc7c  adrp x20,0x625c000
02cafc80  adrp x21,0x5e64000
02cafc84  mov x19,x0
02cafc88  ldrb w8,[x20, #0x53f]
02cafc8c  ldr x21,[x21, #0xb28]
02cafc90  tbnz w8,#0x0,0x02cafca8
02cafc94  adrp x0,0x5e64000
02cafc98  ldr x0,[x0, #0xb28]
02cafc9c  bl 0x029f5a50
02cafca0  mov w8,#0x1
02cafca4  strb w8,[x20, #0x53f]
02cafca8  ldr x0,[x21]
02cafcac  bl 0x029f5cec
02cafcb0  mov x1,xzr
02cafcb4  mov x20,x0
02cafcb8  bl 0x04893238
02cafcbc  mov x0,x20
02cafcc0  mov x1,x19
02cafcc4  str wzr,[x20, #0x10]
02cafcc8  str x19,[x0, #0x20]!
02cafccc  bl 0x029f59f4
02cafcd0  mov x0,x20
02cafcd4  ldp x20,x19,[sp, #0x10]
02cafcd8  ldp x30,x21,[sp], #0x20
02cafcdc  ret
