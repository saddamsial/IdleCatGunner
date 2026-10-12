02b7fe18  sub sp,sp,#0x70
02b7fe1c  str d10,[sp, #0x20]
02b7fe20  stp d9,d8,[sp, #0x30]
02b7fe24  stp x30,x23,[sp, #0x40]
02b7fe28  stp x22,x21,[sp, #0x50]
02b7fe2c  stp x20,x19,[sp, #0x60]
02b7fe30  fmov s8,s2
02b7fe34  fmov s9,s1
02b7fe38  adrp x23,0x625b000
02b7fe3c  fmov s10,s0
02b7fe40  adrp x22,0x5e5d000
02b7fe44  ldrb w8,[x23, #0x8c7]
02b7fe48  ldr x22,[x22, #0x338]
02b7fe4c  mov w19,w2
02b7fe50  mov x20,x1
02b7fe54  mov x21,x0
02b7fe58  tbnz w8,#0x0,0x02b7fe70
02b7fe5c  adrp x0,0x5e5d000
02b7fe60  ldr x0,[x0, #0x338]
02b7fe64  bl 0x029f5a50
02b7fe68  mov w8,#0x1
02b7fe6c  strb w8,[x23, #0x8c7]
02b7fe70  ldr x0,[x22]
02b7fe74  ldp q0,q1,[x20]
02b7fe78  ldr w8,[x0, #0xe4]
02b7fe7c  stp q0,q1,[sp]
02b7fe80  cbnz w8,0x02b7fe88
02b7fe84  bl 0x029f5bd0
02b7fe88  mov x1,sp
02b7fe8c  mov x0,x21
02b7fe90  bl 0x02b7ff50
02b7fe94  ldr x8,[x22]
02b7fe98  and w9,w0,#0x1
02b7fe9c  ldr x8,[x8, #0xb8]
02b7fea0  strb w9,[x8, #0x170]
02b7fea4  tbz w0,#0x0,0x02b7fefc
02b7fea8  mov x0,x20
02b7feac  mov x1,xzr
02b7feb0  bl 0x0465bddc
02b7feb4  ldr x8,[x22]
02b7feb8  mov x20,x0
02b7febc  ldr w9,[x8, #0xe4]
02b7fec0  tbz w19,#0x0,0x02b7ff18
02b7fec4  cbnz w9,0x02b7fed0
02b7fec8  mov x0,x8
02b7fecc  bl 0x029f5bd0
02b7fed0  mov x0,x20
02b7fed4  fmov s1,s9
02b7fed8  fmov s2,s8
02b7fedc  ldp x20,x19,[sp, #0x60]
02b7fee0  fmov s0,s10
02b7fee4  ldp x22,x21,[sp, #0x50]
02b7fee8  ldr d10,[sp, #0x20]
02b7feec  ldp x30,x23,[sp, #0x40]
02b7fef0  ldp d9,d8,[sp, #0x30]
02b7fef4  add sp,sp,#0x70
02b7fef8  b 0x02b8020c
02b7fefc  ldp x20,x19,[sp, #0x60]
02b7ff00  ldr d10,[sp, #0x20]
02b7ff04  ldp x22,x21,[sp, #0x50]
02b7ff08  ldp x30,x23,[sp, #0x40]
02b7ff0c  ldp d9,d8,[sp, #0x30]
02b7ff10  add sp,sp,#0x70
02b7ff14  ret
02b7ff18  cbnz w9,0x02b7ff24
02b7ff1c  mov x0,x8
02b7ff20  bl 0x029f5bd0
02b7ff24  mov x0,x20
02b7ff28  fmov s1,s9
02b7ff2c  fmov s2,s8
02b7ff30  ldp x20,x19,[sp, #0x60]
02b7ff34  fmov s0,s10
02b7ff38  ldp x22,x21,[sp, #0x50]
02b7ff3c  ldr d10,[sp, #0x20]
02b7ff40  ldp x30,x23,[sp, #0x40]
02b7ff44  ldp d9,d8,[sp, #0x30]
02b7ff48  add sp,sp,#0x70
02b7ff4c  b 0x02b800f4
