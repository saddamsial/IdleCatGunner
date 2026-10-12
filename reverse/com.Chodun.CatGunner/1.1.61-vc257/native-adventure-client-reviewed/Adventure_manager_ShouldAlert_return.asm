02c2ca08  str x30,[sp, #-0x50]!
02c2ca0c  stp x26,x25,[sp, #0x10]
02c2ca10  stp x24,x23,[sp, #0x20]
02c2ca14  stp x22,x21,[sp, #0x30]
02c2ca18  stp x20,x19,[sp, #0x40]
02c2ca1c  adrp x20,0x625b000
02c2ca20  mov x19,x0
02c2ca24  ldrb w8,[x20, #0xff9]
02c2ca28  tbnz w8,#0x0,0x02c2ca4c
02c2ca2c  adrp x0,0x5e59000
02c2ca30  ldr x0,[x0, #0x7d0]
02c2ca34  bl 0x029f5a50
02c2ca38  adrp x0,0x5e5d000
02c2ca3c  ldr x0,[x0, #0x3c0]
02c2ca40  bl 0x029f5a50
02c2ca44  mov w8,#0x1
02c2ca48  strb w8,[x20, #0xff9]
02c2ca4c  ldr x8,[x19, #0x28]
02c2ca50  cbz x8,0x02c2cb6c
02c2ca54  ldr w9,[x8, #0x18]
02c2ca58  cmp w9,#0x1
02c2ca5c  b.lt 0x02c2ca8c
02c2ca60  bic w10,w9,w9, ASR #0x1f
02c2ca64  mov w11,wzr
02c2ca68  cmp w9,w11
02c2ca6c  b.eq 0x02c2cb94
02c2ca70  add x12,x8,w11, SXTW  #0x2
02c2ca74  ldr w12,[x12, #0x20]
02c2ca78  cmp w12,#0x14
02c2ca7c  b.ge 0x02c2cb70
02c2ca80  add w11,w11,#0x1
02c2ca84  cmp w10,w11
02c2ca88  b.ne 0x02c2ca68
02c2ca8c  ldr x8,[x19, #0x20]
02c2ca90  cbz x8,0x02c2cb78
02c2ca94  adrp x8,0x5e5d000
02c2ca98  ldr x8,[x8, #0x3c0]
02c2ca9c  ldr x0,[x8]
02c2caa0  ldr w8,[x0, #0xe4]
02c2caa4  cbnz w8,0x02c2caac
02c2caa8  bl 0x029f5bd0
02c2caac  bl 0x02c25b48
02c2cab0  ldr x8,[x19, #0x20]
02c2cab4  cbz x8,0x02c2cb6c
02c2cab8  adrp x23,0x5e59000
02c2cabc  mov x20,x0
02c2cac0  mov w24,wzr
02c2cac4  ldr x23,[x23, #0x7d0]
02c2cac8  ldr w9,[x8, #0x18]
02c2cacc  cmp w24,w9
02c2cad0  b.ge 0x02c2cb78
02c2cad4  b.cs 0x02c2cb94
02c2cad8  add x9,x8,w24, SXTW  #0x3
02c2cadc  ldr x9,[x9, #0x20]
02c2cae0  cbz x9,0x02c2cb6c
02c2cae4  ldr x25,[x9, #0x18]
02c2cae8  cbz x25,0x02c2cb64
02c2caec  ldr x9,[x25, #0x18]
02c2caf0  cmp w9,#0x1
02c2caf4  b.lt 0x02c2cb64
02c2caf8  mov x21,xzr
02c2cafc  add x26,x25,#0x20
02c2cb00  cmp w21,w9
02c2cb04  b.cs 0x02c2cb94
02c2cb08  ldr x1,[x26, x21, LSL #0x3]
02c2cb0c  cbz x1,0x02c2cb6c
02c2cb10  ldrb w8,[x1, #0x10]
02c2cb14  cbz w8,0x02c2cb54
02c2cb18  mov x0,x19
02c2cb1c  mov w2,w21
02c2cb20  bl 0x02c2cb98
02c2cb24  ldr x8,[x23]
02c2cb28  mov x22,x0
02c2cb2c  ldr w9,[x8, #0xe4]
02c2cb30  cbnz w9,0x02c2cb3c
02c2cb34  mov x0,x8
02c2cb38  bl 0x029f5bd0
02c2cb3c  mov x0,x22
02c2cb40  mov x1,x20
02c2cb44  mov x2,xzr
02c2cb48  bl 0x04833274
02c2cb4c  tbnz w0,#0x0,0x02c2cb70
02c2cb50  ldr x9,[x25, #0x18]
02c2cb54  add x21,x21,#0x1
02c2cb58  cmp w21,w9
02c2cb5c  b.lt 0x02c2cb00
02c2cb60  ldr x8,[x19, #0x20]
02c2cb64  add w24,w24,#0x1
02c2cb68  cbnz x8,0x02c2cac8
02c2cb6c  bl 0x029f5cfc
02c2cb70  mov w0,#0x1
02c2cb74  b 0x02c2cb7c
02c2cb78  mov w0,wzr
02c2cb7c  ldp x20,x19,[sp, #0x40]
02c2cb80  ldp x22,x21,[sp, #0x30]
02c2cb84  ldp x24,x23,[sp, #0x20]
02c2cb88  ldp x26,x25,[sp, #0x10]
02c2cb8c  ldr x30,[sp], #0x50
02c2cb90  ret
02c2cb94  bl 0x029f5d04
