02c555cc  stp x30,x21,[sp, #-0x20]!
02c555d0  stp x20,x19,[sp, #0x10]
02c555d4  adrp x20,0x625c000
02c555d8  adrp x21,0x5e63000
02c555dc  mov x19,x0
02c555e0  ldrb w8,[x20, #0x18a]
02c555e4  ldr x21,[x21, #0x620]
02c555e8  tbnz w8,#0x0,0x02c55600
02c555ec  adrp x0,0x5e63000
02c555f0  ldr x0,[x0, #0x620]
02c555f4  bl 0x029f5a50
02c555f8  mov w8,#0x1
02c555fc  strb w8,[x20, #0x18a]
02c55600  ldr x1,[x21]
02c55604  mov x0,x19
02c55608  str x1,[x0, #0x38]!
02c5560c  bl 0x029f59f4
02c55610  mov x0,x19
02c55614  ldp x20,x19,[sp, #0x10]
02c55618  mov x1,xzr
02c5561c  ldp x30,x21,[sp], #0x20
02c55620  b 0x057e2ee0
