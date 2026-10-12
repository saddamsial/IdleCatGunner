02ca1270  stp x30,x21,[sp, #-0x20]!
02ca1274  stp x20,x19,[sp, #0x10]
02ca1278  adrp x21,0x625c000
02ca127c  mov w20,w1
02ca1280  mov x19,x0
02ca1284  ldrb w8,[x21, #0x483]
02ca1288  tbnz w8,#0x0,0x02ca12a0
02ca128c  adrp x0,0x5e5e000
02ca1290  ldr x0,[x0, #0x3e0]
02ca1294  bl 0x029f5a50
02ca1298  mov w8,#0x1
02ca129c  strb w8,[x21, #0x483]
02ca12a0  cmp w20,#0x1
02ca12a4  b.lt 0x02ca132c
02ca12a8  ldr w8,[x19, #0x20]
02ca12ac  cmp w8,#0x3
02ca12b0  b.lt 0x02ca12c8
02ca12b4  ldr w21,[x19, #0x28]
02ca12b8  mov x0,x19
02ca12bc  bl 0x02ca1040
02ca12c0  cmp w21,w0
02ca12c4  b.ge 0x02ca132c
02ca12c8  ldr w21,[x19, #0x24]
02ca12cc  mov x0,x19
02ca12d0  bl 0x02ca0fa8
02ca12d4  add w8,w21,w20
02ca12d8  cmp w8,w0
02ca12dc  csel w8,w8,w0,lt
02ca12e0  cmp w8,w21
02ca12e4  str w8,[x19, #0x24]
02ca12e8  b.eq 0x02ca132c
02ca12ec  adrp x19,0x5e5e000
02ca12f0  ldr x19,[x19, #0x3e0]
02ca12f4  ldr x0,[x19]
02ca12f8  ldr w8,[x0, #0xe4]
02ca12fc  cbnz w8,0x02ca1308
02ca1300  bl 0x029f5bd0
02ca1304  ldr x0,[x19]
02ca1308  ldr x8,[x0, #0xb8]
02ca130c  ldr x8,[x8, #0x18]
02ca1310  cbz x8,0x02ca132c
02ca1314  ldp x20,x19,[sp, #0x10]
02ca1318  ldr x0,[x8, #0x40]
02ca131c  ldr x1,[x8, #0x28]
02ca1320  ldr x2,[x8, #0x18]
02ca1324  ldp x30,x21,[sp], #0x20
02ca1328  br x2
02ca132c  ldp x20,x19,[sp, #0x10]
02ca1330  ldp x30,x21,[sp], #0x20
02ca1334  ret
