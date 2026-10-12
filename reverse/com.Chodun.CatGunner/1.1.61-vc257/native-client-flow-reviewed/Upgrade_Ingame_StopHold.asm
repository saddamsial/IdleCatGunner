02cb1948  str x30,[sp, #-0x20]!
02cb194c  stp x20,x19,[sp, #0x10]
02cb1950  mov x20,x0
02cb1954  ldr x1,[x20, #0xd0]!
02cb1958  cbz x1,0x02cb1980
02cb195c  mov x2,xzr
02cb1960  mov x19,x0
02cb1964  bl 0x057e237c
02cb1968  mov x0,x20
02cb196c  str xzr,[x19, #0xd0]
02cb1970  mov x1,xzr
02cb1974  ldp x20,x19,[sp, #0x10]
02cb1978  ldr x30,[sp], #0x20
02cb197c  b 0x029f59f4
02cb1980  ldp x20,x19,[sp, #0x10]
02cb1984  ldr x30,[sp], #0x20
02cb1988  ret
