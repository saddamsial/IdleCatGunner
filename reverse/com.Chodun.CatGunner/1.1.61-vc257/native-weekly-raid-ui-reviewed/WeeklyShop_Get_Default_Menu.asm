02ca72c8  str x30,[sp, #-0x20]!
02ca72cc  stp x20,x19,[sp, #0x10]
02ca72d0  adrp x20,0x625c000
02ca72d4  mov x19,x0
02ca72d8  ldrb w8,[x20, #0x4de]
02ca72dc  tbnz w8,#0x0,0x02ca72f4
02ca72e0  adrp x0,0x5e64000
02ca72e4  ldr x0,[x0, #0x9c0]
02ca72e8  bl 0x029f5a50
02ca72ec  mov w8,#0x1
02ca72f0  strb w8,[x20, #0x4de]
02ca72f4  bl 0x02ca7008
02ca72f8  tbz w0,#0x0,0x02ca7320
02ca72fc  adrp x8,0x5e64000
02ca7300  mov w1,wzr
02ca7304  mov x2,xzr
02ca7308  ldr x8,[x8, #0x9c0]
02ca730c  ldr x0,[x8]
02ca7310  bl 0x057d43f8
02ca7314  cbz w0,0x02ca7328
02ca7318  ldr w0,[x19, #0x28]
02ca731c  b 0x02ca732c
02ca7320  mov w0,wzr
02ca7324  b 0x02ca732c
02ca7328  mov w0,#0x1
02ca732c  ldp x20,x19,[sp, #0x10]
02ca7330  ldr x30,[sp], #0x20
02ca7334  ret
