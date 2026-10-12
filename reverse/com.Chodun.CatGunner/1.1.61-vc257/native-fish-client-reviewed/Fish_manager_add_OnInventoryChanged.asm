02c5d080  str x30,[sp, #-0x30]!
02c5d084  stp x22,x21,[sp, #0x10]
02c5d088  stp x20,x19,[sp, #0x20]
02c5d08c  adrp x21,0x625c000
02c5d090  mov x19,x1
02c5d094  mov x20,x0
02c5d098  ldrb w8,[x21, #0x1f4]
02c5d09c  tbnz w8,#0x0,0x02c5d0b4
02c5d0a0  adrp x0,0x5e59000
02c5d0a4  ldr x0,[x0, #0x288]
02c5d0a8  bl 0x029f5a50
02c5d0ac  mov w8,#0x1
02c5d0b0  strb w8,[x21, #0x1f4]
02c5d0b4  adrp x22,0x5e59000
02c5d0b8  ldr x22,[x22, #0x288]
02c5d0bc  ldr x21,[x20, #0xa8]!
02c5d0c0  mov x0,x21
02c5d0c4  mov x1,x19
02c5d0c8  mov x2,xzr
02c5d0cc  bl 0x04896684
02c5d0d0  mov x8,x0
02c5d0d4  cbz x0,0x02c5d0e8
02c5d0d8  ldr x1,[x22]
02c5d0dc  ldr x9,[x8]
02c5d0e0  cmp x9,x1
02c5d0e4  b.ne 0x02c5d114
02c5d0e8  mov x0,x20
02c5d0ec  mov x1,x8
02c5d0f0  mov x2,x21
02c5d0f4  bl 0x02a2e558
02c5d0f8  cmp x0,x21
02c5d0fc  mov x21,x0
02c5d100  b.ne 0x02c5d0c0
02c5d104  ldp x20,x19,[sp, #0x20]
02c5d108  ldp x22,x21,[sp, #0x10]
02c5d10c  ldr x30,[sp], #0x30
02c5d110  ret
02c5d114  mov x0,x8
02c5d118  bl 0x029f607c
