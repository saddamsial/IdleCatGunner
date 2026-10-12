02c8b940  str x30,[sp, #-0x20]!
02c8b944  stp x20,x19,[sp, #0x10]
02c8b948  adrp x19,0x625c000
02c8b94c  adrp x20,0x5e63000
02c8b950  ldrb w8,[x19, #0x3ae]
02c8b954  ldr x20,[x20, #0x828]
02c8b958  tbnz w8,#0x0,0x02c8b970
02c8b95c  adrp x0,0x5e63000
02c8b960  ldr x0,[x0, #0x828]
02c8b964  bl 0x029f5a50
02c8b968  mov w8,#0x1
02c8b96c  strb w8,[x19, #0x3ae]
02c8b970  ldr x8,[x20]
02c8b974  ldr x8,[x8, #0xb8]
02c8b978  ldr x0,[x8]
02c8b97c  cbz x0,0x02c8b990
02c8b980  ldp x20,x19,[sp, #0x10]
02c8b984  mov x1,xzr
02c8b988  ldr x30,[sp], #0x20
02c8b98c  b 0x02ca6f08
02c8b990  bl 0x029f5cfc
