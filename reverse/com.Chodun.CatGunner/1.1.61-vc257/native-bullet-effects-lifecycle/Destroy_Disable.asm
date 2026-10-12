02c17890  stp x30,x21,[sp, #-0x20]!
02c17894  stp x20,x19,[sp, #0x10]
02c17898  adrp x20,0x625b000
02c1789c  adrp x21,0x5e62000
02c178a0  mov x19,x0
02c178a4  ldrb w8,[x20, #0xefd]
02c178a8  ldr x21,[x21, #0x758]
02c178ac  tbnz w8,#0x0,0x02c178c4
02c178b0  adrp x0,0x5e62000
02c178b4  ldr x0,[x0, #0x758]
02c178b8  bl 0x029f5a50
02c178bc  mov w8,#0x1
02c178c0  strb w8,[x20, #0xefd]
02c178c4  ldr x0,[x21]
02c178c8  bl 0x029f5cec
02c178cc  mov x1,xzr
02c178d0  mov x20,x0
02c178d4  bl 0x04893238
02c178d8  mov x0,x20
02c178dc  mov x1,x19
02c178e0  str wzr,[x20, #0x10]
02c178e4  str x19,[x0, #0x20]!
02c178e8  bl 0x029f59f4
02c178ec  mov x0,x20
02c178f0  ldp x20,x19,[sp, #0x10]
02c178f4  ldp x30,x21,[sp], #0x20
02c178f8  ret
