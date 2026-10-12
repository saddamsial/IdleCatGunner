02c089ac  sub sp,sp,#0x30
02c089b0  stp x30,x19,[sp, #0x20]
02c089b4  fmov x9,d0
02c089b8  mov x19,x8
02c089bc  mov x8,#0x7ff0000000000000
02c089c0  and x10,x9,#0x7fffffffffffffff
02c089c4  adrp x9,0x116f000
02c089c8  cmp x10,x8
02c089cc  b.hi 0x02c089e0
02c089d0  ldr d1,[x9, #0xc10]
02c089d4  fcmp d0,d1
02c089d8  ccmp x10,x8,#0x4,le
02c089dc  b.ne 0x02c089e4
02c089e0  ldr d0,[x9, #0xc10]
02c089e4  mov x8,sp
02c089e8  mov x0,xzr
02c089ec  bl 0x04656c9c
02c089f0  ldp q0,q1,[sp]
02c089f4  stp q0,q1,[x19]
02c089f8  ldp x30,x19,[sp, #0x20]
02c089fc  add sp,sp,#0x30
02c08a00  ret
