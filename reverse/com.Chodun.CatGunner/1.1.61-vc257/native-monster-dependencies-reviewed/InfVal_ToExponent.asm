04656e90  sub sp,sp,#0x70
04656e94  str x30,[sp, #0x40]
04656e98  stp x22,x21,[sp, #0x50]
04656e9c  stp x20,x19,[sp, #0x60]
04656ea0  movi v0.2D,#0x0
04656ea4  ldr w22,[x0, #0x8]
04656ea8  mov x19,x8
04656eac  cmp w22,w1
04656eb0  stp q0,q0,[sp]
04656eb4  b.ne 0x04656ec0
04656eb8  ldp q0,q1,[x0]
04656ebc  b 0x04656f00
04656ec0  mov w21,w2
04656ec4  mov w20,w1
04656ec8  stp q0,q0,[sp, #0x20]
04656ecc  ldp x1,x2,[x0, #0x10]
04656ed0  add x0,sp,#0x20
04656ed4  bl 0x04654cd0
04656ed8  str w22,[sp, #0x28]
04656edc  ldp q1,q0,[sp, #0x20]
04656ee0  stp q1,q0,[sp]
04656ee4  tbz w21,#0x0,0x04656ef0
04656ee8  str w20,[sp, #0x8]
04656eec  b 0x04656efc
04656ef0  mov x0,sp
04656ef4  mov w1,w20
04656ef8  bl 0x04654f68
04656efc  ldp q0,q1,[sp]
04656f00  stp q0,q1,[x19]
04656f04  ldp x20,x19,[sp, #0x60]
04656f08  ldp x22,x21,[sp, #0x50]
04656f0c  ldr x30,[sp, #0x40]
04656f10  add sp,sp,#0x70
04656f14  ret
