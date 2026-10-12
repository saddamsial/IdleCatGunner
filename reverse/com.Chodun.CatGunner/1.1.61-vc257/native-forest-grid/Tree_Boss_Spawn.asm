02cabe50  sub sp,sp,#0x60
02cabe54  str x30,[sp, #0x40]
02cabe58  stp x20,x19,[sp, #0x50]
02cabe5c  mov x20,x0
02cabe60  ldr x0,[x0, #0x20]
02cabe64  cbz x0,0x02cabeb0
02cabe68  ldp q0,q1,[x1]
02cabe6c  mov x19,x3
02cabe70  add x1,sp,#0x20
02cabe74  mov x3,xzr
02cabe78  stp q0,q1,[sp, #0x20]
02cabe7c  ldp q0,q2,[x2]
02cabe80  mov x2,sp
02cabe84  stp q0,q2,[sp]
02cabe88  bl 0x02c5c998
02cabe8c  ldr x0,[x20, #0x28]
02cabe90  cbz x0,0x02cabeb0
02cabe94  mov x1,x19
02cabe98  mov x2,xzr
02cabe9c  bl 0x0578eb10
02cabea0  ldp x20,x19,[sp, #0x50]
02cabea4  ldr x30,[sp, #0x40]
02cabea8  add sp,sp,#0x60
02cabeac  ret
02cabeb0  bl 0x029f5cfc
