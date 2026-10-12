02c656f0  str x30,[sp, #-0x20]!
02c656f4  stp x20,x19,[sp, #0x10]
02c656f8  adrp x20,0x625c000
02c656fc  mov x19,x0
02c65700  ldrb w8,[x20, #0x24c]
02c65704  tbnz w8,#0x0,0x02c65728
02c65708  adrp x0,0x5e63000
02c6570c  ldr x0,[x0, #0x9d8]
02c65710  bl 0x029f5a50
02c65714  adrp x0,0x5e59000
02c65718  ldr x0,[x0, #0x1c0]
02c6571c  bl 0x029f5a50
02c65720  mov w8,#0x1
02c65724  strb w8,[x20, #0x24c]
02c65728  ldr x0,[x19, #0xd0]
02c6572c  strb wzr,[x19, #0x68]
02c65730  strb wzr,[x19, #0xa4]
02c65734  strb wzr,[x19, #0xcc]
02c65738  strb wzr,[x19, #0xdc]
02c6573c  str wzr,[x19, #0xd8]
02c65740  str wzr,[x19, #0x9c]
02c65744  cbz x0,0x02c657cc
02c65748  adrp x8,0x5e63000
02c6574c  ldr x8,[x8, #0x9d8]
02c65750  ldr x1,[x8]
02c65754  bl 0x04281f48
02c65758  ldr x0,[x19, #0x58]
02c6575c  cbz x0,0x02c657cc
02c65760  adrp x20,0x5e59000
02c65764  mov w1,wzr
02c65768  mov x2,xzr
02c6576c  ldr x20,[x20, #0x1c0]
02c65770  bl 0x0586b718
02c65774  mov x0,x19
02c65778  mov x1,xzr
02c6577c  bl 0x057e16c8
02c65780  ldr x0,[x20]
02c65784  ldr x20,[x19, #0x80]
02c65788  ldr w8,[x0, #0xe4]
02c6578c  cbnz w8,0x02c65794
02c65790  bl 0x029f5bd0
02c65794  mov x0,x20
02c65798  mov x1,xzr
02c6579c  bl 0x057e50f4
02c657a0  tbz w0,#0x0,0x02c657c0
02c657a4  ldr x0,[x19, #0x80]
02c657a8  cbz x0,0x02c657cc
02c657ac  ldp x20,x19,[sp, #0x10]
02c657b0  mov w1,#0x1
02c657b4  mov x2,xzr
02c657b8  ldr x30,[sp], #0x20
02c657bc  b 0x05866a54
02c657c0  ldp x20,x19,[sp, #0x10]
02c657c4  ldr x30,[sp], #0x20
02c657c8  ret
02c657cc  bl 0x029f5cfc
