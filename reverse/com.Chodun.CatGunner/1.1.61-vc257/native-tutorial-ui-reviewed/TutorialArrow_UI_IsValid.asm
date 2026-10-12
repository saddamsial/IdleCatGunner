02caea78  stp x30,x21,[sp, #-0x20]!
02caea7c  stp x20,x19,[sp, #0x10]
02caea80  adrp x21,0x625c000
02caea84  adrp x20,0x5e59000
02caea88  mov x19,x1
02caea8c  ldrb w8,[x21, #0x532]
02caea90  ldr x20,[x20, #0x1c0]
02caea94  tbnz w8,#0x0,0x02caeaac
02caea98  adrp x0,0x5e59000
02caea9c  ldr x0,[x0, #0x1c0]
02caeaa0  bl 0x029f5a50
02caeaa4  mov w8,#0x1
02caeaa8  strb w8,[x21, #0x532]
02caeaac  ldr x0,[x20]
02caeab0  ldr w8,[x0, #0xe4]
02caeab4  cbnz w8,0x02caeabc
02caeab8  bl 0x029f5bd0
02caeabc  mov x0,x19
02caeac0  mov x1,xzr
02caeac4  mov x2,xzr
02caeac8  bl 0x057dfa70
02caeacc  tbz w0,#0x0,0x02caeb2c
02caead0  cbz x19,0x02caeb3c
02caead4  mov x0,x19
02caead8  mov x1,xzr
02caeadc  bl 0x057dc1c8
02caeae0  ldr x8,[x20]
02caeae4  mov x20,x0
02caeae8  ldr w9,[x8, #0xe4]
02caeaec  cbnz w9,0x02caeaf8
02caeaf0  mov x0,x8
02caeaf4  bl 0x029f5bd0
02caeaf8  mov x0,x20
02caeafc  mov x1,xzr
02caeb00  mov x2,xzr
02caeb04  bl 0x057dfa70
02caeb08  tbz w0,#0x0,0x02caeb2c
02caeb0c  mov x0,x19
02caeb10  mov x1,xzr
02caeb14  bl 0x057dc1c8
02caeb18  cbz x0,0x02caeb3c
02caeb1c  ldp x20,x19,[sp, #0x10]
02caeb20  mov x1,xzr
02caeb24  ldp x30,x21,[sp], #0x20
02caeb28  b 0x057e00b4
02caeb2c  ldp x20,x19,[sp, #0x10]
02caeb30  mov w0,wzr
02caeb34  ldp x30,x21,[sp], #0x20
02caeb38  ret
02caeb3c  bl 0x029f5cfc
