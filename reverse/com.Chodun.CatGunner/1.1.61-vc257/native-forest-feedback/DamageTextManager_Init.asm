02b82ec4  stp x30,x27,[sp, #-0x50]!
02b82ec8  stp x26,x25,[sp, #0x10]
02b82ecc  stp x24,x23,[sp, #0x20]
02b82ed0  stp x22,x21,[sp, #0x30]
02b82ed4  stp x20,x19,[sp, #0x40]
02b82ed8  adrp x21,0x625b000
02b82edc  mov x19,x1
02b82ee0  mov x20,x0
02b82ee4  ldrb w8,[x21, #0x8e5]
02b82ee8  tbnz w8,#0x0,0x02b82f24
02b82eec  adrp x0,0x5e5d000
02b82ef0  ldr x0,[x0, #0x6f0]
02b82ef4  bl 0x029f5a50
02b82ef8  adrp x0,0x5e5d000
02b82efc  ldr x0,[x0, #0x6f8]
02b82f00  bl 0x029f5a50
02b82f04  adrp x0,0x5e5d000
02b82f08  ldr x0,[x0, #0x700]
02b82f0c  bl 0x029f5a50
02b82f10  adrp x0,0x5e5d000
02b82f14  ldr x0,[x0, #0x708]
02b82f18  bl 0x029f5a50
02b82f1c  mov w8,#0x1
02b82f20  strb w8,[x21, #0x8e5]
02b82f24  ldr x0,[x20, #0x30]
02b82f28  cbz x0,0x02b83044
02b82f2c  adrp x8,0x5e5d000
02b82f30  ldr x8,[x8, #0x700]
02b82f34  ldr x1,[x8]
02b82f38  bl 0x03e3ffc8
02b82f3c  cbz x19,0x02b83044
02b82f40  adrp x8,0x5e5d000
02b82f44  ldr x8,[x8, #0x6f0]
02b82f48  ldr w1,[x19, #0x18]
02b82f4c  ldr x0,[x8]
02b82f50  bl 0x029f5b40
02b82f54  mov x21,x20
02b82f58  mov x1,x0
02b82f5c  str x0,[x21, #0x28]!
02b82f60  mov x0,x21
02b82f64  bl 0x029f59f4
02b82f68  ldr w8,[x19, #0x18]
02b82f6c  cmp w8,#0x1
02b82f70  b.lt 0x02b8302c
02b82f74  adrp x24,0x5e5d000
02b82f78  adrp x25,0x5e5d000
02b82f7c  mov w22,wzr
02b82f80  ldr x24,[x24, #0x708]
02b82f84  ldr x25,[x25, #0x6f8]
02b82f88  mov w26,#0x20
02b82f8c  cmp w22,w8
02b82f90  b.cs 0x02b83048
02b82f94  ldr x8,[x19, x26, LSL #0x0]
02b82f98  cbz x8,0x02b83044
02b82f9c  ldr x0,[x8, #0x18]
02b82fa0  cbz x0,0x02b83044
02b82fa4  ldr x1,[x24]
02b82fa8  ldr x27,[x21]
02b82fac  bl 0x030a02b4
02b82fb0  cbz x27,0x02b83044
02b82fb4  mov x23,x0
02b82fb8  cbz x0,0x02b82fd0
02b82fbc  ldr x8,[x27]
02b82fc0  mov x0,x23
02b82fc4  ldr x1,[x8, #0x40]
02b82fc8  bl 0x029f5bd4
02b82fcc  cbz x0,0x02b8304c
02b82fd0  ldr w8,[x27, #0x18]
02b82fd4  cmp w22,w8
02b82fd8  b.cs 0x02b83048
02b82fdc  add x0,x27,x26
02b82fe0  mov x1,x23
02b82fe4  str x23,[x27, x26, LSL #0x0]
02b82fe8  bl 0x029f59f4
02b82fec  ldr w8,[x19, #0x18]
02b82ff0  cmp w22,w8
02b82ff4  b.cs 0x02b83048
02b82ff8  ldr x8,[x19, x26, LSL #0x0]
02b82ffc  cbz x8,0x02b83044
02b83000  ldr x0,[x20, #0x30]
02b83004  cbz x0,0x02b83044
02b83008  ldr x1,[x8, #0x10]
02b8300c  ldr x3,[x25]
02b83010  mov w2,w22
02b83014  bl 0x03e3fe40
02b83018  ldr w8,[x19, #0x18]
02b8301c  add w22,w22,#0x1
02b83020  add x26,x26,#0x8
02b83024  cmp w22,w8
02b83028  b.lt 0x02b82f8c
02b8302c  ldp x20,x19,[sp, #0x40]
02b83030  ldp x22,x21,[sp, #0x30]
02b83034  ldp x24,x23,[sp, #0x20]
02b83038  ldp x26,x25,[sp, #0x10]
02b8303c  ldp x30,x27,[sp], #0x50
02b83040  ret
02b83044  bl 0x029f5cfc
02b83048  bl 0x029f5d04
02b8304c  bl 0x029f5d20
02b83050  mov x1,xzr
02b83054  bl 0x029f5bc0
