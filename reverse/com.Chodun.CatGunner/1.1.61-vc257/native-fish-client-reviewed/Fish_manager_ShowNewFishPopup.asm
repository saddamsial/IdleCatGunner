02c5ea14  str x30,[sp, #-0x20]!
02c5ea18  stp x20,x19,[sp, #0x10]
02c5ea1c  mov x20,x0
02c5ea20  ldr x0,[x0, #0x40]
02c5ea24  cbz x0,0x02c5ea7c
02c5ea28  mov w19,w1
02c5ea2c  mov x1,xzr
02c5ea30  bl 0x057dc1c8
02c5ea34  cbz x0,0x02c5ea7c
02c5ea38  mov x1,xzr
02c5ea3c  bl 0x057e00b4
02c5ea40  tbz w0,#0x0,0x02c5ea64
02c5ea44  ldr x0,[x20, #0x40]
02c5ea48  cbz x0,0x02c5ea7c
02c5ea4c  mov x1,xzr
02c5ea50  bl 0x057dc1c8
02c5ea54  cbz x0,0x02c5ea7c
02c5ea58  mov w1,wzr
02c5ea5c  mov x2,xzr
02c5ea60  bl 0x057dff3c
02c5ea64  ldr x0,[x20, #0x40]
02c5ea68  cbz x0,0x02c5ea7c
02c5ea6c  mov w1,w19
02c5ea70  ldp x20,x19,[sp, #0x10]
02c5ea74  ldr x30,[sp], #0x20
02c5ea78  b 0x02c5f1b0
02c5ea7c  bl 0x029f5cfc
