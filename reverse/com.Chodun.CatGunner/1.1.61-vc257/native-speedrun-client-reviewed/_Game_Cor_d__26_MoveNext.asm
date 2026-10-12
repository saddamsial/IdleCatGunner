02caafd0  str d8,[sp, #-0x30]!
02caafd4  stp x30,x21,[sp, #0x10]
02caafd8  stp x20,x19,[sp, #0x20]
02caafdc  adrp x20,0x625c000
02caafe0  mov x19,x0
02caafe4  ldrb w8,[x20, #0x508]
02caafe8  tbnz w8,#0x0,0x02cab000
02caafec  adrp x0,0x5e5d000
02caaff0  ldr x0,[x0, #0x338]
02caaff4  bl 0x029f5a50
02caaff8  mov w8,#0x1
02caaffc  strb w8,[x20, #0x508]
02cab000  ldr w8,[x19, #0x10]
02cab004  ldr x20,[x19, #0x20]
02cab008  cmp w8,#0x1
02cab00c  b.eq 0x02cab04c
02cab010  cbnz w8,0x02cab0dc
02cab014  mov w8,#0xffffffff
02cab018  str w8,[x19, #0x10]
02cab01c  cbz x20,0x02cab0f0
02cab020  ldr s0,[x20, #0x64]
02cab024  ldr x0,[x20, #0x80]
02cab028  str s0,[x20, #0x60]
02cab02c  cbz x0,0x02cab0f0
02cab030  fmov s1,s0
02cab034  bl 0x02cab0f4
02cab038  ldr x0,[x20, #0x80]
02cab03c  cbz x0,0x02cab0f0
02cab040  movi d0,#0x0
02cab044  bl 0x02ca90e8
02cab048  b 0x02cab058
02cab04c  mov w8,#0xffffffff
02cab050  str w8,[x19, #0x10]
02cab054  cbz x20,0x02cab0f0
02cab058  ldr s8,[x20, #0x60]
02cab05c  fcmp s8,#0.0
02cab060  b.le 0x02cab0cc
02cab064  adrp x21,0x5e5d000
02cab068  ldr x21,[x21, #0x338]
02cab06c  ldr x0,[x21]
02cab070  ldr w8,[x0, #0xe4]
02cab074  cbnz w8,0x02cab084
02cab078  bl 0x029f5bd0
02cab07c  ldr x0,[x21]
02cab080  ldr s8,[x20, #0x60]
02cab084  ldr x8,[x0, #0xb8]
02cab088  ldrb w8,[x8]
02cab08c  cbz w8,0x02cab0cc
02cab090  mov x0,xzr
02cab094  bl 0x057ebabc
02cab098  fsub s0,s8,s0
02cab09c  ldr x0,[x20, #0x80]
02cab0a0  str s0,[x20, #0x60]
02cab0a4  cbz x0,0x02cab0f0
02cab0a8  ldr s1,[x20, #0x64]
02cab0ac  bl 0x02cab0f4
02cab0b0  str xzr,[x19, #0x18]!
02cab0b4  mov x0,x19
02cab0b8  mov x1,xzr
02cab0bc  bl 0x029f59f4
02cab0c0  mov w0,#0x1
02cab0c4  stur w0,[x19, #-0x8]
02cab0c8  b 0x02cab0e0
02cab0cc  fcmp s8,#0.0
02cab0d0  b.hi 0x02cab0dc
02cab0d4  mov x0,x20
02cab0d8  bl 0x02ca91c4
02cab0dc  mov w0,wzr
02cab0e0  ldp x20,x19,[sp, #0x20]
02cab0e4  ldp x30,x21,[sp, #0x10]
02cab0e8  ldr d8,[sp], #0x30
02cab0ec  ret
02cab0f0  bl 0x029f5cfc
