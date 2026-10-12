02c8ad70  sub sp,sp,#0x40
02c8ad74  str x30,[sp, #0x10]
02c8ad78  stp x22,x21,[sp, #0x20]
02c8ad7c  stp x20,x19,[sp, #0x30]
02c8ad80  adrp x19,0x625c000
02c8ad84  adrp x22,0x5e5a000
02c8ad88  ldrb w8,[x19, #0x3a6]
02c8ad8c  ldr x22,[x22, #0x180]
02c8ad90  str x0,[sp, #0x18]
02c8ad94  tbnz w8,#0x0,0x02c8add0
02c8ad98  adrp x0,0x5e59000
02c8ad9c  ldr x0,[x0, #0x768]
02c8ada0  bl 0x029f5a50
02c8ada4  adrp x0,0x5e5a000
02c8ada8  ldr x0,[x0, #0x180]
02c8adac  bl 0x029f5a50
02c8adb0  adrp x0,0x5e63000
02c8adb4  ldr x0,[x0, #0xf08]
02c8adb8  bl 0x029f5a50
02c8adbc  adrp x0,0x5e63000
02c8adc0  ldr x0,[x0, #0xf10]
02c8adc4  bl 0x029f5a50
02c8adc8  mov w8,#0x1
02c8adcc  strb w8,[x19, #0x3a6]
02c8add0  ldr x0,[x22]
02c8add4  ldr w8,[x0, #0xe4]
02c8add8  cbnz w8,0x02c8ade0
02c8addc  bl 0x029f5bd0
02c8ade0  add x0,sp,#0x18
02c8ade4  mov x1,xzr
02c8ade8  bl 0x048681e0
02c8adec  mov x8,#0x7ff0000000000000
02c8adf0  fcvtzs w9,d0
02c8adf4  fmov d1,x8
02c8adf8  mov w8,#0x80000000
02c8adfc  fcmp d0,d1
02c8ae00  csel w20,w8,w9,eq
02c8ae04  cmp w20,#0x1
02c8ae08  b.lt 0x02c8afa8
02c8ae0c  adrp x8,0x5e59000
02c8ae10  mov w1,#0x4
02c8ae14  ldr x8,[x8, #0x768]
02c8ae18  ldr x0,[x8]
02c8ae1c  bl 0x029f5b40
02c8ae20  adrp x21,0x5e58000
02c8ae24  mov x19,x0
02c8ae28  add x1,sp,#0xc
02c8ae2c  ldr x21,[x21, #0xa10]
02c8ae30  str w20,[sp, #0xc]
02c8ae34  ldr x0,[x21, #0x48]
02c8ae38  bl 0x029f5bd8
02c8ae3c  cbz x19,0x02c8b070
02c8ae40  mov x20,x0
02c8ae44  cbz x0,0x02c8ae5c
02c8ae48  ldr x8,[x19]
02c8ae4c  mov x0,x20
02c8ae50  ldr x1,[x8, #0x40]
02c8ae54  bl 0x029f5bd4
02c8ae58  cbz x0,0x02c8b064
02c8ae5c  ldr w8,[x19, #0x18]
02c8ae60  cbz w8,0x02c8b060
02c8ae64  mov x0,x19
02c8ae68  mov x1,x20
02c8ae6c  str x20,[x0, #0x20]!
02c8ae70  bl 0x029f59f4
02c8ae74  ldr x0,[x22]
02c8ae78  ldr w8,[x0, #0xe4]
02c8ae7c  cbnz w8,0x02c8ae84
02c8ae80  bl 0x029f5bd0
02c8ae84  add x0,sp,#0x18
02c8ae88  mov x1,xzr
02c8ae8c  bl 0x04868108
02c8ae90  ldr x8,[x21, #0x48]
02c8ae94  str w0,[sp, #0x8]
02c8ae98  add x1,sp,#0x8
02c8ae9c  mov x0,x8
02c8aea0  bl 0x029f5bd8
02c8aea4  mov x20,x0
02c8aea8  cbz x0,0x02c8aec0
02c8aeac  ldr x8,[x19]
02c8aeb0  mov x0,x20
02c8aeb4  ldr x1,[x8, #0x40]
02c8aeb8  bl 0x029f5bd4
02c8aebc  cbz x0,0x02c8b064
02c8aec0  ldr w8,[x19, #0x18]
02c8aec4  tst w8,#0xfffffffe
02c8aec8  b.eq 0x02c8b060
02c8aecc  mov x0,x19
02c8aed0  mov x1,x20
02c8aed4  str x20,[x0, #0x28]!
02c8aed8  bl 0x029f59f4
02c8aedc  add x0,sp,#0x18
02c8aee0  mov x1,xzr
02c8aee4  bl 0x0486814c
02c8aee8  ldr x8,[x21, #0x48]
02c8aeec  str w0,[sp, #0x4]
02c8aef0  add x1,sp,#0x4
02c8aef4  mov x0,x8
02c8aef8  bl 0x029f5bd8
02c8aefc  mov x20,x0
02c8af00  cbz x0,0x02c8af18
02c8af04  ldr x8,[x19]
02c8af08  mov x0,x20
02c8af0c  ldr x1,[x8, #0x40]
02c8af10  bl 0x029f5bd4
02c8af14  cbz x0,0x02c8b064
02c8af18  ldr w8,[x19, #0x18]
02c8af1c  cmp w8,#0x2
02c8af20  b.ls 0x02c8b060
02c8af24  mov x0,x19
02c8af28  mov x1,x20
02c8af2c  str x20,[x0, #0x30]!
02c8af30  bl 0x029f59f4
02c8af34  add x0,sp,#0x18
02c8af38  mov x1,xzr
02c8af3c  bl 0x04868194
02c8af40  ldr x8,[x21, #0x48]
02c8af44  str w0,[sp]
02c8af48  mov x1,sp
02c8af4c  mov x0,x8
02c8af50  bl 0x029f5bd8
02c8af54  mov x20,x0
02c8af58  cbz x0,0x02c8af70
02c8af5c  ldr x8,[x19]
02c8af60  mov x0,x20
02c8af64  ldr x1,[x8, #0x40]
02c8af68  bl 0x029f5bd4
02c8af6c  cbz x0,0x02c8b064
02c8af70  ldr w8,[x19, #0x18]
02c8af74  tst w8,#0xfffffffc
02c8af78  b.eq 0x02c8b060
02c8af7c  adrp x21,0x5e63000
02c8af80  mov x0,x19
02c8af84  mov x1,x20
02c8af88  ldr x21,[x21, #0xf08]
02c8af8c  str x20,[x0, #0x38]!
02c8af90  bl 0x029f59f4
02c8af94  ldr x0,[x21]
02c8af98  mov x1,x19
02c8af9c  mov x2,xzr
02c8afa0  bl 0x046c1d9c
02c8afa4  b 0x02c8b04c
02c8afa8  ldr x0,[x22]
02c8afac  ldr w8,[x0, #0xe4]
02c8afb0  cbnz w8,0x02c8afb8
02c8afb4  bl 0x029f5bd0
02c8afb8  add x0,sp,#0x18
02c8afbc  mov x1,xzr
02c8afc0  bl 0x04868108
02c8afc4  adrp x21,0x5e58000
02c8afc8  add x1,sp,#0xc
02c8afcc  ldr x21,[x21, #0xa10]
02c8afd0  str w0,[sp, #0xc]
02c8afd4  ldr x8,[x21, #0x48]
02c8afd8  mov x0,x8
02c8afdc  bl 0x029f5bd8
02c8afe0  mov x19,x0
02c8afe4  add x0,sp,#0x18
02c8afe8  mov x1,xzr
02c8afec  bl 0x0486814c
02c8aff0  ldr x8,[x21, #0x48]
02c8aff4  str w0,[sp, #0x8]
02c8aff8  add x1,sp,#0x8
02c8affc  mov x0,x8
02c8b000  bl 0x029f5bd8
02c8b004  mov x20,x0
02c8b008  add x0,sp,#0x18
02c8b00c  mov x1,xzr
02c8b010  bl 0x04868194
02c8b014  ldr x8,[x21, #0x48]
02c8b018  str w0,[sp, #0x4]
02c8b01c  add x1,sp,#0x4
02c8b020  mov x0,x8
02c8b024  bl 0x029f5bd8
02c8b028  adrp x8,0x5e63000
02c8b02c  mov x3,x0
02c8b030  mov x1,x19
02c8b034  ldr x8,[x8, #0xf10]
02c8b038  mov x2,x20
02c8b03c  mov x4,xzr
02c8b040  ldr x8,[x8]
02c8b044  mov x0,x8
02c8b048  bl 0x046c1d58
02c8b04c  ldp x20,x19,[sp, #0x30]
02c8b050  ldr x30,[sp, #0x10]
02c8b054  ldp x22,x21,[sp, #0x20]
02c8b058  add sp,sp,#0x40
02c8b05c  ret
02c8b060  bl 0x029f5d04
02c8b064  bl 0x029f5d20
02c8b068  mov x1,xzr
02c8b06c  bl 0x029f5bc0
02c8b070  bl 0x029f5cfc
