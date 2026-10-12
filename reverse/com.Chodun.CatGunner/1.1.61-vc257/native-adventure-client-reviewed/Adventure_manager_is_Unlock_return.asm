02c2db58  str x30,[sp, #-0x30]!
02c2db5c  stp x22,x21,[sp, #0x10]
02c2db60  stp x20,x19,[sp, #0x20]
02c2db64  adrp x22,0x625c000
02c2db68  adrp x21,0x5e5d000
02c2db6c  mov w19,w1
02c2db70  ldrb w8,[x22, #0xb]
02c2db74  ldr x21,[x21, #0xd28]
02c2db78  mov x20,x0
02c2db7c  tbnz w8,#0x0,0x02c2db94
02c2db80  adrp x0,0x5e5d000
02c2db84  ldr x0,[x0, #0xd28]
02c2db88  bl 0x029f5a50
02c2db8c  mov w8,#0x1
02c2db90  strb w8,[x22, #0xb]
02c2db94  ldr x0,[x21]
02c2db98  ldr w20,[x20, #0x30]
02c2db9c  ldr w8,[x0, #0xe4]
02c2dba0  cbnz w8,0x02c2dbac
02c2dba4  bl 0x029f5bd0
02c2dba8  ldr x0,[x21]
02c2dbac  ldr x8,[x0, #0xb8]
02c2dbb0  ldr x8,[x8, #0x8]
02c2dbb4  cbz x8,0x02c2dbe4
02c2dbb8  ldr w9,[x8, #0x18]
02c2dbbc  cmp w9,w19
02c2dbc0  b.ls 0x02c2dbe8
02c2dbc4  add x8,x8,w19, SXTW  #0x2
02c2dbc8  ldp x22,x21,[sp, #0x10]
02c2dbcc  ldr w8,[x8, #0x20]
02c2dbd0  cmp w20,w8
02c2dbd4  ldp x20,x19,[sp, #0x20]
02c2dbd8  cset w0,ge
02c2dbdc  ldr x30,[sp], #0x30
02c2dbe0  ret
02c2dbe4  bl 0x029f5cfc
02c2dbe8  bl 0x029f5d04
