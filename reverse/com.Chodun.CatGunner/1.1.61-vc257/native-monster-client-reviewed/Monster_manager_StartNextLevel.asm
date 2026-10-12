02c4daf0  sub sp,sp,#0xb0
02c4daf4  stp x30,xzr,[sp, #0x90]
02c4daf8  stp x20,x19,[sp, #0xa0]
02c4dafc  mov x20,x0
02c4db00  mov x19,x0
02c4db04  ldr x1,[x20, #0xd8]!
02c4db08  cbz x1,0x02c4db18
02c4db0c  mov x0,x19
02c4db10  mov x2,xzr
02c4db14  bl 0x057e2250
02c4db18  ldr w1,[x19, #0x20]
02c4db1c  add x8,sp,#0x70
02c4db20  mov x0,x19
02c4db24  str xzr,[x19, #0xd0]
02c4db28  bl 0x02c4dbf0
02c4db2c  ldp q0,q1,[sp, #0x70]
02c4db30  add x0,x19,#0x60
02c4db34  mov x1,xzr
02c4db38  stp q0,q1,[x19, #0x60]
02c4db3c  bl 0x029f59f4
02c4db40  ldr x0,[x19, #0xb0]
02c4db44  cbz x0,0x02c4dbec
02c4db48  ldp w1,w2,[x19, #0x20]
02c4db4c  bl 0x02c4d230
02c4db50  ldr x0,[x19, #0xb0]
02c4db54  cbz x0,0x02c4dbec
02c4db58  movi d0,#0x0
02c4db5c  bl 0x02c4d3e8
02c4db60  ldr x0,[x19, #0xf8]
02c4db64  cbz x0,0x02c4dbec
02c4db68  mov x1,xzr
02c4db6c  bl 0x05861c2c
02c4db70  str x0,[sp, #0x98]
02c4db74  mov x0,x19
02c4db78  bl 0x02c4dd20
02c4db7c  add x8,sp,#0x38
02c4db80  mov x0,xzr
02c4db84  bl 0x058627ec
02c4db88  ldur q0,[sp, #0x38]
02c4db8c  ldur q1,[sp, #0x48]
02c4db90  add x0,sp,#0x98
02c4db94  ldur q2,[sp, #0x58]
02c4db98  ldr x8,[sp, #0x68]
02c4db9c  mov x1,sp
02c4dba0  mov x2,xzr
02c4dba4  stp q0,q1,[sp]
02c4dba8  str q2,[sp, #0x20]
02c4dbac  str x8,[sp, #0x30]
02c4dbb0  bl 0x05861cf4
02c4dbb4  mov x0,x19
02c4dbb8  bl 0x02c4dd78
02c4dbbc  mov x1,x0
02c4dbc0  str x0,[x19, #0xd8]
02c4dbc4  mov x0,x20
02c4dbc8  bl 0x029f59f4
02c4dbcc  ldr x1,[x19, #0xd8]
02c4dbd0  mov x0,x19
02c4dbd4  mov x2,xzr
02c4dbd8  bl 0x057e2120
02c4dbdc  ldp x20,x19,[sp, #0xa0]
02c4dbe0  ldr x30,[sp, #0x90]
02c4dbe4  add sp,sp,#0xb0
02c4dbe8  ret
02c4dbec  bl 0x029f5cfc
