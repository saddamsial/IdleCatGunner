02c5c998  sub sp,sp,#0x50
02c5c99c  stp x30,x23,[sp, #0x20]
02c5c9a0  stp x22,x21,[sp, #0x30]
02c5c9a4  stp x20,x19,[sp, #0x40]
02c5c9a8  adrp x23,0x625c000
02c5c9ac  adrp x22,0x5e59000
02c5c9b0  mov x20,x2
02c5c9b4  ldrb w8,[x23, #0x1ef]
02c5c9b8  ldr x22,[x22, #0x1c0]
02c5c9bc  mov x21,x1
02c5c9c0  mov x19,x0
02c5c9c4  tbnz w8,#0x0,0x02c5c9dc
02c5c9c8  adrp x0,0x5e59000
02c5c9cc  ldr x0,[x0, #0x1c0]
02c5c9d0  bl 0x029f5a50
02c5c9d4  mov w8,#0x1
02c5c9d8  strb w8,[x23, #0x1ef]
02c5c9dc  ldp q0,q1,[x21]
02c5c9e0  add x0,x19,#0x28
02c5c9e4  mov x1,xzr
02c5c9e8  stp q0,q1,[sp]
02c5c9ec  stur q0,[x19, #0x28]
02c5c9f0  stur q1,[x19, #0x38]
02c5c9f4  bl 0x029f59f4
02c5c9f8  ldp q0,q1,[sp]
02c5c9fc  add x0,x19,#0x48
02c5ca00  mov x1,xzr
02c5ca04  stur q0,[x19, #0x48]
02c5ca08  stur q1,[x19, #0x58]
02c5ca0c  bl 0x029f59f4
02c5ca10  ldp q1,q0,[x20]
02c5ca14  add x0,x19,#0x68
02c5ca18  mov x1,xzr
02c5ca1c  stur q0,[x19, #0x78]
02c5ca20  stur q1,[x19, #0x68]
02c5ca24  bl 0x029f59f4
02c5ca28  ldr x0,[x22]
02c5ca2c  ldr x20,[x19, #0x88]
02c5ca30  ldr w8,[x0, #0xe4]
02c5ca34  cbnz w8,0x02c5ca3c
02c5ca38  bl 0x029f5bd0
02c5ca3c  mov x0,x20
02c5ca40  mov x1,xzr
02c5ca44  mov x2,xzr
02c5ca48  bl 0x057dfa70
02c5ca4c  tbz w0,#0x0,0x02c5ca70
02c5ca50  ldr x0,[x19, #0x88]
02c5ca54  cbz x0,0x02c5ca88
02c5ca58  mov x1,xzr
02c5ca5c  bl 0x057dc1c8
02c5ca60  cbz x0,0x02c5ca88
02c5ca64  mov w1,wzr
02c5ca68  mov x2,xzr
02c5ca6c  bl 0x057dff3c
02c5ca70  strb wzr,[x19, #0x24]
02c5ca74  ldp x20,x19,[sp, #0x40]
02c5ca78  ldp x22,x21,[sp, #0x30]
02c5ca7c  ldp x30,x23,[sp, #0x20]
02c5ca80  add sp,sp,#0x50
02c5ca84  ret
02c5ca88  bl 0x029f5cfc
