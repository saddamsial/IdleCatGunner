02cb3558  str x30,[sp, #-0x20]!
02cb355c  stp x20,x19,[sp, #0x10]
02cb3560  adrp x20,0x625c000
02cb3564  adrp x19,0x5e5d000
02cb3568  ldrb w8,[x20, #0x569]
02cb356c  ldr x19,[x19, #0x4e8]
02cb3570  tbnz w8,#0x0,0x02cb3588
02cb3574  adrp x0,0x5e5d000
02cb3578  ldr x0,[x0, #0x4e8]
02cb357c  bl 0x029f5a50
02cb3580  mov w8,#0x1
02cb3584  strb w8,[x20, #0x569]
02cb3588  ldr x0,[x19]
02cb358c  ldr w8,[x0, #0xe4]
02cb3590  cbnz w8,0x02cb359c
02cb3594  bl 0x029f5bd0
02cb3598  ldr x0,[x19]
02cb359c  ldr x8,[x0, #0xb8]
02cb35a0  ldr x19,[x8, #0x8]
02cb35a4  bl 0x02cb337c
02cb35a8  mov x1,x0
02cb35ac  mov x0,x19
02cb35b0  mov x2,xzr
02cb35b4  ldp x20,x19,[sp, #0x10]
02cb35b8  ldr x30,[sp], #0x20
02cb35bc  b 0x046b2ddc
