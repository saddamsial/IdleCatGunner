02c340f8  sub sp,sp,#0x60
02c340fc  str x30,[sp, #0x30]
02c34100  stp x22,x21,[sp, #0x40]
02c34104  stp x20,x19,[sp, #0x50]
02c34108  adrp x21,0x625c000
02c3410c  mov x19,x1
02c34110  mov x20,x0
02c34114  ldrb w8,[x21, #0x50]
02c34118  tbnz w8,#0x0,0x02c34154
02c3411c  adrp x0,0x5e62000
02c34120  ldr x0,[x0, #0xfa0]
02c34124  bl 0x029f5a50
02c34128  adrp x0,0x5e62000
02c3412c  ldr x0,[x0, #0xfa8]
02c34130  bl 0x029f5a50
02c34134  adrp x0,0x5e62000
02c34138  ldr x0,[x0, #0xfb0]
02c3413c  bl 0x029f5a50
02c34140  adrp x0,0x5e62000
02c34144  ldr x0,[x0, #0xfc0]
02c34148  bl 0x029f5a50
02c3414c  mov w8,#0x1
02c34150  strb w8,[x21, #0x50]
02c34154  ldr x0,[x20, #0xc8]
02c34158  stp xzr,xzr,[sp, #0x18]
02c3415c  str xzr,[sp, #0x28]
02c34160  cbz x0,0x02c341d8
02c34164  adrp x8,0x5e62000
02c34168  adrp x22,0x5e62000
02c3416c  adrp x21,0x5e62000
02c34170  ldr x8,[x8, #0xfc0]
02c34174  ldr x22,[x22, #0xfa8]
02c34178  ldr x21,[x21, #0xfa0]
02c3417c  add x20,sp,#0x18
02c34180  ldr x1,[x8]
02c34184  add x8,sp,#0x18
02c34188  bl 0x045c2058
02c3418c  stp xzr,x20,[sp, #0x8]
02c34190  ldr x1,[x22]
02c34194  add x0,sp,#0x18
02c34198  bl 0x03fd486c
02c3419c  ldr x8,[sp, #0x28]
02c341a0  mov w20,w0
02c341a4  cmp x8,x19
02c341a8  cset w8,ne
02c341ac  and w8,w0,w8
02c341b0  tbnz w8,#0x0,0x02c34190
02c341b4  ldr x1,[x21]
02c341b8  add x0,sp,#0x18
02c341bc  bl 0x03fd4868
02c341c0  and w0,w20,#0x1
02c341c4  ldp x20,x19,[sp, #0x50]
02c341c8  ldp x22,x21,[sp, #0x40]
02c341cc  ldr x30,[sp, #0x30]
02c341d0  add sp,sp,#0x60
02c341d4  ret
02c341d8  bl 0x029f5cfc
