02ca7ce8  str x30,[sp, #-0x10]!
02ca7cec  ldr x12,[x0, #0x28]
02ca7cf0  cbz x12,0x02ca7d70
02ca7cf4  ldr x11,[x12, #0x18]
02ca7cf8  cmp w11,#0x1
02ca7cfc  b.lt 0x02ca7d5c
02ca7d00  bic w10,w11,w11, ASR #0x1f
02ca7d04  mov w8,wzr
02ca7d08  mov x9,xzr
02ca7d0c  and x11,x11,#0xffffffff
02ca7d10  add x12,x12,#0x20
02ca7d14  cmp x11,x9
02ca7d18  b.eq 0x02ca7d6c
02ca7d1c  ldrb w13,[x12, x9, LSL ]
02ca7d20  cbz w13,0x02ca7d4c
02ca7d24  ldr x13,[x0, #0x20]
02ca7d28  cbz x13,0x02ca7d70
02ca7d2c  ldr w14,[x13, #0x18]
02ca7d30  cmp x9,x14
02ca7d34  b.cs 0x02ca7d6c
02ca7d38  add x13,x13,x9, LSL #0x3
02ca7d3c  ldr x13,[x13, #0x20]
02ca7d40  cbz x13,0x02ca7d70
02ca7d44  ldr w13,[x13, #0x14]
02ca7d48  add w8,w13,w8
02ca7d4c  add x9,x9,#0x1
02ca7d50  cmp x10,x9
02ca7d54  b.ne 0x02ca7d14
02ca7d58  b 0x02ca7d60
02ca7d5c  mov w8,wzr
02ca7d60  mov w0,w8
02ca7d64  ldr x30,[sp], #0x10
02ca7d68  ret
02ca7d6c  bl 0x029f5d04
02ca7d70  bl 0x029f5cfc
