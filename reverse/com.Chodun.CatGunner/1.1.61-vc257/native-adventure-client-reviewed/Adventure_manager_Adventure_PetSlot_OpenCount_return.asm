02c2e9bc  str x30,[sp, #-0x10]!
02c2e9c0  ldr x11,[x0, #0x70]
02c2e9c4  cbz x11,0x02c2ea1c
02c2e9c8  ldr x10,[x11, #0x18]
02c2e9cc  cmp w10,#0x1
02c2e9d0  b.lt 0x02c2ea08
02c2e9d4  bic w9,w10,w10, ASR #0x1f
02c2e9d8  mov w8,wzr
02c2e9dc  and x10,x10,#0xffffffff
02c2e9e0  add x11,x11,#0x20
02c2e9e4  cbz x10,0x02c2ea18
02c2e9e8  ldr w12,[x0, #0x30]
02c2e9ec  ldr w13,[x11], #0x4
02c2e9f0  sub x9,x9,#0x1
02c2e9f4  sub x10,x10,#0x1
02c2e9f8  cmp w12,w13
02c2e9fc  cinc w8,w8,ge
02c2ea00  cbnz x9,0x02c2e9e4
02c2ea04  b 0x02c2ea0c
02c2ea08  mov w8,wzr
02c2ea0c  mov w0,w8
02c2ea10  ldr x30,[sp], #0x10
02c2ea14  ret
02c2ea18  bl 0x029f5d04
02c2ea1c  bl 0x029f5cfc
