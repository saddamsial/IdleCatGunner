0465a9a0  sub sp,sp,#0x70
0465a9a4  stp x30,x23,[sp, #0x40]
0465a9a8  stp x22,x21,[sp, #0x50]
0465a9ac  stp x20,x19,[sp, #0x60]
0465a9b0  adrp x22,0x6260000
0465a9b4  mov x21,x2
0465a9b8  mov x20,x1
0465a9bc  ldrb w8,[x22, #0xa37]
0465a9c0  mov x19,x0
0465a9c4  tbnz w8,#0x0,0x0465aa24
0465a9c8  adrp x0,0x5e71000
0465a9cc  ldr x0,[x0, #0x8d8]
0465a9d0  bl 0x029f5a50
0465a9d4  adrp x0,0x5e59000
0465a9d8  ldr x0,[x0]
0465a9dc  bl 0x029f5a50
0465a9e0  adrp x0,0x5e59000
0465a9e4  ldr x0,[x0, #0xd8]
0465a9e8  bl 0x029f5a50
0465a9ec  adrp x0,0x5e5d000
0465a9f0  ldr x0,[x0, #0x528]
0465a9f4  bl 0x029f5a50
0465a9f8  adrp x0,0x5e5a000
0465a9fc  ldr x0,[x0, #0xcc0]
0465aa00  bl 0x029f5a50
0465aa04  adrp x0,0x5e59000
0465aa08  ldr x0,[x0, #0x50]
0465aa0c  bl 0x029f5a50
0465aa10  adrp x0,0x5e5e000
0465aa14  ldr x0,[x0, #0x48]
0465aa18  bl 0x029f5a50
0465aa1c  mov w8,#0x1
0465aa20  strb w8,[x22, #0xa37]
0465aa24  movi v0.2D,#0x0
0465aa28  str xzr,[sp, #0x30]
0465aa2c  ldr q1,[x21]
0465aa30  ldr x8,[x21, #0x10]
0465aa34  adrp x22,0x5e5e000
0465aa38  mov x21,sp
0465aa3c  orr x0,x21,#0x8
0465aa40  mov x1,xzr
0465aa44  stp q0,q0,[sp]
0465aa48  str q0,[sp, #0x20]
0465aa4c  ldr x22,[x22, #0x48]
0465aa50  stur q1,[sp, #0x8]
0465aa54  str x8,[sp, #0x18]
0465aa58  bl 0x029f59f4
0465aa5c  ldr q0,[x20]
0465aa60  ldr x8,[x20, #0x10]
0465aa64  add x0,x21,#0x28
0465aa68  mov x1,xzr
0465aa6c  str q0,[sp, #0x20]
0465aa70  str x8,[sp, #0x30]
0465aa74  bl 0x029f59f4
0465aa78  mov x0,x19
0465aa7c  bl 0x0465487c
0465aa80  tbz w0,#0x0,0x0465aaa8
0465aa84  ldrb w8,[sp, #0x30]
0465aa88  tbz w8,#0x3,0x0465aaa0
0465aa8c  ldr w8,[sp, #0x20]
0465aa90  subs w21,w8,#0x1
0465aa94  b.eq 0x0465aaa0
0465aa98  ldr w23,[x19, #0x8]
0465aa9c  tbnz w23,#0x1f,0x0465ae5c
0465aaa0  ldr x0,[x22]
0465aaa4  b 0x0465af60
0465aaa8  adrp x23,0x5e71000
0465aaac  ldr x23,[x23, #0x8d8]
0465aab0  ldr x20,[sp, #0x28]
0465aab4  ldr x0,[x23]
0465aab8  ldr w8,[x0, #0xe4]
0465aabc  cbnz w8,0x0465aac4
0465aac0  bl 0x029f5bd0
0465aac4  mov x0,x20
0465aac8  bl 0x04653ebc
0465aacc  tbnz w0,#0x0,0x0465aaf4
0465aad0  ldr x0,[x23]
0465aad4  ldr w8,[x0, #0xe4]
0465aad8  cbnz w8,0x0465aae0
0465aadc  bl 0x029f5bd0
0465aae0  bl 0x04652ff8
0465aae4  mov x1,x0
0465aae8  str x0,[sp, #0x28]
0465aaec  add x0,x21,#0x28
0465aaf0  bl 0x029f59f4
0465aaf4  adrp x20,0x6260000
0465aaf8  ldrb w8,[x20, #0xa1d]
0465aafc  tbnz w8,#0x0,0x0465ab14
0465ab00  adrp x0,0x5e5e000
0465ab04  ldr x0,[x0, #0x48]
0465ab08  bl 0x029f5a50
0465ab0c  mov w8,#0x1
0465ab10  strb w8,[x20, #0xa1d]
0465ab14  ldr x8,[x19]
0465ab18  ldr x9,[x22]
0465ab1c  cmp x8,#0x0
0465ab20  csel x0,x9,x8,eq
0465ab24  cbz x0,0x0465b034
0465ab28  adrp x8,0x5e5a000
0465ab2c  mov x2,xzr
0465ab30  ldr x8,[x8, #0xcc0]
0465ab34  ldr x1,[x8]
0465ab38  bl 0x046bf554
0465ab3c  ldrb w8,[x20, #0xa1d]
0465ab40  tbz w0,#0x0,0x0465ab84
0465ab44  tbnz w8,#0x0,0x0465ab5c
0465ab48  adrp x0,0x5e5e000
0465ab4c  ldr x0,[x0, #0x48]
0465ab50  bl 0x029f5a50
0465ab54  mov w8,#0x1
0465ab58  strb w8,[x20, #0xa1d]
0465ab5c  ldr x8,[x19]
0465ab60  ldr x9,[x22]
0465ab64  cmp x8,#0x0
0465ab68  csel x0,x9,x8,eq
0465ab6c  cbz x0,0x0465b034
0465ab70  mov w1,#0x1
0465ab74  mov x2,xzr
0465ab78  bl 0x046c5474
0465ab7c  mov x20,x0
0465ab80  b 0x0465abac
0465ab84  tbnz w8,#0x0,0x0465ab9c
0465ab88  adrp x0,0x5e5e000
0465ab8c  ldr x0,[x0, #0x48]
0465ab90  bl 0x029f5a50
0465ab94  mov w8,#0x1
0465ab98  strb w8,[x20, #0xa1d]
0465ab9c  ldr x8,[x19]
0465aba0  ldr x9,[x22]
0465aba4  cmp x8,#0x0
0465aba8  csel x20,x9,x8,eq
0465abac  adrp x8,0x5e59000
0465abb0  ldr x8,[x8, #0xd8]
0465abb4  ldr x0,[x8]
0465abb8  bl 0x029f5cec
0465abbc  mov x1,x20
0465abc0  mov x2,xzr
0465abc4  mov x21,x0
0465abc8  bl 0x046ce3d8
0465abcc  mov x0,sp
0465abd0  mov x1,x21
0465abd4  str x21,[sp]
0465abd8  bl 0x029f59f4
0465abdc  ldr w8,[sp, #0x20]
0465abe0  ldr w20,[x19, #0x8]
0465abe4  cmp w8,#0x1
0465abe8  b.lt 0x0465ac38
0465abec  ldr x0,[sp]
0465abf0  cbz x0,0x0465b034
0465abf4  mov x1,xzr
0465abf8  bl 0x046c81a8
0465abfc  ldr w8,[sp, #0x20]
0465ac00  cmp w0,w8
0465ac04  b.le 0x0465ac38
0465ac08  ldr x0,[sp]
0465ac0c  cbz x0,0x0465b034
0465ac10  mov x1,xzr
0465ac14  bl 0x046c81a8
0465ac18  ldr x8,[sp]
0465ac1c  cbz x8,0x0465b034
0465ac20  ldr w1,[sp, #0x20]
0465ac24  add w9,w0,w20
0465ac28  mov x0,x8
0465ac2c  mov x2,xzr
0465ac30  sub w20,w9,w1
0465ac34  bl 0x046cf1ac
0465ac38  ldr w8,[sp, #0x30]
0465ac3c  tbnz w8,#0x3,0x0465acb8
0465ac40  ldr x0,[sp]
0465ac44  cbz x0,0x0465b034
0465ac48  mov x1,xzr
0465ac4c  bl 0x046c81a8
0465ac50  cmp w0,#0x2
0465ac54  b.lt 0x0465acb4
0465ac58  ldr x21,[sp]
0465ac5c  cbz x21,0x0465b034
0465ac60  mov x0,x21
0465ac64  mov x1,xzr
0465ac68  bl 0x046c81a8
0465ac6c  sub w1,w0,#0x1
0465ac70  mov x0,x21
0465ac74  mov x2,xzr
0465ac78  bl 0x046cf56c
0465ac7c  and w8,w0,#0xffff
0465ac80  cmp w8,#0x30
0465ac84  b.ne 0x0465acb4
0465ac88  ldr x21,[sp]
0465ac8c  cbz x21,0x0465b034
0465ac90  mov x0,x21
0465ac94  mov x1,xzr
0465ac98  add w20,w20,#0x1
0465ac9c  bl 0x046c81a8
0465aca0  sub w1,w0,#0x1
0465aca4  mov x0,x21
0465aca8  mov x2,xzr
0465acac  bl 0x046cf1ac
0465acb0  b 0x0465ac40
0465acb4  ldr w8,[sp, #0x30]
0465acb8  tbnz w8,#0x2,0x0465ad20
0465acbc  ldr w8,[sp, #0x20]
0465acc0  cmp w8,#0x1
0465acc4  b.lt 0x0465ada8
0465acc8  cmp w20,#0x1
0465accc  b.lt 0x0465acf0
0465acd0  ldr x0,[sp]
0465acd4  cbz x0,0x0465b034
0465acd8  mov x1,xzr
0465acdc  bl 0x046c81a8
0465ace0  ldr w8,[sp, #0x20]
0465ace4  add w9,w0,w20
0465ace8  cmp w9,w8
0465acec  b.gt 0x0465ad20
0465acf0  ldr x0,[sp]
0465acf4  cbz x0,0x0465b034
0465acf8  mov x1,xzr
0465acfc  bl 0x046c81a8
0465ad00  neg w8,w0
0465ad04  cmp w20,w8
0465ad08  b.gt 0x0465ada8
0465ad0c  ldr w8,[sp, #0x20]
0465ad10  mov w9,#0x1
0465ad14  sub w9,w9,w20
0465ad18  cmp w9,w8
0465ad1c  b.le 0x0465ada8
0465ad20  ldr x0,[sp]
0465ad24  cbz x0,0x0465b034
0465ad28  mov x1,xzr
0465ad2c  bl 0x046c81a8
0465ad30  ldr x8,[sp, #0x28]
0465ad34  add w9,w20,w0
0465ad38  sub w20,w9,#0x1
0465ad3c  cbz x8,0x0465ade4
0465ad40  cmp w20,#0x3
0465ad44  b.lt 0x0465ade4
0465ad48  mov w9,#0x5556
0465ad4c  ldr w8,[x8, #0x18]
0465ad50  movk w9,#0x5555, LSL #16
0465ad54  smull x9,w20,w9
0465ad58  lsr x10,x9,#0x3f
0465ad5c  lsr x9,x9,#0x20
0465ad60  add w22,w9,w10
0465ad64  cmp w22,w8
0465ad68  b.gt 0x0465ad98
0465ad6c  ldr x0,[sp]
0465ad70  cbz x0,0x0465b034
0465ad74  add w8,w22,w22, LSL #0x1
0465ad78  mov x1,xzr
0465ad7c  sub w21,w20,w8
0465ad80  bl 0x046c81a8
0465ad84  cmp w21,w0
0465ad88  b.lt 0x0465af74
0465ad8c  ldr w8,[sp, #0x20]
0465ad90  cmp w21,w8
0465ad94  b.lt 0x0465af74
0465ad98  mov x1,sp
0465ad9c  mov w0,#0x1
0465ada0  bl 0x0465c480
0465ada4  b 0x0465adf4
0465ada8  ldr x21,[sp]
0465adac  cmp w20,#0x1
0465adb0  b.lt 0x0465aeac
0465adb4  mov x0,xzr
0465adb8  mov w1,#0x30
0465adbc  mov w2,w20
0465adc0  mov x3,xzr
0465adc4  bl 0x046c741c
0465adc8  cbz x21,0x0465b034
0465adcc  mov x1,x0
0465add0  mov x0,x21
0465add4  mov x2,xzr
0465add8  bl 0x046c79a8
0465addc  mov w20,wzr
0465ade0  b 0x0465af0c
0465ade4  mov x1,sp
0465ade8  mov w0,#0x1
0465adec  bl 0x0465c480
0465adf0  cbz w20,0x0465af28
0465adf4  ldr x8,[sp, #0x18]
0465adf8  cbz x8,0x0465b034
0465adfc  ldr w9,[x8, #0x18]
0465ae00  cbz w9,0x0465b038
0465ae04  ldr x0,[sp]
0465ae08  cbz x0,0x0465b034
0465ae0c  ldr x1,[x8, #0x20]
0465ae10  mov x2,xzr
0465ae14  bl 0x046c79a8
0465ae18  ldr x0,[sp]
0465ae1c  cbz x0,0x0465b034
0465ae20  adrp x8,0x5e5d000
0465ae24  adrp x9,0x5e59000
0465ae28  cmp w20,#0x0
0465ae2c  ldr x8,[x8, #0x528]
0465ae30  ldr x9,[x9, #0x50]
0465ae34  mov x2,xzr
0465ae38  csel x8,x8,x9,gt
0465ae3c  ldr x1,[x8]
0465ae40  bl 0x046c79a8
0465ae44  ldr x0,[sp]
0465ae48  cbz x0,0x0465b034
0465ae4c  mov w1,w20
0465ae50  mov x2,xzr
0465ae54  bl 0x046d0358
0465ae58  b 0x0465af28
0465ae5c  ldr x9,[sp, #0x8]
0465ae60  cbz x9,0x0465b034
0465ae64  ldr w10,[x9, #0x18]
0465ae68  cbz w10,0x0465b038
0465ae6c  ldr x19,[x9, #0x20]
0465ae70  ldr x20,[x22]
0465ae74  cmp w8,#0x0
0465ae78  b.le 0x0465b008
0465ae7c  adrp x8,0x5e59000
0465ae80  ldr x8,[x8]
0465ae84  ldr x0,[x8]
0465ae88  ldr w8,[x0, #0xe4]
0465ae8c  cbnz w8,0x0465ae94
0465ae90  bl 0x029f5bd0
0465ae94  neg w0,w23
0465ae98  mov w1,w21
0465ae9c  mov x2,xzr
0465aea0  bl 0x0485213c
0465aea4  mov w2,w0
0465aea8  b 0x0465b00c
0465aeac  cbz x21,0x0465b034
0465aeb0  mov x0,x21
0465aeb4  mov x1,xzr
0465aeb8  bl 0x046c81a8
0465aebc  neg w8,w0
0465aec0  cmp w20,w8
0465aec4  b.gt 0x0465af0c
0465aec8  ldr x21,[sp]
0465aecc  cbz x21,0x0465b034
0465aed0  mov x0,x21
0465aed4  mov x1,xzr
0465aed8  bl 0x046c81a8
0465aedc  mov w8,#0x1
0465aee0  mov w1,#0x30
0465aee4  mov x3,xzr
0465aee8  sub w8,w8,w20
0465aeec  sub w2,w8,w0
0465aef0  mov x0,xzr
0465aef4  bl 0x046c741c
0465aef8  mov x2,x0
0465aefc  mov x0,x21
0465af00  mov w1,wzr
0465af04  mov x3,xzr
0465af08  bl 0x046d05a0
0465af0c  ldr x0,[sp]
0465af10  cbz x0,0x0465b034
0465af14  mov x1,xzr
0465af18  bl 0x046c81a8
0465af1c  add w0,w0,w20
0465af20  mov x1,sp
0465af24  bl 0x0465c480
0465af28  mov x0,x19
0465af2c  bl 0x0465940c
0465af30  tbz w0,#0x1f,0x0465af4c
0465af34  ldr x0,[sp]
0465af38  cbz x0,0x0465b034
0465af3c  mov w1,wzr
0465af40  mov w2,#0x2d
0465af44  mov x3,xzr
0465af48  bl 0x046d0720
0465af4c  ldr x0,[sp]
0465af50  cbz x0,0x0465b034
0465af54  ldr x8,[x0]
0465af58  ldp x9,x1,[x8, #0x168]
0465af5c  blr x9
0465af60  ldp x20,x19,[sp, #0x60]
0465af64  ldp x22,x21,[sp, #0x50]
0465af68  ldp x30,x23,[sp, #0x40]
0465af6c  add sp,sp,#0x70
0465af70  ret
0465af74  ldr x0,[sp]
0465af78  cbz x0,0x0465b034
0465af7c  mov x1,xzr
0465af80  add w20,w21,#0x1
0465af84  bl 0x046c81a8
0465af88  cmp w21,w0
0465af8c  b.lt 0x0465afc8
0465af90  ldr x21,[sp]
0465af94  cbz x21,0x0465b034
0465af98  mov x0,x21
0465af9c  mov x1,xzr
0465afa0  bl 0x046c81a8
0465afa4  sub w2,w20,w0
0465afa8  mov x0,xzr
0465afac  mov w1,#0x30
0465afb0  mov x3,xzr
0465afb4  bl 0x046c741c
0465afb8  mov x1,x0
0465afbc  mov x0,x21
0465afc0  mov x2,xzr
0465afc4  bl 0x046c79a8
0465afc8  mov x1,sp
0465afcc  mov w0,w20
0465afd0  bl 0x0465c480
0465afd4  ldr x8,[sp, #0x28]
0465afd8  cbz x8,0x0465b034
0465afdc  ldr w10,[x8, #0x18]
0465afe0  sub w9,w22,#0x1
0465afe4  cmp w9,w10
0465afe8  b.cs 0x0465b038
0465afec  ldr x0,[sp]
0465aff0  cbz x0,0x0465b034
0465aff4  add x8,x8,w9, UXTW  #0x3
0465aff8  mov x2,xzr
0465affc  ldr x1,[x8, #0x20]
0465b000  bl 0x046c79a8
0465b004  b 0x0465af28
0465b008  neg w2,w23
0465b00c  mov x0,xzr
0465b010  mov w1,#0x30
0465b014  mov x3,xzr
0465b018  bl 0x046c741c
0465b01c  mov x2,x0
0465b020  mov x0,x20
0465b024  mov x1,x19
0465b028  mov x3,xzr
0465b02c  bl 0x046c118c
0465b030  b 0x0465af60
0465b034  bl 0x029f5cfc
0465b038  bl 0x029f5d04
