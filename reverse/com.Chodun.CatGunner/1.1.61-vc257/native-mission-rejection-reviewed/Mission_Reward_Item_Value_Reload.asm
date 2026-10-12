02c04394  stp x30,x23,[sp, #-0x30]!
02c04398  stp x22,x21,[sp, #0x10]
02c0439c  stp x20,x19,[sp, #0x20]
02c043a0  adrp x23,0x625b000
02c043a4  mov w21,w3
02c043a8  mov w22,w2
02c043ac  ldrb w8,[x23, #0xe5e]
02c043b0  mov w20,w1
02c043b4  mov x19,x0
02c043b8  tbnz w8,#0x0,0x02c043dc
02c043bc  adrp x0,0x5e5d000
02c043c0  ldr x0,[x0, #0xd50]
02c043c4  bl 0x029f5a50
02c043c8  adrp x0,0x5e5d000
02c043cc  ldr x0,[x0, #0x920]
02c043d0  bl 0x029f5a50
02c043d4  mov w8,#0x1
02c043d8  strb w8,[x23, #0xe5e]
02c043dc  ldr x0,[x19, #0x78]
02c043e0  cmp w20,#0x1
02c043e4  cset w23,eq
02c043e8  cbz x0,0x02c044f4
02c043ec  cmp w20,#0x0
02c043f0  mov x2,xzr
02c043f4  cset w1,eq
02c043f8  bl 0x057dff3c
02c043fc  ldr x0,[x19, #0x80]
02c04400  cbz x0,0x02c044f4
02c04404  cmp w20,#0x1
02c04408  and w22,w23,w22
02c0440c  mov x2,xzr
02c04410  cset w8,eq
02c04414  eor w1,w8,w22
02c04418  bl 0x057dff3c
02c0441c  ldr x0,[x19, #0x88]
02c04420  cbz x0,0x02c044f4
02c04424  cmp w20,#0x2
02c04428  mov x2,xzr
02c0442c  cset w1,eq
02c04430  bl 0x057dff3c
02c04434  ldr x0,[x19, #0x98]
02c04438  cbz x0,0x02c044f4
02c0443c  mov w1,w22
02c04440  mov x2,xzr
02c04444  bl 0x057dff3c
02c04448  ldr x0,[x19, #0xa0]
02c0444c  cbz x0,0x02c044f4
02c04450  mov w1,w22
02c04454  mov x2,xzr
02c04458  bl 0x057dff3c
02c0445c  ldr x0,[x19, #0x90]
02c04460  cbz x0,0x02c044f4
02c04464  adrp x22,0x5e5d000
02c04468  and w1,w21,#0x1
02c0446c  mov x2,xzr
02c04470  ldr x22,[x22, #0xd50]
02c04474  bl 0x057dff3c
02c04478  ldr x0,[x22]
02c0447c  ldp w21,w22,[x19, #0x20]
02c04480  ldr w8,[x0, #0xe4]
02c04484  cbnz w8,0x02c0448c
02c04488  bl 0x029f5bd0
02c0448c  mov w0,w21
02c04490  mov w1,w22
02c04494  mov x2,xzr
02c04498  bl 0x02ba6460
02c0449c  tbz w0,#0x0,0x02c044d4
02c044a0  adrp x21,0x5e5d000
02c044a4  ldr x21,[x21, #0x920]
02c044a8  ldr x0,[x21]
02c044ac  ldr w8,[x0, #0xe4]
02c044b0  cbnz w8,0x02c044bc
02c044b4  bl 0x029f5bd0
02c044b8  ldr x0,[x21]
02c044bc  ldr x8,[x0, #0xb8]
02c044c0  ldrb w8,[x8, #0x9]
02c044c4  cmp w8,#0x0
02c044c8  ccmp w20,#0x2,#0x4,eq
02c044cc  cset w1,ne
02c044d0  b 0x02c044d8
02c044d4  mov w1,wzr
02c044d8  ldr x0,[x19, #0xa8]
02c044dc  cbz x0,0x02c044f4
02c044e0  ldp x20,x19,[sp, #0x20]
02c044e4  mov x2,xzr
02c044e8  ldp x22,x21,[sp, #0x10]
02c044ec  ldp x30,x23,[sp], #0x30
02c044f0  b 0x057dff3c
02c044f4  bl 0x029f5cfc
