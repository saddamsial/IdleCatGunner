02c5cdbc  sub sp,sp,#0x70
02c5cdc0  str d10,[sp, #0x40]
02c5cdc4  stp d9,d8,[sp, #0x48]
02c5cdc8  str x30,[sp, #0x58]
02c5cdcc  stp x20,x19,[sp, #0x60]
02c5cdd0  adrp x20,0x625c000
02c5cdd4  mov x19,x0
02c5cdd8  ldrb w8,[x20, #0x1f2]
02c5cddc  tbnz w8,#0x0,0x02c5cdf4
02c5cde0  adrp x0,0x5e5d000
02c5cde4  ldr x0,[x0, #0x338]
02c5cde8  bl 0x029f5a50
02c5cdec  mov w8,#0x1
02c5cdf0  strb w8,[x20, #0x1f2]
02c5cdf4  ldrb w8,[x19, #0x24]
02c5cdf8  cbnz w8,0x02c5ce9c
02c5cdfc  adrp x20,0x5e5d000
02c5ce00  ldr x20,[x20, #0x338]
02c5ce04  ldr x0,[x20]
02c5ce08  ldr w8,[x0, #0xe4]
02c5ce0c  cbnz w8,0x02c5ce18
02c5ce10  bl 0x029f5bd0
02c5ce14  ldr x0,[x20]
02c5ce18  ldr x8,[x0, #0xb8]
02c5ce1c  ldrb w8,[x8]
02c5ce20  cbz w8,0x02c5ce9c
02c5ce24  ldrb w8,[x19, #0x98]
02c5ce28  mov w9,#0x1
02c5ce2c  strb w9,[x19, #0x24]
02c5ce30  cbnz w8,0x02c5ce94
02c5ce34  ldur q0,[x19, #0x68]
02c5ce38  ldur q1,[x19, #0x78]
02c5ce3c  mov x0,x19
02c5ce40  mov x1,xzr
02c5ce44  stp q0,q1,[sp, #0x20]
02c5ce48  bl 0x057dc0f8
02c5ce4c  cbz x0,0x02c5ceb4
02c5ce50  mov x1,xzr
02c5ce54  bl 0x057eed98
02c5ce58  fmov s8,s0
02c5ce5c  fmov s9,s1
02c5ce60  ldr x0,[x20]
02c5ce64  fmov s10,s2
02c5ce68  ldr w8,[x0, #0xe4]
02c5ce6c  cbnz w8,0x02c5ce74
02c5ce70  bl 0x029f5bd0
02c5ce74  ldp q0,q1,[sp, #0x20]
02c5ce78  fmov s2,s10
02c5ce7c  mov x0,sp
02c5ce80  mov x1,xzr
02c5ce84  stp q0,q1,[sp]
02c5ce88  fmov s0,s8
02c5ce8c  fmov s1,s9
02c5ce90  bl 0x02b7e82c
02c5ce94  mov x0,x19
02c5ce98  bl 0x02c5ceb8
02c5ce9c  ldp x20,x19,[sp, #0x60]
02c5cea0  ldr x30,[sp, #0x58]
02c5cea4  ldp d9,d8,[sp, #0x48]
02c5cea8  ldr d10,[sp, #0x40]
02c5ceac  add sp,sp,#0x70
02c5ceb0  ret
02c5ceb4  bl 0x029f5cfc
