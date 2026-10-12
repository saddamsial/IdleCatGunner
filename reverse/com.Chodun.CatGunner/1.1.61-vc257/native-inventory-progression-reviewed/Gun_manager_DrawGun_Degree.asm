02c68e50  str x30,[sp, #-0x30]!
02c68e54  stp x22,x21,[sp, #0x10]
02c68e58  stp x20,x19,[sp, #0x20]
02c68e5c  adrp x22,0x625c000
02c68e60  mov w20,w2
02c68e64  mov w21,w1
02c68e68  ldrb w8,[x22, #0x266]
02c68e6c  mov x19,x0
02c68e70  tbnz w8,#0x0,0x02c68e94
02c68e74  adrp x0,0x5e63000
02c68e78  ldr x0,[x0, #0xa70]
02c68e7c  bl 0x029f5a50
02c68e80  adrp x0,0x5e63000
02c68e84  ldr x0,[x0, #0xa78]
02c68e88  bl 0x029f5a50
02c68e8c  mov w8,#0x1
02c68e90  strb w8,[x22, #0x266]
02c68e94  cmp w21,#0xc
02c68e98  b.hi 0x02c68f00
02c68e9c  cmp w20,#0x4
02c68ea0  b.hi 0x02c68f00
02c68ea4  mov x0,x19
02c68ea8  bl 0x02c67de0
02c68eac  cmn w0,#0x1
02c68eb0  b.eq 0x02c68f10
02c68eb4  ldr x8,[x19, #0x40]
02c68eb8  cbz x8,0x02c68f34
02c68ebc  ldr w9,[x8, #0x18]
02c68ec0  mov w1,w0
02c68ec4  cmp w0,w9
02c68ec8  b.cs 0x02c68f38
02c68ecc  add w9,w21,w21, LSL #0x2
02c68ed0  add x8,x8,w1, SXTW  #0x2
02c68ed4  mov x0,x19
02c68ed8  mov w2,wzr
02c68edc  add w9,w9,w20
02c68ee0  str w9,[x8, #0x20]
02c68ee4  bl 0x02c6802c
02c68ee8  mov x0,x19
02c68eec  bl 0x02c6841c
02c68ef0  adrp x8,0x5e63000
02c68ef4  ldr x8,[x8, #0xa70]
02c68ef8  ldr x0,[x8]
02c68efc  b 0x02c68f20
02c68f00  ldp x20,x19,[sp, #0x20]
02c68f04  ldp x22,x21,[sp, #0x10]
02c68f08  ldr x30,[sp], #0x30
02c68f0c  ret
02c68f10  adrp x8,0x5e63000
02c68f14  ldr x8,[x8, #0xa78]
02c68f18  ldr x0,[x8]
02c68f1c  bl 0x02c68dbc
02c68f20  ldp x20,x19,[sp, #0x20]
02c68f24  mov x1,xzr
02c68f28  ldp x22,x21,[sp, #0x10]
02c68f2c  ldr x30,[sp], #0x30
02c68f30  b 0x02c1dd54
02c68f34  bl 0x029f5cfc
02c68f38  bl 0x029f5d04
