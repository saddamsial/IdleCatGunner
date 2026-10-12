02c8742c  str x30,[sp, #-0x20]!
02c87430  stp x20,x19,[sp, #0x10]
02c87434  mov x20,x0
02c87438  ldr x0,[x0, #0x18]
02c8743c  mov x2,xzr
02c87440  ldr x1,[x20, #0x20]
02c87444  mov x19,x8
02c87448  bl 0x02b1e644
02c8744c  ldr x8,[x20, #0x30]
02c87450  cbz x8,0x02c87490
02c87454  ldr w10,[x8, #0x18]
02c87458  sub w9,w10,#0x1
02c8745c  cmp w0,w9
02c87460  csel w9,w0,w9,lt
02c87464  cmp w0,#0x0
02c87468  csel w9,wzr,w9,lt
02c8746c  cmp w9,w10
02c87470  b.cs 0x02c87494
02c87474  sxtw x9,w9
02c87478  add x8,x8,x9, LSL #0x5
02c8747c  ldp q0,q1,[x8, #0x20]
02c87480  stp q0,q1,[x19]
02c87484  ldp x20,x19,[sp, #0x10]
02c87488  ldr x30,[sp], #0x20
02c8748c  ret
02c87490  bl 0x029f5cfc
02c87494  bl 0x029f5d04
