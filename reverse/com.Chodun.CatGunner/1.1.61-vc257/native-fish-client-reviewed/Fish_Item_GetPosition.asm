02c6285c  stp x30,x19,[sp, #-0x10]!
02c62860  mov x19,x0
02c62864  bl 0x02c60a20
02c62868  ldr x0,[x19, #0x50]
02c6286c  cbz x0,0x02c6287c
02c62870  mov x1,xzr
02c62874  ldp x30,x19,[sp], #0x10
02c62878  b 0x057eddfc
02c6287c  bl 0x029f5cfc
