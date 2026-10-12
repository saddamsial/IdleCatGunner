02c2ed94  sub sp,sp,#0x70
02c2ed98  stp d9,d8,[sp, #0x10]
02c2ed9c  stp x30,x27,[sp, #0x20]
02c2eda0  stp x26,x25,[sp, #0x30]
02c2eda4  stp x24,x23,[sp, #0x40]
02c2eda8  stp x22,x21,[sp, #0x50]
02c2edac  stp x20,x19,[sp, #0x60]
02c2edb0  adrp x20,0x625c000
02c2edb4  mov x19,x0
02c2edb8  ldrb w8,[x20, #0x16]
02c2edbc  tbnz w8,#0x0,0x02c2edec
02c2edc0  adrp x0,0x5e59000
02c2edc4  ldr x0,[x0, #0x7d0]
02c2edc8  bl 0x029f5a50
02c2edcc  adrp x0,0x5e5a000
02c2edd0  ldr x0,[x0, #0x180]
02c2edd4  bl 0x029f5a50
02c2edd8  adrp x0,0x5e5d000
02c2eddc  ldr x0,[x0, #0x3c0]
02c2ede0  bl 0x029f5a50
02c2ede4  mov w8,#0x1
02c2ede8  strb w8,[x20, #0x16]
02c2edec  ldr x8,[x19, #0x20]
02c2edf0  str xzr,[sp, #0x8]
02c2edf4  cbz x8,0x02c2ef40
02c2edf8  adrp x8,0x5e5d000
02c2edfc  ldr x8,[x8, #0x3c0]
02c2ee00  ldr x0,[x8]
02c2ee04  ldr w8,[x0, #0xe4]
02c2ee08  cbnz w8,0x02c2ee10
02c2ee0c  bl 0x029f5bd0
02c2ee10  bl 0x02c25b48
02c2ee14  ldr x8,[x19, #0x20]
02c2ee18  cbz x8,0x02c2ef24
02c2ee1c  adrp x24,0x5e59000
02c2ee20  adrp x25,0x5e5a000
02c2ee24  mov x9,#0x7fefffffffffffff
02c2ee28  ldr x24,[x24, #0x7d0]
02c2ee2c  ldr x25,[x25, #0x180]
02c2ee30  mov x20,x0
02c2ee34  mov w23,wzr
02c2ee38  movi d9,#0x0
02c2ee3c  fmov d8,x9
02c2ee40  ldr w9,[x8, #0x18]
02c2ee44  cmp w23,w9
02c2ee48  b.ge 0x02c2ef28
02c2ee4c  b.cs 0x02c2ef64
02c2ee50  add x9,x8,w23, SXTW  #0x3
02c2ee54  ldr x9,[x9, #0x20]
02c2ee58  cbz x9,0x02c2ef24
02c2ee5c  ldr x26,[x9, #0x18]
02c2ee60  cbz x26,0x02c2ef1c
02c2ee64  ldr x9,[x26, #0x18]
02c2ee68  cmp w9,#0x1
02c2ee6c  b.lt 0x02c2ef1c
02c2ee70  mov x21,xzr
02c2ee74  add x27,x26,#0x20
02c2ee78  cmp w21,w9
02c2ee7c  b.cs 0x02c2ef64
02c2ee80  ldr x1,[x27, x21, LSL #0x3]
02c2ee84  cbz x1,0x02c2ef24
02c2ee88  ldrb w8,[x1, #0x10]
02c2ee8c  cbz w8,0x02c2ef0c
02c2ee90  ldr x8,[x19, #0x68]
02c2ee94  cbz x8,0x02c2ef24
02c2ee98  ldr w8,[x8, #0x18]
02c2ee9c  cmp w21,w8
02c2eea0  b.ge 0x02c2ef0c
02c2eea4  mov x0,x19
02c2eea8  mov w2,w21
02c2eeac  bl 0x02c2cb98
02c2eeb0  ldr x8,[x24]
02c2eeb4  mov x22,x0
02c2eeb8  ldr w9,[x8, #0xe4]
02c2eebc  cbnz w9,0x02c2eec8
02c2eec0  mov x0,x8
02c2eec4  bl 0x029f5bd0
02c2eec8  mov x0,x22
02c2eecc  mov x1,x20
02c2eed0  mov x2,xzr
02c2eed4  bl 0x048330d0
02c2eed8  ldr x8,[x25]
02c2eedc  str x0,[sp, #0x8]
02c2eee0  ldr w9,[x8, #0xe4]
02c2eee4  cbnz w9,0x02c2eef0
02c2eee8  mov x0,x8
02c2eeec  bl 0x029f5bd0
02c2eef0  add x0,sp,#0x8
02c2eef4  mov x1,xzr
02c2eef8  bl 0x04868260
02c2eefc  fcmp d0,d8
02c2ef00  ldr x9,[x26, #0x18]
02c2ef04  fccmp d0,d9,#0x0,mi
02c2ef08  fcsel d8,d0,d8,hi
02c2ef0c  add x21,x21,#0x1
02c2ef10  cmp w21,w9
02c2ef14  b.lt 0x02c2ee78
02c2ef18  ldr x8,[x19, #0x20]
02c2ef1c  add w23,w23,#0x1
02c2ef20  cbnz x8,0x02c2ee40
02c2ef24  bl 0x029f5cfc
02c2ef28  mov x8,#0x7fefffffffffffff
02c2ef2c  fmov d0,x8
02c2ef30  fcmp d8,d0
02c2ef34  fmov d0,-0x4010000000000000
02c2ef38  fcsel d0,d0,d8,eq
02c2ef3c  b 0x02c2ef44
02c2ef40  fmov d0,-0x4010000000000000
02c2ef44  ldp x20,x19,[sp, #0x60]
02c2ef48  ldp x22,x21,[sp, #0x50]
02c2ef4c  ldp x24,x23,[sp, #0x40]
02c2ef50  ldp x26,x25,[sp, #0x30]
02c2ef54  ldp x30,x27,[sp, #0x20]
02c2ef58  ldp d9,d8,[sp, #0x10]
02c2ef5c  add sp,sp,#0x70
02c2ef60  ret
02c2ef64  bl 0x029f5d04
