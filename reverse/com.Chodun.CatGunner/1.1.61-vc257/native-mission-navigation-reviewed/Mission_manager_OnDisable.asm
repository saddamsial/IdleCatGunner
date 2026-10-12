02ba3ce4  stp x30,x23,[sp, #-0x30]!
02ba3ce8  stp x22,x21,[sp, #0x10]
02ba3cec  stp x20,x19,[sp, #0x20]
02ba3cf0  adrp x23,0x625b000
02ba3cf4  adrp x21,0x5e59000
02ba3cf8  adrp x20,0x5e5e000
02ba3cfc  adrp x22,0x5e5d000
02ba3d00  ldr x21,[x21, #0x288]
02ba3d04  ldrb w8,[x23, #0xa36]
02ba3d08  ldr x20,[x20, #0x6d8]
02ba3d0c  ldr x22,[x22, #0x3c0]
02ba3d10  mov x19,x0
02ba3d14  tbnz w8,#0x0,0x02ba3d50
02ba3d18  adrp x0,0x5e59000
02ba3d1c  ldr x0,[x0, #0x288]
02ba3d20  bl 0x029f5a50
02ba3d24  adrp x0,0x5e5e000
02ba3d28  ldr x0,[x0, #0x6e0]
02ba3d2c  bl 0x029f5a50
02ba3d30  adrp x0,0x5e5e000
02ba3d34  ldr x0,[x0, #0x6d8]
02ba3d38  bl 0x029f5a50
02ba3d3c  adrp x0,0x5e5d000
02ba3d40  ldr x0,[x0, #0x3c0]
02ba3d44  bl 0x029f5a50
02ba3d48  mov w8,#0x1
02ba3d4c  strb w8,[x23, #0xa36]
02ba3d50  adrp x23,0x5e5e000
02ba3d54  ldr x23,[x23, #0x6e0]
02ba3d58  ldr x0,[x21]
02ba3d5c  bl 0x029f5cec
02ba3d60  ldr x2,[x20]
02ba3d64  mov x1,x19
02ba3d68  mov x3,xzr
02ba3d6c  mov x20,x0
02ba3d70  bl 0x047b3618
02ba3d74  ldr x0,[x22]
02ba3d78  ldr w8,[x0, #0xe4]
02ba3d7c  cbnz w8,0x02ba3d84
02ba3d80  bl 0x029f5bd0
02ba3d84  mov x0,x20
02ba3d88  mov x1,xzr
02ba3d8c  bl 0x02c23070
02ba3d90  ldr x0,[x21]
02ba3d94  bl 0x029f5cec
02ba3d98  ldr x2,[x23]
02ba3d9c  mov x1,x19
02ba3da0  mov x3,xzr
02ba3da4  mov x20,x0
02ba3da8  bl 0x047b3618
02ba3dac  mov x0,x20
02ba3db0  ldp x20,x19,[sp, #0x20]
02ba3db4  ldp x22,x21,[sp, #0x10]
02ba3db8  mov x1,xzr
02ba3dbc  ldp x30,x23,[sp], #0x30
02ba3dc0  b 0x02c235c8
