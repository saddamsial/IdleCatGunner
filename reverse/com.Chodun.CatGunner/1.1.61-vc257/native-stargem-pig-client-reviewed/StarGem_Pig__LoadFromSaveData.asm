02ca1940  stp x30,x21,[sp, #-0x20]!
02ca1944  stp x20,x19,[sp, #0x10]
02ca1948  adrp x21,0x625c000
02ca194c  mov x20,x1
02ca1950  mov x19,x0
02ca1954  ldrb w8,[x21, #0x486]
02ca1958  tbnz w8,#0x0,0x02ca1970
02ca195c  adrp x0,0x5e5e000
02ca1960  ldr x0,[x0, #0x3e0]
02ca1964  bl 0x029f5a50
02ca1968  mov w8,#0x1
02ca196c  strb w8,[x21, #0x486]
02ca1970  adrp x21,0x5e5e000
02ca1974  ldr x21,[x21, #0x3e0]
02ca1978  cbz x20,0x02ca19b4
02ca197c  ldr w8,[x20, #0x3f0]
02ca1980  cmp w8,#0x0
02ca1984  b.le 0x02ca19b4
02ca1988  cmp w8,#0x3
02ca198c  mov w9,#0x3
02ca1990  movi v0.2D,#0x0
02ca1994  csel w8,w8,w9,lt
02ca1998  str w8,[x19, #0x20]
02ca199c  add x8,x20,#0x3f4
02ca19a0  ldr d1,[x8]
02ca19a4  smax v0.2S,v1.2S,v0.2S
02ca19a8  stur d0,[x19, #0x24]
02ca19ac  ldr w8,[x20, #0x3fc]
02ca19b0  b 0x02ca19c8
02ca19b4  adrp x8,0x116f000
02ca19b8  str wzr,[x19, #0x28]
02ca19bc  ldr d0,[x8, #0xdf0]
02ca19c0  mov w8,#0xffffffff
02ca19c4  str d0,[x19, #0x20]
02ca19c8  mov x0,x19
02ca19cc  str w8,[x19, #0x2c]
02ca19d0  bl 0x02ca0830
02ca19d4  ldr x0,[x21]
02ca19d8  ldr w8,[x0, #0xe4]
02ca19dc  cbnz w8,0x02ca19e8
02ca19e0  bl 0x029f5bd0
02ca19e4  ldr x0,[x21]
02ca19e8  ldr x8,[x0, #0xb8]
02ca19ec  ldr x8,[x8, #0x18]
02ca19f0  cbz x8,0x02ca1a0c
02ca19f4  ldp x20,x19,[sp, #0x10]
02ca19f8  ldr x0,[x8, #0x40]
02ca19fc  ldr x1,[x8, #0x28]
02ca1a00  ldr x2,[x8, #0x18]
02ca1a04  ldp x30,x21,[sp], #0x20
02ca1a08  br x2
02ca1a0c  ldp x20,x19,[sp, #0x10]
02ca1a10  ldp x30,x21,[sp], #0x20
02ca1a14  ret
