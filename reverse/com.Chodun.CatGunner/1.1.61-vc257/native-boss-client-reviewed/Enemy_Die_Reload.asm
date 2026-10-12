02c5ceb8  str x30,[sp, #-0x20]!
02c5cebc  stp x20,x19,[sp, #0x10]
02c5cec0  adrp x20,0x625c000
02c5cec4  mov x19,x0
02c5cec8  ldrb w8,[x20, #0x1f3]
02c5cecc  tbnz w8,#0x0,0x02c5cf20
02c5ced0  adrp x0,0x5e63000
02c5ced4  ldr x0,[x0, #0x7c0]
02c5ced8  bl 0x029f5a50
02c5cedc  adrp x0,0x5e63000
02c5cee0  ldr x0,[x0, #0x480]
02c5cee4  bl 0x029f5a50
02c5cee8  adrp x0,0x5e63000
02c5ceec  ldr x0,[x0, #0x7c8]
02c5cef0  bl 0x029f5a50
02c5cef4  adrp x0,0x5e63000
02c5cef8  ldr x0,[x0, #0x7d0]
02c5cefc  bl 0x029f5a50
02c5cf00  adrp x0,0x5e63000
02c5cf04  ldr x0,[x0, #0x7d8]
02c5cf08  bl 0x029f5a50
02c5cf0c  adrp x0,0x5e63000
02c5cf10  ldr x0,[x0, #0x7e0]
02c5cf14  bl 0x029f5a50
02c5cf18  mov w8,#0x1
02c5cf1c  strb w8,[x20, #0x1f3]
02c5cf20  ldr w8,[x19, #0x20]
02c5cf24  cmp w8,#0x2
02c5cf28  b.gt 0x02c5cf68
02c5cf2c  cbz w8,0x02c5cfa8
02c5cf30  cmp w8,#0x1
02c5cf34  b.eq 0x02c5d000
02c5cf38  cmp w8,#0x2
02c5cf3c  b.ne 0x02c5cff4
02c5cf40  adrp x8,0x5e63000
02c5cf44  mov x0,x19
02c5cf48  ldr x8,[x8, #0x7c0]
02c5cf4c  ldr x1,[x8]
02c5cf50  bl 0x02fe5f2c
02c5cf54  cbz x0,0x02c5d06c
02c5cf58  ldp x20,x19,[sp, #0x10]
02c5cf5c  mov x1,xzr
02c5cf60  ldr x30,[sp], #0x20
02c5cf64  b 0x02c44df0
02c5cf68  cmp w8,#0x3
02c5cf6c  b.eq 0x02c5cfcc
02c5cf70  cmp w8,#0x4
02c5cf74  b.eq 0x02c5d044
02c5cf78  cmp w8,#0x5
02c5cf7c  b.ne 0x02c5cff4
02c5cf80  adrp x8,0x5e63000
02c5cf84  mov x0,x19
02c5cf88  ldr x8,[x8, #0x7d0]
02c5cf8c  ldr x1,[x8]
02c5cf90  bl 0x02fe5f2c
02c5cf94  cbz x0,0x02c5d06c
02c5cf98  ldp x20,x19,[sp, #0x10]
02c5cf9c  mov x1,xzr
02c5cfa0  ldr x30,[sp], #0x20
02c5cfa4  b 0x02c56148
02c5cfa8  adrp x8,0x5e63000
02c5cfac  mov x0,x19
02c5cfb0  ldr x8,[x8, #0x7e0]
02c5cfb4  ldr x1,[x8]
02c5cfb8  bl 0x02fe5f2c
02c5cfbc  cbz x0,0x02c5d06c
02c5cfc0  mov x1,xzr
02c5cfc4  bl 0x02cabeb4
02c5cfc8  b 0x02c5d020
02c5cfcc  adrp x8,0x5e63000
02c5cfd0  mov x0,x19
02c5cfd4  ldr x8,[x8, #0x480]
02c5cfd8  ldr x1,[x8]
02c5cfdc  bl 0x02fe5f2c
02c5cfe0  cbz x0,0x02c5d06c
02c5cfe4  ldp x20,x19,[sp, #0x10]
02c5cfe8  mov x1,xzr
02c5cfec  ldr x30,[sp], #0x20
02c5cff0  b 0x02c4cad0
02c5cff4  ldp x20,x19,[sp, #0x10]
02c5cff8  ldr x30,[sp], #0x20
02c5cffc  ret
02c5d000  adrp x8,0x5e63000
02c5d004  mov x0,x19
02c5d008  ldr x8,[x8, #0x7d8]
02c5d00c  ldr x1,[x8]
02c5d010  bl 0x02fe5f2c
02c5d014  cbz x0,0x02c5d06c
02c5d018  mov x1,xzr
02c5d01c  bl 0x02caba50
02c5d020  mov x0,x19
02c5d024  mov x1,xzr
02c5d028  bl 0x057dc1c8
02c5d02c  cbz x0,0x02c5d06c
02c5d030  ldp x20,x19,[sp, #0x10]
02c5d034  mov w1,wzr
02c5d038  mov x2,xzr
02c5d03c  ldr x30,[sp], #0x20
02c5d040  b 0x057dff3c
02c5d044  adrp x8,0x5e63000
02c5d048  mov x0,x19
02c5d04c  ldr x8,[x8, #0x7c8]
02c5d050  ldr x1,[x8]
02c5d054  bl 0x02fe5f2c
02c5d058  cbz x0,0x02c5d06c
02c5d05c  ldp x20,x19,[sp, #0x10]
02c5d060  mov x1,xzr
02c5d064  ldr x30,[sp], #0x20
02c5d068  b 0x02c4c1b0
02c5d06c  bl 0x029f5cfc
