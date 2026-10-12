02ca7100  stp x30,x21,[sp, #-0x20]!
02ca7104  stp x20,x19,[sp, #0x10]
02ca7108  adrp x21,0x625c000
02ca710c  mov x20,x1
02ca7110  mov x19,x0
02ca7114  ldrb w8,[x21, #0x4dc]
02ca7118  tbnz w8,#0x0,0x02ca7130
02ca711c  adrp x0,0x5e5e000
02ca7120  ldr x0,[x0, #0xb8]
02ca7124  bl 0x029f5a50
02ca7128  mov w8,#0x1
02ca712c  strb w8,[x21, #0x4dc]
02ca7130  mov x21,x19
02ca7134  mov x1,x20
02ca7138  str x20,[x21, #0x20]!
02ca713c  mov x0,x21
02ca7140  bl 0x029f59f4
02ca7144  ldr x0,[x21, #0x10]
02ca7148  cbz x0,0x02ca71a4
02ca714c  adrp x20,0x5e5e000
02ca7150  mov w1,#0x1
02ca7154  mov x2,xzr
02ca7158  ldr x20,[x20, #0xb8]
02ca715c  bl 0x057dff3c
02ca7160  mov x0,x19
02ca7164  mov w1,#0x1
02ca7168  bl 0x02ca71a8
02ca716c  ldr x0,[x20]
02ca7170  ldr w8,[x0, #0xe4]
02ca7174  cbnz w8,0x02ca7180
02ca7178  bl 0x029f5bd0
02ca717c  ldr x0,[x20]
02ca7180  ldr x8,[x0, #0xb8]
02ca7184  ldr x8,[x8]
02ca7188  cbz x8,0x02ca71a4
02ca718c  ldr x0,[x8, #0x20]
02ca7190  cbz x0,0x02ca71a4
02ca7194  ldp x20,x19,[sp, #0x10]
02ca7198  mov x1,xzr
02ca719c  ldp x30,x21,[sp], #0x20
02ca71a0  b 0x02c921ac
02ca71a4  bl 0x029f5cfc
