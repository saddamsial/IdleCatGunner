02c5db28  str x30,[sp, #-0x30]!
02c5db2c  stp x22,x21,[sp, #0x10]
02c5db30  stp x20,x19,[sp, #0x20]
02c5db34  adrp x20,0x625c000
02c5db38  mov x19,x0
02c5db3c  ldrb w8,[x20, #0x203]
02c5db40  tbnz w8,#0x0,0x02c5db58
02c5db44  adrp x0,0x5e59000
02c5db48  ldr x0,[x0, #0x1c0]
02c5db4c  bl 0x029f5a50
02c5db50  mov w8,#0x1
02c5db54  strb w8,[x20, #0x203]
02c5db58  bl 0x02c5e1e0
02c5db5c  tbnz w0,#0x0,0x02c5db6c
02c5db60  ldrb w8,[x19, #0xb0]
02c5db64  cbz w8,0x02c5db6c
02c5db68  strb wzr,[x19, #0xb0]
02c5db6c  adrp x22,0x5e59000
02c5db70  ldr x22,[x22, #0x1c0]
02c5db74  bl 0x02c5e1e0
02c5db78  tbz w0,#0x0,0x02c5db8c
02c5db7c  ldrb w8,[x19, #0xb0]
02c5db80  cmp w8,#0x0
02c5db84  cset w20,ne
02c5db88  b 0x02c5db90
02c5db8c  mov w20,wzr
02c5db90  ldr x0,[x22]
02c5db94  ldr x21,[x19, #0xb8]
02c5db98  ldr w8,[x0, #0xe4]
02c5db9c  cbnz w8,0x02c5dba4
02c5dba0  bl 0x029f5bd0
02c5dba4  mov x0,x21
02c5dba8  mov x1,xzr
02c5dbac  mov x2,xzr
02c5dbb0  bl 0x057dfa70
02c5dbb4  tbz w0,#0x0,0x02c5dbdc
02c5dbb8  ldr x0,[x19, #0xb8]
02c5dbbc  cbz w20,0x02c5dbd0
02c5dbc0  cbz x0,0x02c5dcb8
02c5dbc4  mov x1,xzr
02c5dbc8  bl 0x02c2738c
02c5dbcc  b 0x02c5dbdc
02c5dbd0  cbz x0,0x02c5dcb8
02c5dbd4  mov x1,xzr
02c5dbd8  bl 0x02c273c4
02c5dbdc  ldr x0,[x22]
02c5dbe0  ldr x21,[x19, #0xc0]
02c5dbe4  ldr w8,[x0, #0xe4]
02c5dbe8  cbnz w8,0x02c5dbf0
02c5dbec  bl 0x029f5bd0
02c5dbf0  mov x0,x21
02c5dbf4  mov x1,xzr
02c5dbf8  mov x2,xzr
02c5dbfc  bl 0x057dfa70
02c5dc00  tbz w0,#0x0,0x02c5dc18
02c5dc04  ldr x0,[x19, #0xc0]
02c5dc08  cbz x0,0x02c5dcb8
02c5dc0c  mov w1,w20
02c5dc10  mov x2,xzr
02c5dc14  bl 0x057dff3c
02c5dc18  ldr x0,[x22]
02c5dc1c  ldr x21,[x19, #0xc8]
02c5dc20  ldr w8,[x0, #0xe4]
02c5dc24  cbnz w8,0x02c5dc2c
02c5dc28  bl 0x029f5bd0
02c5dc2c  mov x0,x21
02c5dc30  mov x1,xzr
02c5dc34  mov x2,xzr
02c5dc38  bl 0x057dfa70
02c5dc3c  tbz w0,#0x0,0x02c5dc54
02c5dc40  ldr x0,[x19, #0xc8]
02c5dc44  cbz x0,0x02c5dcb8
02c5dc48  eor w1,w20,#0x1
02c5dc4c  mov x2,xzr
02c5dc50  bl 0x057dff3c
02c5dc54  ldr x0,[x22]
02c5dc58  ldr x20,[x19, #0xd0]
02c5dc5c  ldr w8,[x0, #0xe4]
02c5dc60  cbnz w8,0x02c5dc68
02c5dc64  bl 0x029f5bd0
02c5dc68  mov x0,x20
02c5dc6c  mov x1,xzr
02c5dc70  mov x2,xzr
02c5dc74  bl 0x057dfa70
02c5dc78  tbz w0,#0x0,0x02c5dca8
02c5dc7c  ldr x19,[x19, #0xd0]
02c5dc80  mov x0,xzr
02c5dc84  bl 0x02ca7008
02c5dc88  cbz x19,0x02c5dcb8
02c5dc8c  and w1,w0,#0x1
02c5dc90  mov x0,x19
02c5dc94  mov x2,xzr
02c5dc98  ldp x20,x19,[sp, #0x20]
02c5dc9c  ldp x22,x21,[sp, #0x10]
02c5dca0  ldr x30,[sp], #0x30
02c5dca4  b 0x057dff3c
02c5dca8  ldp x20,x19,[sp, #0x20]
02c5dcac  ldp x22,x21,[sp, #0x10]
02c5dcb0  ldr x30,[sp], #0x30
02c5dcb4  ret
02c5dcb8  bl 0x029f5cfc
