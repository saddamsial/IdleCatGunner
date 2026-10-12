02be11f8  sub sp,sp,#0x30
02be11fc  str x30,[sp, #0x10]
02be1200  stp x20,x19,[sp, #0x20]
02be1204  adrp x20,0x625b000
02be1208  adrp x19,0x5e5e000
02be120c  ldrb w8,[x20, #0xc6f]
02be1210  ldr x19,[x19, #0x528]
02be1214  tbnz w8,#0x0,0x02be1238
02be1218  adrp x0,0x5e5e000
02be121c  ldr x0,[x0, #0x528]
02be1220  bl 0x029f5a50
02be1224  adrp x0,0x5e60000
02be1228  ldr x0,[x0, #0xe20]
02be122c  bl 0x029f5a50
02be1230  mov w8,#0x1
02be1234  strb w8,[x20, #0xc6f]
02be1238  ldr x0,[x19]
02be123c  adrp x19,0x5e60000
02be1240  ldr w8,[x0, #0xe4]
02be1244  ldr x19,[x19, #0xe20]
02be1248  cbnz w8,0x02be1250
02be124c  bl 0x029f5bd0
02be1250  ldr x0,[x19]
02be1254  mov w1,#0x1
02be1258  mov w2,wzr
02be125c  mov w3,#0x1
02be1260  mov w4,wzr
02be1264  mov x5,xzr
02be1268  mov x6,xzr
02be126c  mov w7,#0x1
02be1270  str xzr,[sp]
02be1274  bl 0x02bccb00
02be1278  ldp x20,x19,[sp, #0x20]
02be127c  ldr x30,[sp, #0x10]
02be1280  add sp,sp,#0x30
02be1284  ret
