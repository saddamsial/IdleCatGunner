02c5ece8  str x30,[sp, #-0x40]!
02c5ecec  stp x24,x23,[sp, #0x10]
02c5ecf0  stp x22,x21,[sp, #0x20]
02c5ecf4  stp x20,x19,[sp, #0x30]
02c5ecf8  adrp x22,0x625c000
02c5ecfc  mov w20,w2
02c5ed00  mov w21,w1
02c5ed04  ldrb w8,[x22, #0x208]
02c5ed08  mov x19,x0
02c5ed0c  tbnz w8,#0x0,0x02c5ed48
02c5ed10  adrp x0,0x5e63000
02c5ed14  ldr x0,[x0, #0x108]
02c5ed18  bl 0x029f5a50
02c5ed1c  adrp x0,0x5e63000
02c5ed20  ldr x0,[x0, #0x840]
02c5ed24  bl 0x029f5a50
02c5ed28  adrp x0,0x5e62000
02c5ed2c  ldr x0,[x0, #0xfe8]
02c5ed30  bl 0x029f5a50
02c5ed34  adrp x0,0x5e63000
02c5ed38  ldr x0,[x0, #0x128]
02c5ed3c  bl 0x029f5a50
02c5ed40  mov w8,#0x1
02c5ed44  strb w8,[x22, #0x208]
02c5ed48  mov w22,#0xffffffff
02c5ed4c  tbnz w21,#0x1f,0x02c5ee94
02c5ed50  cmp w21,w20
02c5ed54  b.eq 0x02c5ee94
02c5ed58  ldr x0,[x19, #0x90]
02c5ed5c  cbz x0,0x02c5eeac
02c5ed60  ldr w8,[x0, #0x18]
02c5ed64  cmp w8,w20
02c5ed68  b.le 0x02c5ee94
02c5ed6c  tbnz w20,#0x1f,0x02c5ee94
02c5ed70  cmp w8,w21
02c5ed74  b.le 0x02c5ee94
02c5ed78  adrp x22,0x5e63000
02c5ed7c  mov w1,w21
02c5ed80  ldr x22,[x22, #0x128]
02c5ed84  ldr x2,[x22]
02c5ed88  bl 0x044f7718
02c5ed8c  ldr x8,[x19, #0x90]
02c5ed90  cbz x8,0x02c5eeac
02c5ed94  ldr x2,[x22]
02c5ed98  mov w23,w0
02c5ed9c  mov x0,x8
02c5eda0  mov w1,w20
02c5eda4  bl 0x044f7718
02c5eda8  cmp w23,#0xb
02c5edac  mov w22,#0xffffffff
02c5edb0  b.gt 0x02c5ee94
02c5edb4  cmp w23,w0
02c5edb8  b.ne 0x02c5ee94
02c5edbc  ldr x0,[x19, #0x90]
02c5edc0  cmp w21,w20
02c5edc4  csel w22,w21,w20,lt
02c5edc8  cbz x0,0x02c5eeac
02c5edcc  adrp x24,0x5e63000
02c5edd0  cmp w21,w20
02c5edd4  ldr x24,[x24, #0x840]
02c5edd8  csel w1,w21,w20,gt
02c5eddc  ldr x2,[x24]
02c5ede0  bl 0x044f9164
02c5ede4  ldr x0,[x19, #0x90]
02c5ede8  cbz x0,0x02c5eeac
02c5edec  ldr x2,[x24]
02c5edf0  mov w1,w22
02c5edf4  bl 0x044f9164
02c5edf8  ldr x0,[x19, #0x90]
02c5edfc  cbz x0,0x02c5eeac
02c5ee00  adrp x8,0x5e63000
02c5ee04  add w22,w23,#0x1
02c5ee08  ldr x8,[x8, #0x108]
02c5ee0c  mov w1,w22
02c5ee10  ldr x2,[x8]
02c5ee14  bl 0x02630c8c
02c5ee18  ldr x8,[x19, #0xa8]
02c5ee1c  cbz x8,0x02c5ee30
02c5ee20  ldr x9,[x8, #0x18]
02c5ee24  ldr x0,[x8, #0x40]
02c5ee28  ldr x1,[x8, #0x28]
02c5ee2c  blr x9
02c5ee30  mov x0,x19
02c5ee34  bl 0x02c5d820
02c5ee38  bl 0x02c5e13c
02c5ee3c  mov x0,x19
02c5ee40  mov w1,w22
02c5ee44  bl 0x02c5ea14
02c5ee48  adrp x19,0x625b000
02c5ee4c  ldrb w8,[x19, #0xa57]
02c5ee50  cbnz w8,0x02c5ee68
02c5ee54  adrp x0,0x5e5d000
02c5ee58  ldr x0,[x0, #0xd70]
02c5ee5c  bl 0x029f5a50
02c5ee60  mov w8,#0x1
02c5ee64  strb w8,[x19, #0xa57]
02c5ee68  adrp x8,0x5e5d000
02c5ee6c  ldr x8,[x8, #0xd70]
02c5ee70  ldr x8,[x8]
02c5ee74  ldr x8,[x8, #0xb8]
02c5ee78  ldr x0,[x8]
02c5ee7c  cbz x0,0x02c5eeac
02c5ee80  fmov s0,0x3f800000
02c5ee84  mov w1,#0x3
02c5ee88  mov x2,xzr
02c5ee8c  mov x3,xzr
02c5ee90  bl 0x02c1f10c
02c5ee94  mov w0,w22
02c5ee98  ldp x20,x19,[sp, #0x30]
02c5ee9c  ldp x22,x21,[sp, #0x20]
02c5eea0  ldp x24,x23,[sp, #0x10]
02c5eea4  ldr x30,[sp], #0x40
02c5eea8  ret
02c5eeac  bl 0x029f5cfc
