02c6b15c  str x30,[sp, #-0x20]!
02c6b160  stp x20,x19,[sp, #0x10]
02c6b164  ldr w20,[x0, #0x10]
02c6b168  mov x19,x0
02c6b16c  cbz w20,0x02c6b190
02c6b170  cmp w20,#0x1
02c6b174  b.ne 0x02c6b1b0
02c6b178  ldr x0,[x19, #0x20]
02c6b17c  mov w8,#0xffffffff
02c6b180  str w8,[x19, #0x10]
02c6b184  cbz x0,0x02c6b1c4
02c6b188  bl 0x02c69758
02c6b18c  b 0x02c6b1b0
02c6b190  str xzr,[x19, #0x18]!
02c6b194  mov w8,#0xffffffff
02c6b198  mov x0,x19
02c6b19c  mov x1,xzr
02c6b1a0  stur w8,[x19, #-0x8]
02c6b1a4  bl 0x029f59f4
02c6b1a8  mov w8,#0x1
02c6b1ac  stur w8,[x19, #-0x8]
02c6b1b0  cmp w20,#0x0
02c6b1b4  ldp x20,x19,[sp, #0x10]
02c6b1b8  cset w0,eq
02c6b1bc  ldr x30,[sp], #0x20
02c6b1c0  ret
02c6b1c4  bl 0x029f5cfc
