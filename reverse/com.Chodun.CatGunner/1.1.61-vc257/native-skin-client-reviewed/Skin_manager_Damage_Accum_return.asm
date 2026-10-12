02ca7c5c  str x30,[sp, #-0x10]!
02ca7c60  ldr x12,[x0, #0x28]
02ca7c64  cbz x12,0x02ca7ce4
02ca7c68  ldr x11,[x12, #0x18]
02ca7c6c  cmp w11,#0x1
02ca7c70  b.lt 0x02ca7cd0
02ca7c74  bic w10,w11,w11, ASR #0x1f
02ca7c78  mov w8,wzr
02ca7c7c  mov x9,xzr
02ca7c80  and x11,x11,#0xffffffff
02ca7c84  add x12,x12,#0x20
02ca7c88  cmp x11,x9
02ca7c8c  b.eq 0x02ca7ce0
02ca7c90  ldrb w13,[x12, x9, LSL ]
02ca7c94  cbz w13,0x02ca7cc0
02ca7c98  ldr x13,[x0, #0x20]
02ca7c9c  cbz x13,0x02ca7ce4
02ca7ca0  ldr w14,[x13, #0x18]
02ca7ca4  cmp x9,x14
02ca7ca8  b.cs 0x02ca7ce0
02ca7cac  add x13,x13,x9, LSL #0x3
02ca7cb0  ldr x13,[x13, #0x20]
02ca7cb4  cbz x13,0x02ca7ce4
02ca7cb8  ldr w13,[x13, #0x10]
02ca7cbc  add w8,w13,w8
02ca7cc0  add x9,x9,#0x1
02ca7cc4  cmp x10,x9
02ca7cc8  b.ne 0x02ca7c88
02ca7ccc  b 0x02ca7cd4
02ca7cd0  mov w8,wzr
02ca7cd4  mov w0,w8
02ca7cd8  ldr x30,[sp], #0x10
02ca7cdc  ret
02ca7ce0  bl 0x029f5d04
02ca7ce4  bl 0x029f5cfc
