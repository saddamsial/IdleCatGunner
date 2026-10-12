02b9da24  stp x30,x21,[sp, #-0x20]!
02b9da28  stp x20,x19,[sp, #0x10]
02b9da2c  adrp x21,0x625b000
02b9da30  adrp x19,0x5e5d000
02b9da34  mov x20,x0
02b9da38  ldrb w8,[x21, #0xa4c]
02b9da3c  ldr x19,[x19, #0xd50]
02b9da40  tbnz w8,#0x0,0x02b9da64
02b9da44  adrp x0,0x5e5d000
02b9da48  ldr x0,[x0, #0x540]
02b9da4c  bl 0x029f5a50
02b9da50  adrp x0,0x5e5d000
02b9da54  ldr x0,[x0, #0xd50]
02b9da58  bl 0x029f5a50
02b9da5c  mov w8,#0x1
02b9da60  strb w8,[x21, #0xa4c]
02b9da64  ldr x0,[x19]
02b9da68  ldr w8,[x0, #0xe4]
02b9da6c  cbnz w8,0x02b9da78
02b9da70  bl 0x029f5bd0
02b9da74  ldr x0,[x19]
02b9da78  ldr x8,[x0, #0xb8]
02b9da7c  ldrb w9,[x8, #0x1]
02b9da80  cbz w9,0x02b9da8c
02b9da84  mov w19,#0x2
02b9da88  b 0x02b9daa4
02b9da8c  ldr w9,[x0, #0xe4]
02b9da90  cbnz w9,0x02b9daa0
02b9da94  bl 0x029f5bd0
02b9da98  ldr x8,[x19]
02b9da9c  ldr x8,[x8, #0xb8]
02b9daa0  ldrb w19,[x8]
02b9daa4  mov x0,x20
02b9daa8  mov w1,#0x1
02b9daac  mov w2,wzr
02b9dab0  bl 0x02ba49bc
02b9dab4  mov x0,x20
02b9dab8  bl 0x02ba4028
02b9dabc  ldr x0,[x20, #0xe0]
02b9dac0  cbz x0,0x02b9db5c
02b9dac4  mov w1,wzr
02b9dac8  mov x2,xzr
02b9dacc  bl 0x057dff3c
02b9dad0  ldr x0,[x20, #0xe8]
02b9dad4  cbz x0,0x02b9db5c
02b9dad8  mov w1,wzr
02b9dadc  mov x2,xzr
02b9dae0  bl 0x057dff3c
02b9dae4  adrp x20,0x625b000
02b9dae8  ldrb w8,[x20, #0xa57]
02b9daec  cbnz w8,0x02b9db04
02b9daf0  adrp x0,0x5e5d000
02b9daf4  ldr x0,[x0, #0xd70]
02b9daf8  bl 0x029f5a50
02b9dafc  mov w8,#0x1
02b9db00  strb w8,[x20, #0xa57]
02b9db04  adrp x8,0x5e5d000
02b9db08  ldr x8,[x8, #0xd70]
02b9db0c  ldr x8,[x8]
02b9db10  ldr x8,[x8, #0xb8]
02b9db14  ldr x0,[x8]
02b9db18  cbz x0,0x02b9db5c
02b9db1c  fmov s0,0x3f800000
02b9db20  adrp x20,0x5e5d000
02b9db24  mov w1,#0x7
02b9db28  ldr x20,[x20, #0x540]
02b9db2c  mov x2,xzr
02b9db30  mov x3,xzr
02b9db34  bl 0x02c1f10c
02b9db38  ldr x0,[x20]
02b9db3c  ldr w8,[x0, #0xe4]
02b9db40  cbnz w8,0x02b9db48
02b9db44  bl 0x029f5bd0
02b9db48  mov w0,w19
02b9db4c  bl 0x02b9a39c
02b9db50  ldp x20,x19,[sp, #0x10]
02b9db54  ldp x30,x21,[sp], #0x20
02b9db58  ret
02b9db5c  bl 0x029f5cfc
