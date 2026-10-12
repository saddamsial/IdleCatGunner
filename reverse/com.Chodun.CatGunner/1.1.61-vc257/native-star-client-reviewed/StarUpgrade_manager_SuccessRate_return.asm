02c6dd48  str x30,[sp, #-0x30]!
02c6dd4c  stp x22,x21,[sp, #0x10]
02c6dd50  stp x20,x19,[sp, #0x20]
02c6dd54  adrp x21,0x625c000
02c6dd58  mov w19,w1
02c6dd5c  mov x20,x0
02c6dd60  ldrb w8,[x21, #0x2ae]
02c6dd64  tbnz w8,#0x0,0x02c6dd7c
02c6dd68  adrp x0,0x5e5e000
02c6dd6c  ldr x0,[x0, #0x58]
02c6dd70  bl 0x029f5a50
02c6dd74  mov w8,#0x1
02c6dd78  strb w8,[x21, #0x2ae]
02c6dd7c  mov w21,wzr
02c6dd80  tbnz w19,#0x1f,0x02c6ddbc
02c6dd84  ldr x8,[x20, #0x30]
02c6dd88  cbz x8,0x02c6ddbc
02c6dd8c  ldr w9,[x8, #0x18]
02c6dd90  cmp w9,w19
02c6dd94  b.le 0x02c6ddb0
02c6dd98  add x8,x8,w19, UXTW  #0x2
02c6dd9c  ldr w9,[x8, #0x20]
02c6dda0  cmp w9,#0x13
02c6dda4  b.le 0x02c6ddb8
02c6dda8  mov w0,wzr
02c6ddac  b 0x02c6de44
02c6ddb0  mov w21,wzr
02c6ddb4  b 0x02c6ddbc
02c6ddb8  ldr w21,[x8, #0x20]
02c6ddbc  adrp x22,0x5e5e000
02c6ddc0  ldr x22,[x22, #0x58]
02c6ddc4  ldr x0,[x22]
02c6ddc8  ldr w8,[x0, #0xe4]
02c6ddcc  cbnz w8,0x02c6ddd8
02c6ddd0  bl 0x029f5bd0
02c6ddd4  ldr x0,[x22]
02c6ddd8  ldr x8,[x0, #0xb8]
02c6dddc  ldr x8,[x8, #0x10]
02c6dde0  cbz x8,0x02c6de54
02c6dde4  ldr w10,[x8, #0x18]
02c6dde8  sub w9,w10,#0x1
02c6ddec  cmp w21,w9
02c6ddf0  csel w9,w21,w9,lt
02c6ddf4  cmp w21,#0x0
02c6ddf8  csel w9,wzr,w9,lt
02c6ddfc  cmp w9,w10
02c6de00  b.cs 0x02c6de58
02c6de04  add x8,x8,w9, SXTW  #0x2
02c6de08  add w9,w21,#0x1
02c6de0c  cmp w9,#0x12
02c6de10  ldr w0,[x8, #0x20]
02c6de14  b.lt 0x02c6de44
02c6de18  ldr x8,[x20, #0x38]
02c6de1c  cbz x8,0x02c6de54
02c6de20  ldr w9,[x8, #0x18]
02c6de24  cmp w9,w19
02c6de28  b.ls 0x02c6de58
02c6de2c  add x8,x8,w19, SXTW  #0x2
02c6de30  mov w9,#0x5
02c6de34  ldr w8,[x8, #0x20]
02c6de38  add w8,w8,w0
02c6de3c  cmp w8,#0x5
02c6de40  csel w0,w8,w9,lt
02c6de44  ldp x20,x19,[sp, #0x20]
02c6de48  ldp x22,x21,[sp, #0x10]
02c6de4c  ldr x30,[sp], #0x30
02c6de50  ret
02c6de54  bl 0x029f5cfc
02c6de58  bl 0x029f5d04
