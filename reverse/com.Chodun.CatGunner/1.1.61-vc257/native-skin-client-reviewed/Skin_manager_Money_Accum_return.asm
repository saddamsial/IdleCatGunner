02ca7d74  str x30,[sp, #-0x10]!
02ca7d78  ldr x12,[x0, #0x28]
02ca7d7c  cbz x12,0x02ca7dfc
02ca7d80  ldr x11,[x12, #0x18]
02ca7d84  cmp w11,#0x1
02ca7d88  b.lt 0x02ca7de8
02ca7d8c  bic w10,w11,w11, ASR #0x1f
02ca7d90  mov w8,wzr
02ca7d94  mov x9,xzr
02ca7d98  and x11,x11,#0xffffffff
02ca7d9c  add x12,x12,#0x20
02ca7da0  cmp x11,x9
02ca7da4  b.eq 0x02ca7df8
02ca7da8  ldrb w13,[x12, x9, LSL ]
02ca7dac  cbz w13,0x02ca7dd8
02ca7db0  ldr x13,[x0, #0x20]
02ca7db4  cbz x13,0x02ca7dfc
02ca7db8  ldr w14,[x13, #0x18]
02ca7dbc  cmp x9,x14
02ca7dc0  b.cs 0x02ca7df8
02ca7dc4  add x13,x13,x9, LSL #0x3
02ca7dc8  ldr x13,[x13, #0x20]
02ca7dcc  cbz x13,0x02ca7dfc
02ca7dd0  ldr w13,[x13, #0x18]
02ca7dd4  add w8,w13,w8
02ca7dd8  add x9,x9,#0x1
02ca7ddc  cmp x10,x9
02ca7de0  b.ne 0x02ca7da0
02ca7de4  b 0x02ca7dec
02ca7de8  mov w8,wzr
02ca7dec  mov w0,w8
02ca7df0  ldr x30,[sp], #0x10
02ca7df4  ret
02ca7df8  bl 0x029f5d04
02ca7dfc  bl 0x029f5cfc
