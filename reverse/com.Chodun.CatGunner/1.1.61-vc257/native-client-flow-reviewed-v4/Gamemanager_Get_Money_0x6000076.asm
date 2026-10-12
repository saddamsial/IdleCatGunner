02b7eadc  sub sp,sp,#0xe0
02b7eae0  str d10,[sp, #0xa0]
02b7eae4  stp d9,d8,[sp, #0xa8]
02b7eae8  str x30,[sp, #0xb8]
02b7eaec  stp x22,x21,[sp, #0xc0]
02b7eaf0  stp x20,x19,[sp, #0xd0]
02b7eaf4  fmov s8,s2
02b7eaf8  fmov s9,s1
02b7eafc  adrp x22,0x625b000
02b7eb00  fmov s10,s0
02b7eb04  adrp x21,0x5e5d000
02b7eb08  ldrb w8,[x22, #0x8b7]
02b7eb0c  ldr x21,[x21, #0x338]
02b7eb10  mov x19,x1
02b7eb14  mov x20,x0
02b7eb18  tbnz w8,#0x0,0x02b7eb30
02b7eb1c  adrp x0,0x5e5d000
02b7eb20  ldr x0,[x0, #0x338]
02b7eb24  bl 0x029f5a50
02b7eb28  mov w8,#0x1
02b7eb2c  strb w8,[x22, #0x8b7]
02b7eb30  ldr x0,[x21]
02b7eb34  ldp q0,q1,[x20]
02b7eb38  ldr w8,[x0, #0xe4]
02b7eb3c  stp q0,q1,[sp, #0x80]
02b7eb40  cbnz w8,0x02b7eb48
02b7eb44  bl 0x029f5bd0
02b7eb48  ldp q0,q1,[sp, #0x80]
02b7eb4c  add x8,sp,#0x60
02b7eb50  add x0,sp,#0x40
02b7eb54  stp q0,q1,[sp, #0x40]
02b7eb58  bl 0x02b7e1cc
02b7eb5c  ldp q1,q0,[sp, #0x60]
02b7eb60  mov x1,x20
02b7eb64  mov x2,xzr
02b7eb68  stp q1,q0,[x20]
02b7eb6c  ldr x8,[x21]
02b7eb70  ldr x9,[x8, #0xb8]
02b7eb74  add x8,sp,#0x20
02b7eb78  add x0,x9,#0x30
02b7eb7c  bl 0x04658020
02b7eb80  ldr x8,[x21]
02b7eb84  ldp q0,q1,[sp, #0x20]
02b7eb88  mov x1,xzr
02b7eb8c  ldr x9,[x8, #0xb8]
02b7eb90  stp q0,q1,[x9, #0x30]
02b7eb94  ldr x8,[x8, #0xb8]
02b7eb98  add x0,x8,#0x30
02b7eb9c  bl 0x029f59f4
02b7eba0  ldr x8,[x21]
02b7eba4  mov x1,x20
02b7eba8  mov x2,xzr
02b7ebac  ldr x9,[x8, #0xb8]
02b7ebb0  mov x8,sp
02b7ebb4  add x0,x9,#0x50
02b7ebb8  bl 0x04658020
02b7ebbc  ldr x8,[x21]
02b7ebc0  ldp q0,q1,[sp]
02b7ebc4  mov x1,xzr
02b7ebc8  ldr x9,[x8, #0xb8]
02b7ebcc  stp q0,q1,[x9, #0x50]
02b7ebd0  ldr x8,[x8, #0xb8]
02b7ebd4  add x0,x8,#0x50
02b7ebd8  bl 0x029f59f4
02b7ebdc  ldr x0,[x21]
02b7ebe0  ldr x8,[x0, #0xb8]
02b7ebe4  ldr x8,[x8, #0x8]
02b7ebe8  cbz x8,0x02b7ec00
02b7ebec  ldr x9,[x8, #0x18]
02b7ebf0  ldr x0,[x8, #0x40]
02b7ebf4  ldr x1,[x8, #0x28]
02b7ebf8  blr x9
02b7ebfc  ldr x0,[x21]
02b7ec00  ldr w8,[x0, #0xe4]
02b7ec04  cbnz w8,0x02b7ec0c
02b7ec08  bl 0x029f5bd0
02b7ec0c  fmov s0,s10
02b7ec10  fmov s1,s9
02b7ec14  mov x0,x19
02b7ec18  fmov s2,s8
02b7ec1c  bl 0x02b7e994
02b7ec20  ldp x20,x19,[sp, #0xd0]
02b7ec24  ldr x30,[sp, #0xb8]
02b7ec28  ldp x22,x21,[sp, #0xc0]
02b7ec2c  ldr d10,[sp, #0xa0]
02b7ec30  ldp d9,d8,[sp, #0xa8]
02b7ec34  add sp,sp,#0xe0
02b7ec38  ret
