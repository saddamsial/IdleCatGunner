02c54d8c  str x30,[sp, #-0x20]!
02c54d90  stp x20,x19,[sp, #0x10]
02c54d94  adrp x20,0x625c000
02c54d98  mov x19,x0
02c54d9c  ldrb w8,[x20, #0x17f]
02c54da0  tbnz w8,#0x0,0x02c54dd0
02c54da4  adrp x0,0x5e58000
02c54da8  ldr x0,[x0, #0xf08]
02c54dac  bl 0x029f5a50
02c54db0  adrp x0,0x5e5e000
02c54db4  ldr x0,[x0, #0x68]
02c54db8  bl 0x029f5a50
02c54dbc  adrp x0,0x5e63000
02c54dc0  ldr x0,[x0, #0x610]
02c54dc4  bl 0x029f5a50
02c54dc8  mov w8,#0x1
02c54dcc  strb w8,[x20, #0x17f]
02c54dd0  mov x0,x19
02c54dd4  bl 0x02c53fc0
02c54dd8  ldrb w8,[x19, #0x48]
02c54ddc  cbnz w8,0x02c54e4c
02c54de0  mov w8,#0x1
02c54de4  mov x0,xzr
02c54de8  strb w8,[x19, #0x48]
02c54dec  bl 0x02c0faf8
02c54df0  adrp x8,0x5e58000
02c54df4  ldr x8,[x8, #0xf08]
02c54df8  ldr x0,[x8]
02c54dfc  ldr w8,[x0, #0xe4]
02c54e00  cbnz w8,0x02c54e08
02c54e04  bl 0x029f5bd0
02c54e08  adrp x8,0x5e63000
02c54e0c  mov x1,xzr
02c54e10  ldr x8,[x8, #0x610]
02c54e14  ldr x0,[x8]
02c54e18  bl 0x05799e30
02c54e1c  mov x0,x19
02c54e20  bl 0x02c540a4
02c54e24  adrp x8,0x5e5e000
02c54e28  ldr x8,[x8, #0x68]
02c54e2c  ldr x8,[x8]
02c54e30  ldr x8,[x8, #0xb8]
02c54e34  ldr x8,[x8, #0x8]
02c54e38  cbz x8,0x02c54e4c
02c54e3c  ldr x9,[x8, #0x18]
02c54e40  ldr x0,[x8, #0x40]
02c54e44  ldr x1,[x8, #0x28]
02c54e48  blr x9
02c54e4c  ldp x20,x19,[sp, #0x10]
02c54e50  mov w0,#0x1
02c54e54  ldr x30,[sp], #0x20
02c54e58  ret
