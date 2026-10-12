02c5458c  str x30,[sp, #-0x10]!
02c54590  ldr x10,[x0, #0x20]
02c54594  cbz x10,0x02c545d8
02c54598  ldr w9,[x10, #0x18]
02c5459c  mov x8,xzr
02c545a0  mov w0,wzr
02c545a4  add x10,x10,#0x20
02c545a8  lsl x9,x9,#0x3
02c545ac  cmp x9,x8
02c545b0  b.eq 0x02c545dc
02c545b4  ldr x11,[x10, x8, LSL #0x0]
02c545b8  cbz x11,0x02c545d8
02c545bc  ldr w11,[x11, #0x18]
02c545c0  add x8,x8,#0x8
02c545c4  cmp x8,#0x40
02c545c8  add w0,w11,w0
02c545cc  b.ne 0x02c545ac
02c545d0  ldr x30,[sp], #0x10
02c545d4  ret
02c545d8  bl 0x029f5cfc
02c545dc  bl 0x029f5d04
