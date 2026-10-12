02be1288  sub sp,sp,#0x30
02be128c  str x30,[sp, #0x10]
02be1290  stp x20,x19,[sp, #0x20]
02be1294  adrp x20,0x625b000
02be1298  adrp x19,0x5e5e000
02be129c  ldrb w8,[x20, #0xc70]
02be12a0  ldr x19,[x19, #0x528]
02be12a4  tbnz w8,#0x0,0x02be12c8
02be12a8  adrp x0,0x5e5e000
02be12ac  ldr x0,[x0, #0x528]
02be12b0  bl 0x029f5a50
02be12b4  adrp x0,0x5e60000
02be12b8  ldr x0,[x0, #0xe28]
02be12bc  bl 0x029f5a50
02be12c0  mov w8,#0x1
02be12c4  strb w8,[x20, #0xc70]
02be12c8  ldr x0,[x19]
02be12cc  adrp x19,0x5e60000
02be12d0  ldr w8,[x0, #0xe4]
02be12d4  ldr x19,[x19, #0xe28]
02be12d8  cbnz w8,0x02be12e0
02be12dc  bl 0x029f5bd0
02be12e0  ldr x0,[x19]
02be12e4  mov w1,#0x1
02be12e8  mov w2,wzr
02be12ec  mov w3,#0x1
02be12f0  mov w4,wzr
02be12f4  mov x5,xzr
02be12f8  mov x6,xzr
02be12fc  mov w7,#0x1
02be1300  str xzr,[sp]
02be1304  bl 0x02bccb00
02be1308  ldp x20,x19,[sp, #0x20]
02be130c  ldr x30,[sp, #0x10]
02be1310  add sp,sp,#0x30
02be1314  ret
