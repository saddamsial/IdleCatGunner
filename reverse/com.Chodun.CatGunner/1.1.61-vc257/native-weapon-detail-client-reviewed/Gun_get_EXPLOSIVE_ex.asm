02be0508  sub sp,sp,#0x30
02be050c  str x30,[sp, #0x10]
02be0510  stp x20,x19,[sp, #0x20]
02be0514  adrp x20,0x625b000
02be0518  adrp x19,0x5e5e000
02be051c  ldrb w8,[x20, #0xc58]
02be0520  ldr x19,[x19, #0x528]
02be0524  tbnz w8,#0x0,0x02be0548
02be0528  adrp x0,0x5e5e000
02be052c  ldr x0,[x0, #0x528]
02be0530  bl 0x029f5a50
02be0534  adrp x0,0x5e60000
02be0538  ldr x0,[x0, #0xd68]
02be053c  bl 0x029f5a50
02be0540  mov w8,#0x1
02be0544  strb w8,[x20, #0xc58]
02be0548  ldr x0,[x19]
02be054c  adrp x19,0x5e60000
02be0550  ldr w8,[x0, #0xe4]
02be0554  ldr x19,[x19, #0xd68]
02be0558  cbnz w8,0x02be0560
02be055c  bl 0x029f5bd0
02be0560  ldr x0,[x19]
02be0564  mov w1,#0x1
02be0568  mov w2,wzr
02be056c  mov w3,#0x1
02be0570  mov w4,wzr
02be0574  mov x5,xzr
02be0578  mov x6,xzr
02be057c  mov w7,#0x1
02be0580  str xzr,[sp]
02be0584  bl 0x02bccb00
02be0588  ldp x20,x19,[sp, #0x20]
02be058c  ldr x30,[sp, #0x10]
02be0590  add sp,sp,#0x30
02be0594  ret
