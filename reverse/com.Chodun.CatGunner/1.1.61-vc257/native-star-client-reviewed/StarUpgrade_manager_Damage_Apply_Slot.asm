02c6db38  sub sp,sp,#0x90
02c6db3c  stp x30,x23,[sp, #0x60]
02c6db40  stp x22,x21,[sp, #0x70]
02c6db44  stp x20,x19,[sp, #0x80]
02c6db48  adrp x22,0x625c000
02c6db4c  adrp x23,0x5e5e000
02c6db50  mov w20,w1
02c6db54  ldrb w9,[x22, #0x2ac]
02c6db58  ldr x23,[x23, #0x58]
02c6db5c  mov x21,x0
02c6db60  mov x19,x8
02c6db64  tbnz w9,#0x0,0x02c6db88
02c6db68  adrp x0,0x5e59000
02c6db6c  ldr x0,[x0, #0x1c0]
02c6db70  bl 0x029f5a50
02c6db74  adrp x0,0x5e5e000
02c6db78  ldr x0,[x0, #0x58]
02c6db7c  bl 0x029f5a50
02c6db80  mov w8,#0x1
02c6db84  strb w8,[x22, #0x2ac]
02c6db88  ldr x0,[x23]
02c6db8c  adrp x22,0x5e59000
02c6db90  ldr w8,[x0, #0xe4]
02c6db94  ldr x22,[x22, #0x1c0]
02c6db98  cbnz w8,0x02c6dba4
02c6db9c  bl 0x029f5bd0
02c6dba0  ldr x0,[x23]
02c6dba4  ldr x8,[x22]
02c6dba8  ldr x9,[x0, #0xb8]
02c6dbac  ldr w10,[x8, #0xe4]
02c6dbb0  ldr x22,[x9]
02c6dbb4  cbnz w10,0x02c6dbc0
02c6dbb8  mov x0,x8
02c6dbbc  bl 0x029f5bd0
02c6dbc0  mov x0,x22
02c6dbc4  mov x1,xzr
02c6dbc8  mov x2,xzr
02c6dbcc  bl 0x057e14b4
02c6dbd0  tbz w0,#0x0,0x02c6dbdc
02c6dbd4  ldp q0,q1,[x21]
02c6dbd8  b 0x02c6dc48
02c6dbdc  ldr x0,[x23]
02c6dbe0  ldp q0,q1,[x21]
02c6dbe4  ldr w8,[x0, #0xe4]
02c6dbe8  stp q0,q1,[sp, #0x40]
02c6dbec  cbnz w8,0x02c6dbf8
02c6dbf0  bl 0x029f5bd0
02c6dbf4  ldr x0,[x23]
02c6dbf8  ldr x8,[x0, #0xb8]
02c6dbfc  ldr x8,[x8]
02c6dc00  cbz x8,0x02c6dc60
02c6dc04  mov w1,wzr
02c6dc08  tbnz w20,#0x1f,0x02c6dc30
02c6dc0c  ldr x8,[x8, #0x30]
02c6dc10  cbz x8,0x02c6dc30
02c6dc14  ldr w9,[x8, #0x18]
02c6dc18  cmp w9,w20
02c6dc1c  b.le 0x02c6dc2c
02c6dc20  add x8,x8,w20, UXTW  #0x2
02c6dc24  ldr w1,[x8, #0x20]
02c6dc28  b 0x02c6dc30
02c6dc2c  mov w1,wzr
02c6dc30  ldp q0,q1,[sp, #0x40]
02c6dc34  add x8,sp,#0x20
02c6dc38  mov x0,sp
02c6dc3c  stp q0,q1,[sp]
02c6dc40  bl 0x02c6da2c
02c6dc44  ldp q0,q1,[sp, #0x20]
02c6dc48  stp q0,q1,[x19]
02c6dc4c  ldp x20,x19,[sp, #0x80]
02c6dc50  ldp x22,x21,[sp, #0x70]
02c6dc54  ldp x30,x23,[sp, #0x60]
02c6dc58  add sp,sp,#0x90
02c6dc5c  ret
02c6dc60  bl 0x029f5cfc
