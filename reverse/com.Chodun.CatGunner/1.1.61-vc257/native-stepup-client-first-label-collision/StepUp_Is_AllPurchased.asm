02ca2b00  str x30,[sp, #-0x10]!
02ca2b04  ldr x11,[x0, #0x38]
02ca2b08  cbz x11,0x02ca2b50
02ca2b0c  ldr w8,[x11, #0x18]
02ca2b10  mov x9,xzr
02ca2b14  mov w10,wzr
02ca2b18  add x11,x11,#0x20
02ca2b1c  cmp x8,x9
02ca2b20  b.eq 0x02ca2b4c
02ca2b24  ldrb w12,[x11, x9, LSL ]
02ca2b28  cbz w12,0x02ca2b40
02ca2b2c  cmp x9,#0x3
02ca2b30  add x9,x9,#0x1
02ca2b34  cset w10,hi
02ca2b38  cmp x9,#0x5
02ca2b3c  b.ne 0x02ca2b1c
02ca2b40  and w0,w10,#0x1
02ca2b44  ldr x30,[sp], #0x10
02ca2b48  ret
02ca2b4c  bl 0x029f5d04
02ca2b50  bl 0x029f5cfc
