02c49cf0  str x30,[sp, #-0x30]!
02c49cf4  stp x22,x21,[sp, #0x10]
02c49cf8  stp x20,x19,[sp, #0x20]
02c49cfc  adrp x22,0x625c000
02c49d00  adrp x21,0x5e63000
02c49d04  mov w19,w1
02c49d08  ldrb w8,[x22, #0x121]
02c49d0c  ldr x21,[x21, #0x3c0]
02c49d10  mov x20,x0
02c49d14  tbnz w8,#0x0,0x02c49d2c
02c49d18  adrp x0,0x5e63000
02c49d1c  ldr x0,[x0, #0x3c0]
02c49d20  bl 0x029f5a50
02c49d24  mov w8,#0x1
02c49d28  strb w8,[x22, #0x121]
02c49d2c  scvtf s0,w19
02c49d30  fmov s1,0x41200000
02c49d34  ldr x1,[x21]
02c49d38  ldr x19,[x20, #0x30]
02c49d3c  add x0,sp,#0xc
02c49d40  mov x2,xzr
02c49d44  fdiv s0,s0,s1
02c49d48  str s0,[sp, #0xc]
02c49d4c  bl 0x04863d08
02c49d50  cbz x19,0x02c49d7c
02c49d54  ldr x8,[x19]
02c49d58  mov x1,x0
02c49d5c  mov x0,x19
02c49d60  ldr x9,[x8, #0x558]
02c49d64  ldr x2,[x8, #0x560]
02c49d68  blr x9
02c49d6c  ldp x20,x19,[sp, #0x20]
02c49d70  ldp x22,x21,[sp, #0x10]
02c49d74  ldr x30,[sp], #0x30
02c49d78  ret
02c49d7c  bl 0x029f5cfc
