02ca11fc  stp x30,x21,[sp, #-0x20]!
02ca1200  stp x20,x19,[sp, #0x10]
02ca1204  adrp x21,0x625c000
02ca1208  adrp x20,0x5e5e000
02ca120c  mov x19,x0
02ca1210  ldrb w8,[x21, #0x481]
02ca1214  ldr x20,[x20, #0x3e0]
02ca1218  tbnz w8,#0x0,0x02ca1230
02ca121c  adrp x0,0x5e5e000
02ca1220  ldr x0,[x0, #0x3e0]
02ca1224  bl 0x029f5a50
02ca1228  mov w8,#0x1
02ca122c  strb w8,[x21, #0x481]
02ca1230  ldr x0,[x20]
02ca1234  ldr w19,[x19, #0x20]
02ca1238  ldr w8,[x0, #0xe4]
02ca123c  cbnz w8,0x02ca1244
02ca1240  bl 0x029f5bd0
02ca1244  mov w0,w19
02ca1248  ldp x20,x19,[sp, #0x10]
02ca124c  ldp x30,x21,[sp], #0x20
02ca1250  b 0x02c9fa6c
