02cae16c  str d8,[sp, #-0x30]!
02cae170  stp x30,x21,[sp, #0x10]
02cae174  stp x20,x19,[sp, #0x20]
02cae178  adrp x20,0x625c000
02cae17c  mov x19,x0
02cae180  ldrb w8,[x20, #0x52a]
02cae184  tbnz w8,#0x0,0x02cae19c
02cae188  adrp x0,0x5e5d000
02cae18c  ldr x0,[x0, #0x338]
02cae190  bl 0x029f5a50
02cae194  mov w8,#0x1
02cae198  strb w8,[x20, #0x52a]
02cae19c  ldr w8,[x19, #0x10]
02cae1a0  ldr x20,[x19, #0x20]
02cae1a4  cmp w8,#0x1
02cae1a8  b.eq 0x02cae1e0
02cae1ac  cbnz w8,0x02cae278
02cae1b0  mov w8,#0xffffffff
02cae1b4  str w8,[x19, #0x10]
02cae1b8  cbz x20,0x02cae28c
02cae1bc  mov x0,x20
02cae1c0  bl 0x02cad0dc
02cae1c4  ldr x0,[x20, #0xa0]
02cae1c8  str s0,[x20, #0x98]
02cae1cc  cbz x0,0x02cae28c
02cae1d0  fmov s0,0x3f800000
02cae1d4  mov x1,xzr
02cae1d8  bl 0x02c7a5cc
02cae1dc  b 0x02cae1ec
02cae1e0  mov w8,#0xffffffff
02cae1e4  str w8,[x19, #0x10]
02cae1e8  cbz x20,0x02cae28c
02cae1ec  ldr s8,[x20, #0x98]
02cae1f0  fcmp s8,#0.0
02cae1f4  b.le 0x02cae268
02cae1f8  adrp x21,0x5e5d000
02cae1fc  ldr x21,[x21, #0x338]
02cae200  ldr x0,[x21]
02cae204  ldr w8,[x0, #0xe4]
02cae208  cbnz w8,0x02cae218
02cae20c  bl 0x029f5bd0
02cae210  ldr x0,[x21]
02cae214  ldr s8,[x20, #0x98]
02cae218  ldr x8,[x0, #0xb8]
02cae21c  ldrb w8,[x8]
02cae220  cbz w8,0x02cae268
02cae224  mov x0,xzr
02cae228  bl 0x057ebabc
02cae22c  fsub s0,s8,s0
02cae230  ldr x0,[x20, #0xa0]
02cae234  str s0,[x20, #0x98]
02cae238  cbz x0,0x02cae28c
02cae23c  ldr s1,[x20, #0x9c]
02cae240  mov x1,xzr
02cae244  fdiv s0,s0,s1
02cae248  bl 0x02c7a5cc
02cae24c  str xzr,[x19, #0x18]!
02cae250  mov x0,x19
02cae254  mov x1,xzr
02cae258  bl 0x029f59f4
02cae25c  mov w0,#0x1
02cae260  stur w0,[x19, #-0x8]
02cae264  b 0x02cae27c
02cae268  fcmp s8,#0.0
02cae26c  b.hi 0x02cae278
02cae270  mov x0,x20
02cae274  bl 0x02cad740
02cae278  mov w0,wzr
02cae27c  ldp x20,x19,[sp, #0x20]
02cae280  ldp x30,x21,[sp, #0x10]
02cae284  ldr d8,[sp], #0x30
02cae288  ret
02cae28c  bl 0x029f5cfc
