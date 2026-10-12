02c37fe8  cmp w0,#0x3
02c37fec  b.cs 0x02c38000
02c37ff0  adrp x8,0x11b0000
02c37ff4  add x8,x8,#0x52c
02c37ff8  ldr w0,[x8, w0, UXTW #0x2]
02c37ffc  ret
02c38000  stp x30,x19,[sp, #-0x10]!
02c38004  adrp x0,0x5e59000
02c38008  ldr x0,[x0, #0xae0]
02c3800c  bl 0x029f5a64
02c38010  bl 0x029f5cec
02c38014  mov x19,x0
02c38018  adrp x0,0x5e5e000
02c3801c  ldr x0,[x0, #0x2c8]
02c38020  bl 0x029f5a64
02c38024  mov x1,x0
02c38028  mov x0,x19
02c3802c  mov x2,xzr
02c38030  bl 0x047b53a8
02c38034  adrp x0,0x5e63000
02c38038  ldr x0,[x0, #0x1a8]
02c3803c  bl 0x029f5a64
02c38040  mov x1,x0
02c38044  mov x0,x19
02c38048  bl 0x029f5bc0
