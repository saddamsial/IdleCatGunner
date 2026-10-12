02cb0de8  cmp w0,#0x3
02cb0dec  b.cs 0x02cb0e00
02cb0df0  adrp x8,0x11b0000
02cb0df4  add x8,x8,#0x7ec
02cb0df8  ldr w0,[x8, w0, UXTW #0x2]
02cb0dfc  ret
02cb0e00  stp x30,x19,[sp, #-0x10]!
02cb0e04  adrp x0,0x5e59000
02cb0e08  ldr x0,[x0, #0xae0]
02cb0e0c  bl 0x029f5a64
02cb0e10  bl 0x029f5cec
02cb0e14  mov x19,x0
02cb0e18  adrp x0,0x5e64000
02cb0e1c  ldr x0,[x0, #0xb68]
02cb0e20  bl 0x029f5a64
02cb0e24  mov x1,x0
02cb0e28  mov x0,x19
02cb0e2c  mov x2,xzr
02cb0e30  bl 0x047b53a8
02cb0e34  adrp x0,0x5e64000
02cb0e38  ldr x0,[x0, #0xb70]
02cb0e3c  bl 0x029f5a64
02cb0e40  mov x1,x0
02cb0e44  mov x0,x19
02cb0e48  bl 0x029f5bc0
