02c7ceec  stp x30,x21,[sp, #-0x20]!
02c7cef0  stp x20,x19,[sp, #0x10]
02c7cef4  adrp x21,0x625c000
02c7cef8  adrp x20,0x5e59000
02c7cefc  mov x19,x0
02c7cf00  ldrb w8,[x21, #0x324]
02c7cf04  ldr x20,[x20, #0x1c0]
02c7cf08  tbnz w8,#0x0,0x02c7cf20
02c7cf0c  adrp x0,0x5e59000
02c7cf10  ldr x0,[x0, #0x1c0]
02c7cf14  bl 0x029f5a50
02c7cf18  mov w8,#0x1
02c7cf1c  strb w8,[x21, #0x324]
02c7cf20  ldr x0,[x20]
02c7cf24  ldr x20,[x19, #0x88]
02c7cf28  ldr w8,[x0, #0xe4]
02c7cf2c  cbnz w8,0x02c7cf34
02c7cf30  bl 0x029f5bd0
02c7cf34  mov x0,x20
02c7cf38  mov x1,xzr
02c7cf3c  mov x2,xzr
02c7cf40  bl 0x057dfa70
02c7cf44  tbz w0,#0x0,0x02c7cf58
02c7cf48  ldr x0,[x19, #0x88]
02c7cf4c  cbz x0,0x02c7cf70
02c7cf50  mov x1,xzr
02c7cf54  bl 0x02c825a8
02c7cf58  mov x0,x19
02c7cf5c  bl 0x02c7c464
02c7cf60  mov x0,x19
02c7cf64  ldp x20,x19,[sp, #0x10]
02c7cf68  ldp x30,x21,[sp], #0x20
02c7cf6c  b 0x02c7c878
02c7cf70  bl 0x029f5cfc
