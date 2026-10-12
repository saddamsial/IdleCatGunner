02ca0528  stp x30,x23,[sp, #-0x30]!
02ca052c  stp x22,x21,[sp, #0x10]
02ca0530  stp x20,x19,[sp, #0x20]
02ca0534  adrp x20,0x625c000
02ca0538  adrp x22,0x5e5e000
02ca053c  mov x19,x0
02ca0540  ldrb w8,[x20, #0x478]
02ca0544  ldr x22,[x22, #0x3e0]
02ca0548  tbnz w8,#0x0,0x02ca056c
02ca054c  adrp x0,0x5e59000
02ca0550  ldr x0,[x0, #0x288]
02ca0554  bl 0x029f5a50
02ca0558  adrp x0,0x5e5e000
02ca055c  ldr x0,[x0, #0x3e0]
02ca0560  bl 0x029f5a50
02ca0564  mov w8,#0x1
02ca0568  strb w8,[x20, #0x478]
02ca056c  ldr x0,[x22]
02ca0570  ldr w8,[x0, #0xe4]
02ca0574  cbnz w8,0x02ca0580
02ca0578  bl 0x029f5bd0
02ca057c  ldr x0,[x22]
02ca0580  ldr x8,[x0, #0xb8]
02ca0584  adrp x23,0x5e59000
02ca0588  ldr x23,[x23, #0x288]
02ca058c  ldr x20,[x8, #0x18]
02ca0590  mov x0,x20
02ca0594  mov x1,x19
02ca0598  mov x2,xzr
02ca059c  bl 0x04896684
02ca05a0  mov x21,x0
02ca05a4  cbz x0,0x02ca05b8
02ca05a8  ldr x1,[x23]
02ca05ac  ldr x8,[x21]
02ca05b0  cmp x8,x1
02ca05b4  b.ne 0x02ca05fc
02ca05b8  ldr x0,[x22]
02ca05bc  ldr w8,[x0, #0xe4]
02ca05c0  cbnz w8,0x02ca05cc
02ca05c4  bl 0x029f5bd0
02ca05c8  ldr x0,[x22]
02ca05cc  ldr x8,[x0, #0xb8]
02ca05d0  mov x1,x21
02ca05d4  mov x2,x20
02ca05d8  add x0,x8,#0x18
02ca05dc  bl 0x02a2e558
02ca05e0  cmp x0,x20
02ca05e4  mov x20,x0
02ca05e8  b.ne 0x02ca0590
02ca05ec  ldp x20,x19,[sp, #0x20]
02ca05f0  ldp x22,x21,[sp, #0x10]
02ca05f4  ldp x30,x23,[sp], #0x30
02ca05f8  ret
02ca05fc  mov x0,x21
02ca0600  bl 0x029f607c
