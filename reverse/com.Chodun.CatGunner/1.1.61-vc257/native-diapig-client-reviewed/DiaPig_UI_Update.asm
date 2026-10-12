02c8db08  sub sp,sp,#0x50
02c8db0c  str x30,[sp, #0x10]
02c8db10  stp x24,x23,[sp, #0x20]
02c8db14  stp x22,x21,[sp, #0x30]
02c8db18  stp x20,x19,[sp, #0x40]
02c8db1c  adrp x20,0x625c000
02c8db20  mov x19,x0
02c8db24  ldrb w8,[x20, #0x3c2]
02c8db28  tbnz w8,#0x0,0x02c8db64
02c8db2c  adrp x0,0x5e62000
02c8db30  ldr x0,[x0, #0x668]
02c8db34  bl 0x029f5a50
02c8db38  adrp x0,0x5e63000
02c8db3c  ldr x0,[x0, #0xf50]
02c8db40  bl 0x029f5a50
02c8db44  adrp x0,0x5e63000
02c8db48  ldr x0,[x0, #0x80]
02c8db4c  bl 0x029f5a50
02c8db50  adrp x0,0x5e63000
02c8db54  ldr x0,[x0, #0xf70]
02c8db58  bl 0x029f5a50
02c8db5c  mov w8,#0x1
02c8db60  strb w8,[x20, #0x3c2]
02c8db64  ldrb w8,[x19, #0x58]
02c8db68  str wzr,[sp, #0x1c]
02c8db6c  cbz w8,0x02c8dc98
02c8db70  adrp x22,0x5e62000
02c8db74  ldr x22,[x22, #0x668]
02c8db78  ldr x8,[x22]
02c8db7c  ldr x8,[x8, #0xb8]
02c8db80  ldr x8,[x8]
02c8db84  cbz x8,0x02c8dcb0
02c8db88  adrp x23,0x5e58000
02c8db8c  add x1,sp,#0x18
02c8db90  ldr x23,[x23, #0xa10]
02c8db94  ldr w8,[x8, #0x20]
02c8db98  ldr x20,[x19, #0x48]
02c8db9c  ldr x0,[x23, #0x48]
02c8dba0  str w8,[sp, #0x18]
02c8dba4  bl 0x029f5bd8
02c8dba8  ldr x8,[x22]
02c8dbac  ldr x8,[x8, #0xb8]
02c8dbb0  ldr x8,[x8]
02c8dbb4  cbz x8,0x02c8dcb0
02c8dbb8  adrp x24,0x5e63000
02c8dbbc  mov x21,x0
02c8dbc0  ldr w8,[x8, #0x24]
02c8dbc4  ldr x24,[x24, #0xf50]
02c8dbc8  ldr x0,[x23, #0x48]
02c8dbcc  add x1,sp,#0xc
02c8dbd0  str w8,[sp, #0xc]
02c8dbd4  bl 0x029f5bd8
02c8dbd8  ldr x8,[x24]
02c8dbdc  mov x2,x0
02c8dbe0  mov x1,x21
02c8dbe4  mov x3,xzr
02c8dbe8  mov x0,x8
02c8dbec  bl 0x046c1d14
02c8dbf0  cbz x20,0x02c8dcb0
02c8dbf4  ldr x8,[x20]
02c8dbf8  mov x1,x0
02c8dbfc  mov x0,x20
02c8dc00  ldr x9,[x8, #0x558]
02c8dc04  ldr x2,[x8, #0x560]
02c8dc08  blr x9
02c8dc0c  ldr x8,[x22]
02c8dc10  ldr x8,[x8, #0xb8]
02c8dc14  ldr x0,[x8]
02c8dc18  cbz x0,0x02c8dcb0
02c8dc1c  ldp w8,w9,[x0, #0x20]
02c8dc20  cmp w8,w9
02c8dc24  b.ge 0x02c8dc74
02c8dc28  bl 0x02c8d5f4
02c8dc2c  ldr x19,[x19, #0x40]
02c8dc30  str w0,[sp, #0x1c]
02c8dc34  add x0,sp,#0x1c
02c8dc38  mov x1,xzr
02c8dc3c  bl 0x0484e6a4
02c8dc40  adrp x8,0x5e63000
02c8dc44  mov x2,xzr
02c8dc48  ldr x8,[x8, #0xf70]
02c8dc4c  ldr x1,[x8]
02c8dc50  bl 0x046b2d44
02c8dc54  cbz x19,0x02c8dcb0
02c8dc58  ldr x8,[x19]
02c8dc5c  mov x1,x0
02c8dc60  mov x0,x19
02c8dc64  ldr x9,[x8, #0x558]
02c8dc68  ldr x2,[x8, #0x560]
02c8dc6c  blr x9
02c8dc70  b 0x02c8dc98
02c8dc74  ldr x0,[x19, #0x40]
02c8dc78  cbz x0,0x02c8dcb0
02c8dc7c  adrp x8,0x5e63000
02c8dc80  ldr x8,[x8, #0x80]
02c8dc84  ldr x9,[x0]
02c8dc88  ldr x1,[x8]
02c8dc8c  ldr x8,[x9, #0x558]
02c8dc90  ldr x2,[x9, #0x560]
02c8dc94  blr x8
02c8dc98  ldp x20,x19,[sp, #0x40]
02c8dc9c  ldr x30,[sp, #0x10]
02c8dca0  ldp x22,x21,[sp, #0x30]
02c8dca4  ldp x24,x23,[sp, #0x20]
02c8dca8  add sp,sp,#0x50
02c8dcac  ret
02c8dcb0  bl 0x029f5cfc
