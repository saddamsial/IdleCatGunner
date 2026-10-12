02cafb9c  stp x30,x19,[sp, #-0x10]!
02cafba0  ldr w8,[x0, #0x60]
02cafba4  cmp w8,#0x2
02cafba8  b.ne 0x02cafbd4
02cafbac  mov x19,x0
02cafbb0  ldr x0,[x0, #0x30]
02cafbb4  cbz x0,0x02cafbdc
02cafbb8  mov w1,wzr
02cafbbc  mov x2,xzr
02cafbc0  bl 0x057dff3c
02cafbc4  mov x0,x19
02cafbc8  mov w1,#0x3
02cafbcc  ldp x30,x19,[sp], #0x10
02cafbd0  b 0x02caf65c
02cafbd4  ldp x30,x19,[sp], #0x10
02cafbd8  ret
02cafbdc  bl 0x029f5cfc
