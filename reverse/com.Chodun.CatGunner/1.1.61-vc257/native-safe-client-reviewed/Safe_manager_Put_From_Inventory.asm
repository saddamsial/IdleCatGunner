02c6be58  stp x30,x23,[sp, #-0x30]!
02c6be5c  stp x22,x21,[sp, #0x10]
02c6be60  stp x20,x19,[sp, #0x20]
02c6be64  adrp x21,0x625c000
02c6be68  adrp x23,0x5e5d000
02c6be6c  adrp x19,0x5e59000
02c6be70  ldrb w8,[x21, #0x292]
02c6be74  ldr x23,[x23, #0xd40]
02c6be78  ldr x19,[x19, #0x1c0]
02c6be7c  mov w20,w1
02c6be80  mov x22,x0
02c6be84  tbnz w8,#0x0,0x02c6beb4
02c6be88  adrp x0,0x5e5d000
02c6be8c  ldr x0,[x0, #0xd40]
02c6be90  bl 0x029f5a50
02c6be94  adrp x0,0x5e59000
02c6be98  ldr x0,[x0, #0x1c0]
02c6be9c  bl 0x029f5a50
02c6bea0  adrp x0,0x5e63000
02c6bea4  ldr x0,[x0, #0xaf0]
02c6bea8  bl 0x029f5a50
02c6beac  mov w8,#0x1
02c6beb0  strb w8,[x21, #0x292]
02c6beb4  ldr x8,[x23]
02c6beb8  ldr x0,[x19]
02c6bebc  ldr x8,[x8, #0xb8]
02c6bec0  ldr w9,[x0, #0xe4]
02c6bec4  ldr x19,[x8]
02c6bec8  cbnz w9,0x02c6bed0
02c6becc  bl 0x029f5bd0
02c6bed0  mov x0,x19
02c6bed4  mov x1,xzr
02c6bed8  mov x2,xzr
02c6bedc  bl 0x057e14b4
02c6bee0  tbnz w0,#0x0,0x02c6bf3c
02c6bee4  bl 0x02c6b498
02c6bee8  tbz w0,#0x0,0x02c6bf38
02c6beec  tbnz w20,#0x1f,0x02c6bf3c
02c6bef0  cbz x19,0x02c6c078
02c6bef4  ldr x8,[x19, #0x40]
02c6bef8  cbz x8,0x02c6c078
02c6befc  ldr w9,[x8, #0x18]
02c6bf00  cmp w9,w20
02c6bf04  b.le 0x02c6bf3c
02c6bf08  add x8,x8,w20, UXTW  #0x2
02c6bf0c  ldr w23,[x8, #0x20]
02c6bf10  cmn w23,#0x1
02c6bf14  b.eq 0x02c6bf3c
02c6bf18  ldr w8,[x19, #0xc0]
02c6bf1c  cmn w8,#0x1
02c6bf20  b.eq 0x02c6bf54
02c6bf24  cmp w8,w20
02c6bf28  b.ne 0x02c6bf54
02c6bf2c  mov x0,x19
02c6bf30  bl 0x02c6a910
02c6bf34  b 0x02c6bf3c
02c6bf38  bl 0x02c6c080
02c6bf3c  mov w21,#0xffffffff
02c6bf40  mov w0,w21
02c6bf44  ldp x20,x19,[sp, #0x20]
02c6bf48  ldp x22,x21,[sp, #0x10]
02c6bf4c  ldp x30,x23,[sp], #0x30
02c6bf50  ret
02c6bf54  mov x0,x22
02c6bf58  bl 0x02c6bd74
02c6bf5c  cmn w0,#0x1
02c6bf60  b.eq 0x02c6c010
02c6bf64  ldr x8,[x22, #0x20]
02c6bf68  cbz x8,0x02c6c078
02c6bf6c  ldr w9,[x8, #0x18]
02c6bf70  mov w21,w0
02c6bf74  cmp w0,w9
02c6bf78  b.cs 0x02c6c07c
02c6bf7c  add x9,x8,w21, SXTW  #0x2
02c6bf80  ldr x8,[x19, #0x40]
02c6bf84  str w23,[x9, #0x20]
02c6bf88  cbz x8,0x02c6c078
02c6bf8c  ldr w9,[x8, #0x18]
02c6bf90  cmp w9,w20
02c6bf94  b.ls 0x02c6c07c
02c6bf98  mov w9,w20
02c6bf9c  mov x0,x19
02c6bfa0  mov w1,w20
02c6bfa4  add x8,x8,x9, LSL #0x2
02c6bfa8  mov w9,#0xffffffff
02c6bfac  mov w2,wzr
02c6bfb0  str w9,[x8, #0x20]
02c6bfb4  bl 0x02c6802c
02c6bfb8  adrp x20,0x625b000
02c6bfbc  ldrb w8,[x20, #0xa57]
02c6bfc0  cbnz w8,0x02c6bfd8
02c6bfc4  adrp x0,0x5e5d000
02c6bfc8  ldr x0,[x0, #0xd70]
02c6bfcc  bl 0x029f5a50
02c6bfd0  mov w8,#0x1
02c6bfd4  strb w8,[x20, #0xa57]
02c6bfd8  adrp x8,0x5e5d000
02c6bfdc  ldr x8,[x8, #0xd70]
02c6bfe0  ldr x8,[x8]
02c6bfe4  ldr x8,[x8, #0xb8]
02c6bfe8  ldr x0,[x8]
02c6bfec  cbz x0,0x02c6c078
02c6bff0  fmov s0,0x3f800000
02c6bff4  mov w1,#0x9
02c6bff8  mov x2,xzr
02c6bffc  mov x3,xzr
02c6c000  bl 0x02c1f10c
02c6c004  mov x0,x19
02c6c008  bl 0x02c6841c
02c6c00c  b 0x02c6bf40
02c6c010  adrp x8,0x5e63000
02c6c014  ldr x8,[x8, #0xaf0]
02c6c018  ldr x0,[x8]
02c6c01c  bl 0x02c68dbc
02c6c020  mov x1,xzr
02c6c024  bl 0x02c1dd54
02c6c028  adrp x19,0x625b000
02c6c02c  ldrb w8,[x19, #0xa57]
02c6c030  cbnz w8,0x02c6c048
02c6c034  adrp x0,0x5e5d000
02c6c038  ldr x0,[x0, #0xd70]
02c6c03c  bl 0x029f5a50
02c6c040  mov w8,#0x1
02c6c044  strb w8,[x19, #0xa57]
02c6c048  adrp x8,0x5e5d000
02c6c04c  ldr x8,[x8, #0xd70]
02c6c050  ldr x8,[x8]
02c6c054  ldr x8,[x8, #0xb8]
02c6c058  ldr x0,[x8]
02c6c05c  cbz x0,0x02c6c078
02c6c060  fmov s0,0x3f800000
02c6c064  mov w1,#0x5
02c6c068  mov x2,xzr
02c6c06c  mov x3,xzr
02c6c070  bl 0x02c1f10c
02c6c074  b 0x02c6bf3c
02c6c078  bl 0x029f5cfc
02c6c07c  bl 0x029f5d04
