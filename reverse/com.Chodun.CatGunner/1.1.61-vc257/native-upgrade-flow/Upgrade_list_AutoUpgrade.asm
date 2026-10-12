02cb2130  sub sp,sp,#0x90
02cb2134  stp x30,x27,[sp, #0x40]
02cb2138  stp x26,x25,[sp, #0x50]
02cb213c  stp x24,x23,[sp, #0x60]
02cb2140  stp x22,x21,[sp, #0x70]
02cb2144  stp x20,x19,[sp, #0x80]
02cb2148  adrp x20,0x625c000
02cb214c  mov x19,x0
02cb2150  ldrb w8,[x20, #0x551]
02cb2154  tbnz w8,#0x0,0x02cb2178
02cb2158  adrp x0,0x5e5d000
02cb215c  ldr x0,[x0, #0x338]
02cb2160  bl 0x029f5a50
02cb2164  adrp x0,0x5e5d000
02cb2168  ldr x0,[x0, #0x4e8]
02cb216c  bl 0x029f5a50
02cb2170  mov w8,#0x1
02cb2174  strb w8,[x20, #0x551]
02cb2178  movi v0.2D,#0x0
02cb217c  ldr x8,[x19, #0x20]
02cb2180  stp q0,q0,[sp, #0x20]
02cb2184  cbz x8,0x02cb22ec
02cb2188  adrp x21,0x5e5d000
02cb218c  adrp x22,0x5e5d000
02cb2190  mov w24,wzr
02cb2194  ldr x21,[x21, #0x4e8]
02cb2198  ldr x22,[x22, #0x338]
02cb219c  mov w25,#0x7fffffff
02cb21a0  mov w23,#0xffffffff
02cb21a4  mov w26,#0x7fffffff
02cb21a8  ldr w9,[x8, #0x18]
02cb21ac  cmp w24,w9
02cb21b0  b.ge 0x02cb2288
02cb21b4  b.cs 0x02cb230c
02cb21b8  add x8,x8,w24, SXTW  #0x3
02cb21bc  ldr x27,[x8, #0x20]
02cb21c0  cbz x27,0x02cb22ec
02cb21c4  ldr x0,[x21]
02cb21c8  ldr w20,[x27, #0x20]
02cb21cc  ldr w8,[x0, #0xe4]
02cb21d0  cbnz w8,0x02cb21d8
02cb21d4  bl 0x029f5bd0
02cb21d8  mov w0,w20
02cb21dc  bl 0x02cb1400
02cb21e0  tbnz w0,#0x0,0x02cb2278
02cb21e4  ldr x0,[x21]
02cb21e8  ldr w20,[x27, #0x20]
02cb21ec  ldr w8,[x0, #0xe4]
02cb21f0  cbnz w8,0x02cb21f8
02cb21f4  bl 0x029f5bd0
02cb21f8  mov x8,sp
02cb21fc  mov w0,w20
02cb2200  bl 0x02cb0710
02cb2204  ldr x0,[x22]
02cb2208  ldp q0,q1,[sp]
02cb220c  ldr w8,[x0, #0xe4]
02cb2210  stp q0,q1,[sp, #0x20]
02cb2214  cbnz w8,0x02cb2220
02cb2218  bl 0x029f5bd0
02cb221c  ldr x0,[x22]
02cb2220  ldr x8,[x0, #0xb8]
02cb2224  add x1,sp,#0x20
02cb2228  mov x2,xzr
02cb222c  add x0,x8,#0x30
02cb2230  bl 0x046595c4
02cb2234  tbnz w0,#0x0,0x02cb2278
02cb2238  ldr x0,[x21]
02cb223c  ldr w20,[x27, #0x20]
02cb2240  ldr w8,[x0, #0xe4]
02cb2244  cbnz w8,0x02cb224c
02cb2248  bl 0x029f5bd0
02cb224c  mov w0,w20
02cb2250  bl 0x02caf208
02cb2254  ldr w8,[x27, #0x20]
02cb2258  cmp w0,w25
02cb225c  b.lt 0x02cb226c
02cb2260  b.ne 0x02cb2278
02cb2264  cmp w8,w26
02cb2268  b.ge 0x02cb2278
02cb226c  mov w26,w8
02cb2270  mov w25,w0
02cb2274  mov w23,w24
02cb2278  ldr x8,[x19, #0x20]
02cb227c  add w24,w24,#0x1
02cb2280  cbnz x8,0x02cb21a8
02cb2284  b 0x02cb22ec
02cb2288  tbnz w23,#0x1f,0x02cb22f0
02cb228c  ldr x0,[x21]
02cb2290  ldr w9,[x0, #0xe4]
02cb2294  cbnz w9,0x02cb22a8
02cb2298  bl 0x029f5bd0
02cb229c  ldr x8,[x19, #0x20]
02cb22a0  cbz x8,0x02cb22ec
02cb22a4  ldr x0,[x21]
02cb22a8  ldr w9,[x8, #0x18]
02cb22ac  cmp w23,w9
02cb22b0  b.cs 0x02cb230c
02cb22b4  add x8,x8,w23, UXTW  #0x3
02cb22b8  ldr x8,[x8, #0x20]
02cb22bc  cbz x8,0x02cb22ec
02cb22c0  ldr x9,[x0, #0xb8]
02cb22c4  ldr x0,[x9]
02cb22c8  cbz x0,0x02cb22ec
02cb22cc  ldr w1,[x8, #0x20]
02cb22d0  bl 0x02cb15b4
02cb22d4  ldr x8,[x19, #0x20]
02cb22d8  mov w24,wzr
02cb22dc  mov w25,#0x7fffffff
02cb22e0  mov w23,#0xffffffff
02cb22e4  mov w26,#0x7fffffff
02cb22e8  cbnz x8,0x02cb21a8
02cb22ec  bl 0x029f5cfc
02cb22f0  ldp x20,x19,[sp, #0x80]
02cb22f4  ldp x22,x21,[sp, #0x70]
02cb22f8  ldp x24,x23,[sp, #0x60]
02cb22fc  ldp x26,x25,[sp, #0x50]
02cb2300  ldp x30,x27,[sp, #0x40]
02cb2304  add sp,sp,#0x90
02cb2308  ret
02cb230c  bl 0x029f5d04
