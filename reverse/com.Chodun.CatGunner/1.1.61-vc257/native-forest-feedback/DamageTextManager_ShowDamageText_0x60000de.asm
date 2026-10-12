02b83ca0  sub sp,sp,#0x40
02b83ca4  stp x30,x23,[sp, #0x10]
02b83ca8  stp x22,x21,[sp, #0x20]
02b83cac  stp x20,x19,[sp, #0x30]
02b83cb0  adrp x23,0x625b000
02b83cb4  mov x20,x3
02b83cb8  mov x21,x2
02b83cbc  ldrb w8,[x23, #0x8e6]
02b83cc0  mov x19,x1
02b83cc4  mov x22,x0
02b83cc8  tbnz w8,#0x0,0x02b83d04
02b83ccc  adrp x0,0x5e58000
02b83cd0  ldr x0,[x0, #0xf08]
02b83cd4  bl 0x029f5a50
02b83cd8  adrp x0,0x5e5d000
02b83cdc  ldr x0,[x0, #0x5a0]
02b83ce0  bl 0x029f5a50
02b83ce4  adrp x0,0x5e59000
02b83ce8  ldr x0,[x0, #0x768]
02b83cec  bl 0x029f5a50
02b83cf0  adrp x0,0x5e5d000
02b83cf4  ldr x0,[x0, #0x5a8]
02b83cf8  bl 0x029f5a50
02b83cfc  mov w8,#0x1
02b83d00  strb w8,[x23, #0x8e6]
02b83d04  ldr x0,[x22, #0x30]
02b83d08  str wzr,[sp, #0xc]
02b83d0c  cbz x0,0x02b83dd4
02b83d10  adrp x8,0x5e5d000
02b83d14  add x2,sp,#0xc
02b83d18  mov x1,x19
02b83d1c  ldr x8,[x8, #0x5a0]
02b83d20  ldr x3,[x8]
02b83d24  bl 0x03e41968
02b83d28  tbz w0,#0x0,0x02b83d44
02b83d2c  ldr w1,[sp, #0xc]
02b83d30  mov x0,x22
02b83d34  mov x2,x21
02b83d38  mov x3,x20
02b83d3c  bl 0x02b83de8
02b83d40  b 0x02b83dc0
02b83d44  adrp x8,0x5e59000
02b83d48  mov w1,#0x1
02b83d4c  ldr x8,[x8, #0x768]
02b83d50  ldr x0,[x8]
02b83d54  bl 0x029f5b40
02b83d58  cbz x0,0x02b83dd4
02b83d5c  mov x20,x0
02b83d60  cbz x19,0x02b83d78
02b83d64  ldr x8,[x20]
02b83d68  mov x0,x19
02b83d6c  ldr x1,[x8, #0x40]
02b83d70  bl 0x029f5bd4
02b83d74  cbz x0,0x02b83ddc
02b83d78  ldr w8,[x20, #0x18]
02b83d7c  cbz w8,0x02b83dd8
02b83d80  mov x0,x20
02b83d84  mov x1,x19
02b83d88  str x19,[x0, #0x20]!
02b83d8c  bl 0x029f59f4
02b83d90  adrp x8,0x5e58000
02b83d94  ldr x8,[x8, #0xf08]
02b83d98  ldr x0,[x8]
02b83d9c  ldr w8,[x0, #0xe4]
02b83da0  cbnz w8,0x02b83da8
02b83da4  bl 0x029f5bd0
02b83da8  adrp x8,0x5e5d000
02b83dac  mov x1,x20
02b83db0  mov x2,xzr
02b83db4  ldr x8,[x8, #0x5a8]
02b83db8  ldr x0,[x8]
02b83dbc  bl 0x0579a69c
02b83dc0  ldp x20,x19,[sp, #0x30]
02b83dc4  ldp x22,x21,[sp, #0x20]
02b83dc8  ldp x30,x23,[sp, #0x10]
02b83dcc  add sp,sp,#0x40
02b83dd0  ret
02b83dd4  bl 0x029f5cfc
02b83dd8  bl 0x029f5d04
02b83ddc  bl 0x029f5d20
02b83de0  mov x1,xzr
02b83de4  bl 0x029f5bc0
