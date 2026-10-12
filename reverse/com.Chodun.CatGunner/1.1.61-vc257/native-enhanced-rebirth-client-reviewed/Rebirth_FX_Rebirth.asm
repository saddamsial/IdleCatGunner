02c88a30  stp x30,x21,[sp, #-0x20]!
02c88a34  stp x20,x19,[sp, #0x10]
02c88a38  adrp x20,0x625c000
02c88a3c  adrp x21,0x5e5d000
02c88a40  mov x19,x0
02c88a44  ldrb w8,[x20, #0x391]
02c88a48  ldr x21,[x21, #0xd60]
02c88a4c  tbnz w8,#0x0,0x02c88a64
02c88a50  adrp x0,0x5e5d000
02c88a54  ldr x0,[x0, #0xd60]
02c88a58  bl 0x029f5a50
02c88a5c  mov w8,#0x1
02c88a60  strb w8,[x20, #0x391]
02c88a64  ldr x8,[x21]
02c88a68  ldr x8,[x8, #0xb8]
02c88a6c  ldr x0,[x8]
02c88a70  cbz x0,0x02c88ad8
02c88a74  bl 0x02c87c10
02c88a78  ldr x0,[x19, #0x20]
02c88a7c  cbz x0,0x02c88ad8
02c88a80  mov w1,wzr
02c88a84  mov x2,xzr
02c88a88  bl 0x057dff3c
02c88a8c  ldr x0,[x19, #0x28]
02c88a90  cbz x0,0x02c88ad8
02c88a94  mov w1,wzr
02c88a98  mov x2,xzr
02c88a9c  bl 0x057dff3c
02c88aa0  ldr x0,[x19, #0x30]
02c88aa4  cbz x0,0x02c88ad8
02c88aa8  mov w1,wzr
02c88aac  mov x2,xzr
02c88ab0  bl 0x057dff3c
02c88ab4  mov x0,x19
02c88ab8  mov x1,xzr
02c88abc  bl 0x057dc1c8
02c88ac0  cbz x0,0x02c88ad8
02c88ac4  ldp x20,x19,[sp, #0x10]
02c88ac8  mov w1,wzr
02c88acc  mov x2,xzr
02c88ad0  ldp x30,x21,[sp], #0x20
02c88ad4  b 0x057dff3c
02c88ad8  bl 0x029f5cfc
