02cb2ddc  stp x30,x21,[sp, #-0x20]!
02cb2de0  stp x20,x19,[sp, #0x10]
02cb2de4  adrp x21,0x625c000
02cb2de8  adrp x20,0x5e5d000
02cb2dec  mov x19,x8
02cb2df0  ldrb w9,[x21, #0x55d]
02cb2df4  ldr x20,[x20, #0x4e8]
02cb2df8  tbnz w9,#0x0,0x02cb2e10
02cb2dfc  adrp x0,0x5e5d000
02cb2e00  ldr x0,[x0, #0x4e8]
02cb2e04  bl 0x029f5a50
02cb2e08  mov w8,#0x1
02cb2e0c  strb w8,[x21, #0x55d]
02cb2e10  ldr x0,[x20]
02cb2e14  ldr w8,[x0, #0xe4]
02cb2e18  cbnz w8,0x02cb2e24
02cb2e1c  bl 0x029f5bd0
02cb2e20  ldr x0,[x20]
02cb2e24  ldr x8,[x0, #0xb8]
02cb2e28  ldr x8,[x8]
02cb2e2c  cbz x8,0x02cb2e68
02cb2e30  ldr x20,[x8, #0x40]
02cb2e34  mov w0,#0x2
02cb2e38  bl 0x02caf208
02cb2e3c  cbz x20,0x02cb2e68
02cb2e40  ldr w8,[x20, #0x18]
02cb2e44  cmp w0,w8
02cb2e48  b.cs 0x02cb2e6c
02cb2e4c  sxtw x8,w0
02cb2e50  add x8,x20,x8, LSL #0x5
02cb2e54  ldp q0,q1,[x8, #0x20]
02cb2e58  stp q0,q1,[x19]
02cb2e5c  ldp x20,x19,[sp, #0x10]
02cb2e60  ldp x30,x21,[sp], #0x20
02cb2e64  ret
02cb2e68  bl 0x029f5cfc
02cb2e6c  bl 0x029f5d04
