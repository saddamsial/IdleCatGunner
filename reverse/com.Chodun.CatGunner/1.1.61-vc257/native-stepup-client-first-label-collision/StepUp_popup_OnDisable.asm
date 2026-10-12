02ca4da8  str x30,[sp, #-0x20]!
02ca4dac  stp x20,x19,[sp, #0x10]
02ca4db0  mov x20,x0
02ca4db4  ldr x1,[x20, #0x38]!
02ca4db8  cbz x1,0x02ca4de0
02ca4dbc  mov x2,xzr
02ca4dc0  mov x19,x0
02ca4dc4  bl 0x057e237c
02ca4dc8  mov x0,x20
02ca4dcc  str xzr,[x19, #0x38]
02ca4dd0  mov x1,xzr
02ca4dd4  ldp x20,x19,[sp, #0x10]
02ca4dd8  ldr x30,[sp], #0x20
02ca4ddc  b 0x029f59f4
02ca4de0  ldp x20,x19,[sp, #0x10]
02ca4de4  ldr x30,[sp], #0x20
02ca4de8  ret
