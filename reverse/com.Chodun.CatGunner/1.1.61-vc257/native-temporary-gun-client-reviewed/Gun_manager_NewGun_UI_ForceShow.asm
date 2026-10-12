02c69e40  stp x30,x21,[sp, #-0x20]!
02c69e44  stp x20,x19,[sp, #0x10]
02c69e48  adrp x21,0x625c000
02c69e4c  mov w19,w1
02c69e50  mov x20,x0
02c69e54  ldrb w8,[x21, #0x271]
02c69e58  tbnz w8,#0x0,0x02c69e88
02c69e5c  adrp x0,0x5e62000
02c69e60  ldr x0,[x0, #0x660]
02c69e64  bl 0x029f5a50
02c69e68  adrp x0,0x5e59000
02c69e6c  ldr x0,[x0, #0x1c0]
02c69e70  bl 0x029f5a50
02c69e74  adrp x0,0x5e63000
02c69e78  ldr x0,[x0, #0x828]
02c69e7c  bl 0x029f5a50
02c69e80  mov w8,#0x1
02c69e84  strb w8,[x21, #0x271]
02c69e88  ldr x8,[x20, #0x30]
02c69e8c  cbz x8,0x02c69f48
02c69e90  ldr w9,[x8, #0x18]
02c69e94  cmp w9,w19
02c69e98  b.ls 0x02c69f4c
02c69e9c  add x8,x8,w19, SXTW 
02c69ea0  ldrb w9,[x8, #0x20]!
02c69ea4  cbnz w9,0x02c69f2c
02c69ea8  mov w9,#0x1
02c69eac  cmp w19,#0xf
02c69eb0  strb w9,[x8]
02c69eb4  b.lt 0x02c69f2c
02c69eb8  adrp x21,0x5e62000
02c69ebc  ldr x21,[x21, #0x660]
02c69ec0  ldr x0,[x21]
02c69ec4  ldr w8,[x0, #0xe4]
02c69ec8  cbnz w8,0x02c69ed4
02c69ecc  bl 0x029f5bd0
02c69ed0  ldr x0,[x21]
02c69ed4  adrp x8,0x5e59000
02c69ed8  ldr x8,[x8, #0x1c0]
02c69edc  ldr x9,[x0, #0xb8]
02c69ee0  ldr x8,[x8]
02c69ee4  ldr x21,[x9]
02c69ee8  ldr w10,[x8, #0xe4]
02c69eec  cbnz w10,0x02c69ef8
02c69ef0  mov x0,x8
02c69ef4  bl 0x029f5bd0
02c69ef8  mov x0,x21
02c69efc  mov x1,xzr
02c69f00  mov x2,xzr
02c69f04  bl 0x057dfa70
02c69f08  tbz w0,#0x0,0x02c69f2c
02c69f0c  adrp x8,0x5e63000
02c69f10  ldr x8,[x8, #0x828]
02c69f14  ldr x8,[x8]
02c69f18  ldr x8,[x8, #0xb8]
02c69f1c  ldr x0,[x8]
02c69f20  cbz x0,0x02c69f48
02c69f24  mov x1,xzr
02c69f28  bl 0x02ca6f08
02c69f2c  ldr x0,[x20, #0xa8]
02c69f30  cbz x0,0x02c69f48
02c69f34  mov w1,w19
02c69f38  ldp x20,x19,[sp, #0x10]
02c69f3c  mov x2,xzr
02c69f40  ldp x30,x21,[sp], #0x20
02c69f44  b 0x02c7a184
02c69f48  bl 0x029f5cfc
02c69f4c  bl 0x029f5d04
