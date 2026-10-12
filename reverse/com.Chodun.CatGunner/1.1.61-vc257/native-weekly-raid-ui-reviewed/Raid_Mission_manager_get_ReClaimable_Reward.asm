02c54698  stp x30,x19,[sp, #-0x10]!
02c5469c  mov x19,x0
02c546a0  bl 0x02c53c8c
02c546a4  ldr x10,[x19, #0x30]
02c546a8  cbz x10,0x02c5472c
02c546ac  ldr w9,[x10, #0x18]
02c546b0  mov x8,xzr
02c546b4  mov w0,wzr
02c546b8  add x10,x10,#0x20
02c546bc  cmp x9,x8
02c546c0  b.eq 0x02c54728
02c546c4  ldrb w11,[x10, x8, LSL ]
02c546c8  cbz w11,0x02c54714
02c546cc  ldr x11,[x19, #0x40]
02c546d0  cbz x11,0x02c5472c
02c546d4  ldr w12,[x11, #0x18]
02c546d8  cmp x8,x12
02c546dc  b.cs 0x02c54728
02c546e0  add x11,x11,x8
02c546e4  ldrb w11,[x11, #0x20]
02c546e8  cbnz w11,0x02c54714
02c546ec  ldr x11,[x19, #0x20]
02c546f0  cbz x11,0x02c5472c
02c546f4  ldr w12,[x11, #0x18]
02c546f8  cmp x8,x12
02c546fc  b.cs 0x02c54728
02c54700  add x11,x11,x8, LSL #0x3
02c54704  ldr x11,[x11, #0x20]
02c54708  cbz x11,0x02c5472c
02c5470c  ldr w11,[x11, #0x18]
02c54710  add w0,w11,w0
02c54714  add x8,x8,#0x1
02c54718  cmp x8,#0x8
02c5471c  b.ne 0x02c546bc
02c54720  ldp x30,x19,[sp], #0x10
02c54724  ret
02c54728  bl 0x029f5d04
02c5472c  bl 0x029f5cfc
