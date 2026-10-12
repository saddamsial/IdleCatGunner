02ca96cc  sub sp,sp,#0x120
02ca96d0  str x29,[sp, #0xe0]
02ca96d4  stp x30,x23,[sp, #0xf0]
02ca96d8  stp x22,x21,[sp, #0x100]
02ca96dc  stp x20,x19,[sp, #0x110]
02ca96e0  adrp x22,0x625c000
02ca96e4  mov w20,w1
02ca96e8  mov x21,x0
02ca96ec  ldrb w9,[x22, #0x51a]
02ca96f0  mov x19,x8
02ca96f4  tbnz w9,#0x0,0x02ca9724
02ca96f8  adrp x0,0x5e64000
02ca96fc  ldr x0,[x0, #0xa08]
02ca9700  bl 0x029f5a50
02ca9704  adrp x0,0x5e64000
02ca9708  ldr x0,[x0, #0xa10]
02ca970c  bl 0x029f5a50
02ca9710  adrp x0,0x5e5d000
02ca9714  ldr x0,[x0, #0xc20]
02ca9718  bl 0x029f5a50
02ca971c  mov w8,#0x1
02ca9720  strb w8,[x22, #0x51a]
02ca9724  movi v0.2D,#0x0
02ca9728  ldr x8,[x21, #0x70]
02ca972c  stp q0,q0,[sp, #0x40]
02ca9730  stp q0,q0,[sp, #0x60]
02ca9734  stp q0,q0,[sp, #0x80]
02ca9738  stp q0,q0,[sp, #0xa0]
02ca973c  cbz x8,0x02ca9854
02ca9740  ldr w9,[x8, #0x18]
02ca9744  cmp w9,w20
02ca9748  b.le 0x02ca9760
02ca974c  b.ls 0x02ca9858
02ca9750  sxtw x9,w20
02ca9754  add x8,x8,x9, LSL #0x5
02ca9758  ldp q0,q1,[x8, #0x20]
02ca975c  b 0x02ca9838
02ca9760  ldr x0,[x21, #0x80]
02ca9764  cbz x0,0x02ca9854
02ca9768  adrp x8,0x5e64000
02ca976c  add x2,sp,#0xa0
02ca9770  mov w1,w20
02ca9774  ldr x8,[x8, #0xa08]
02ca9778  ldr x3,[x8]
02ca977c  bl 0x03db0648
02ca9780  tbz w0,#0x0,0x02ca978c
02ca9784  ldp q0,q1,[sp, #0xa0]
02ca9788  b 0x02ca9838
02ca978c  ldr x22,[x21, #0x70]
02ca9790  cbz x22,0x02ca9854
02ca9794  adrp x8,0x5e5d000
02ca9798  ldr x8,[x8, #0xc20]
02ca979c  ldr x0,[x8]
02ca97a0  ldr w8,[x22, #0x18]
02ca97a4  ldr w9,[x0, #0xe4]
02ca97a8  sub w23,w8,#0x1
02ca97ac  cbnz w9,0x02ca97b4
02ca97b0  bl 0x029f5bd0
02ca97b4  sub w0,w20,w23
02ca97b8  add x8,sp,#0x60
02ca97bc  bl 0x02cace94
02ca97c0  ldr w8,[x22, #0x18]
02ca97c4  cmp w23,w8
02ca97c8  b.cs 0x02ca9858
02ca97cc  sxtw x8,w23
02ca97d0  add x1,sp,#0x60
02ca97d4  mov x2,xzr
02ca97d8  add x9,x22,x8, LSL #0x5
02ca97dc  add x8,sp,#0x20
02ca97e0  add x0,x9,#0x20
02ca97e4  bl 0x04658538
02ca97e8  ldp q0,q1,[sp, #0x20]
02ca97ec  mov x8,sp
02ca97f0  add x0,sp,#0x40
02ca97f4  mov w1,#0x2
02ca97f8  mov x2,xzr
02ca97fc  stp q0,q1,[sp, #0x40]
02ca9800  bl 0x04658464
02ca9804  ldp q0,q1,[sp]
02ca9808  ldr x0,[x21, #0x80]
02ca980c  stp q0,q1,[sp, #0x80]
02ca9810  cbz x0,0x02ca9854
02ca9814  adrp x8,0x5e64000
02ca9818  add x2,sp,#0xc0
02ca981c  mov w1,w20
02ca9820  ldr x8,[x8, #0xa10]
02ca9824  ldp q0,q1,[sp]
02ca9828  ldr x3,[x8]
02ca982c  stp q0,q1,[sp, #0xc0]
02ca9830  bl 0x03daea4c
02ca9834  ldp q0,q1,[sp, #0x80]
02ca9838  stp q0,q1,[x19]
02ca983c  ldp x20,x19,[sp, #0x110]
02ca9840  ldp x22,x21,[sp, #0x100]
02ca9844  ldr x29,[sp, #0xe0]
02ca9848  ldp x30,x23,[sp, #0xf0]
02ca984c  add sp,sp,#0x120
02ca9850  ret
02ca9854  bl 0x029f5cfc
02ca9858  bl 0x029f5d04
