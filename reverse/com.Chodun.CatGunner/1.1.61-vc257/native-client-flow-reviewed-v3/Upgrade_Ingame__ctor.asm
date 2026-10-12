02cb19b8  movi v0.2D,#-0x1
02cb19bc  adrp x8,0x1170000
02cb19c0  mov x1,xzr
02cb19c4  ldr d1,[x8, #0x8]
02cb19c8  mov w8,#0xffffffff
02cb19cc  str w8,[x0, #0xc4]
02cb19d0  str d1,[x0, #0x90]
02cb19d4  stur d0,[x0, #0xbc]
02cb19d8  b 0x057e2ee0
