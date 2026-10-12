02c5d11c  str x30,[sp, #-0x30]!
02c5d120  stp x22,x21,[sp, #0x10]
02c5d124  stp x20,x19,[sp, #0x20]
02c5d128  adrp x21,0x625c000
02c5d12c  mov x19,x1
02c5d130  mov x20,x0
02c5d134  ldrb w8,[x21, #0x1f5]
02c5d138  tbnz w8,#0x0,0x02c5d150
02c5d13c  adrp x0,0x5e59000
02c5d140  ldr x0,[x0, #0x288]
02c5d144  bl 0x029f5a50
02c5d148  mov w8,#0x1
02c5d14c  strb w8,[x21, #0x1f5]
02c5d150  adrp x22,0x5e59000
02c5d154  ldr x22,[x22, #0x288]
02c5d158  ldr x21,[x20, #0xa8]!
02c5d15c  mov x0,x21
02c5d160  mov x1,x19
02c5d164  mov x2,xzr
02c5d168  bl 0x04896870
02c5d16c  mov x8,x0
02c5d170  cbz x0,0x02c5d184
02c5d174  ldr x1,[x22]
02c5d178  ldr x9,[x8]
02c5d17c  cmp x9,x1
02c5d180  b.ne 0x02c5d1b0
02c5d184  mov x0,x20
02c5d188  mov x1,x8
02c5d18c  mov x2,x21
02c5d190  bl 0x02a2e558
02c5d194  cmp x0,x21
02c5d198  mov x21,x0
02c5d19c  b.ne 0x02c5d15c
02c5d1a0  ldp x20,x19,[sp, #0x20]
02c5d1a4  ldp x22,x21,[sp, #0x10]
02c5d1a8  ldr x30,[sp], #0x30
02c5d1ac  ret
02c5d1b0  mov x0,x8
02c5d1b4  bl 0x029f607c
