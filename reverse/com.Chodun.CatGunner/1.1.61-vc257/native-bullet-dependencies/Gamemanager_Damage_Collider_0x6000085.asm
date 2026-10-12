02b7fba8  sub sp,sp,#0x70
02b7fbac  str d10,[sp, #0x20]
02b7fbb0  stp d9,d8,[sp, #0x28]
02b7fbb4  str x30,[sp, #0x38]
02b7fbb8  stp x24,x23,[sp, #0x40]
02b7fbbc  stp x22,x21,[sp, #0x50]
02b7fbc0  stp x20,x19,[sp, #0x60]
02b7fbc4  fmov s8,s2
02b7fbc8  fmov s9,s1
02b7fbcc  adrp x24,0x625b000
02b7fbd0  fmov s10,s0
02b7fbd4  adrp x23,0x5e5d000
02b7fbd8  ldrb w8,[x24, #0x8c6]
02b7fbdc  ldr x23,[x23, #0x338]
02b7fbe0  mov w20,w3
02b7fbe4  mov x19,x2
02b7fbe8  mov x22,x1
02b7fbec  mov x21,x0
02b7fbf0  tbnz w8,#0x0,0x02b7fc08
02b7fbf4  adrp x0,0x5e5d000
02b7fbf8  ldr x0,[x0, #0x338]
02b7fbfc  bl 0x029f5a50
02b7fc00  mov w8,#0x1
02b7fc04  strb w8,[x24, #0x8c6]
02b7fc08  ldr x0,[x23]
02b7fc0c  ldp q0,q1,[x22]
02b7fc10  ldr w8,[x0, #0xe4]
02b7fc14  stp q0,q1,[sp]
02b7fc18  cbnz w8,0x02b7fc20
02b7fc1c  bl 0x029f5bd0
02b7fc20  mov x1,sp
02b7fc24  mov x0,x21
02b7fc28  bl 0x02b7ff50
02b7fc2c  mov w8,w0
02b7fc30  ldr x0,[x23]
02b7fc34  and w10,w8,#0x1
02b7fc38  ldr x9,[x0, #0xb8]
02b7fc3c  strb w10,[x9, #0x170]
02b7fc40  tbz w8,#0x0,0x02b7fc84
02b7fc44  ldr w8,[x0, #0xe4]
02b7fc48  tbz w20,#0x0,0x02b7fca4
02b7fc4c  cbnz w8,0x02b7fc54
02b7fc50  bl 0x029f5bd0
02b7fc54  mov x0,x19
02b7fc58  fmov s1,s9
02b7fc5c  fmov s2,s8
02b7fc60  ldp x20,x19,[sp, #0x60]
02b7fc64  fmov s0,s10
02b7fc68  ldp x22,x21,[sp, #0x50]
02b7fc6c  ldr x30,[sp, #0x38]
02b7fc70  ldp x24,x23,[sp, #0x40]
02b7fc74  ldr d10,[sp, #0x20]
02b7fc78  ldp d9,d8,[sp, #0x28]
02b7fc7c  add sp,sp,#0x70
02b7fc80  b 0x02b8020c
02b7fc84  ldp x20,x19,[sp, #0x60]
02b7fc88  ldr x30,[sp, #0x38]
02b7fc8c  ldp x22,x21,[sp, #0x50]
02b7fc90  ldr d10,[sp, #0x20]
02b7fc94  ldp x24,x23,[sp, #0x40]
02b7fc98  ldp d9,d8,[sp, #0x28]
02b7fc9c  add sp,sp,#0x70
02b7fca0  ret
02b7fca4  cbnz w8,0x02b7fcac
02b7fca8  bl 0x029f5bd0
02b7fcac  mov x0,x19
02b7fcb0  fmov s1,s9
02b7fcb4  fmov s2,s8
02b7fcb8  ldp x20,x19,[sp, #0x60]
02b7fcbc  fmov s0,s10
02b7fcc0  ldp x22,x21,[sp, #0x50]
02b7fcc4  ldr x30,[sp, #0x38]
02b7fcc8  ldp x24,x23,[sp, #0x40]
02b7fccc  ldr d10,[sp, #0x20]
02b7fcd0  ldp d9,d8,[sp, #0x28]
02b7fcd4  add sp,sp,#0x70
02b7fcd8  b 0x02b800f4
