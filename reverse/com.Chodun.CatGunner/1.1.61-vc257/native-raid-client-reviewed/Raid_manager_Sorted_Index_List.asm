02c581f4  sub sp,sp,#0x120
02c581f8  stp x29,x30,[sp, #0xc0]
02c581fc  stp x28,x27,[sp, #0xd0]
02c58200  stp x26,x25,[sp, #0xe0]
02c58204  stp x24,x23,[sp, #0xf0]
02c58208  stp x22,x21,[sp, #0x100]
02c5820c  stp x20,x19,[sp, #0x110]
02c58210  adrp x21,0x625c000
02c58214  adrp x20,0x5e63000
02c58218  adrp x19,0x5e63000
02c5821c  ldrb w8,[x21, #0x1ab]
02c58220  ldr x20,[x20, #0x6b0]
02c58224  ldr x19,[x19, #0x6b8]
02c58228  tbnz w8,#0x0,0x02c582dc
02c5822c  adrp x0,0x5e63000
02c58230  ldr x0,[x0, #0x6c0]
02c58234  bl 0x029f5a50
02c58238  adrp x0,0x5e63000
02c5823c  ldr x0,[x0, #0x108]
02c58240  bl 0x029f5a50
02c58244  adrp x0,0x5e63000
02c58248  ldr x0,[x0, #0x6c8]
02c5824c  bl 0x029f5a50
02c58250  adrp x0,0x5e63000
02c58254  ldr x0,[x0, #0x6d0]
02c58258  bl 0x029f5a50
02c5825c  adrp x0,0x5e63000
02c58260  ldr x0,[x0, #0x6d8]
02c58264  bl 0x029f5a50
02c58268  adrp x0,0x5e63000
02c5826c  ldr x0,[x0, #0x6b8]
02c58270  bl 0x029f5a50
02c58274  adrp x0,0x5e63000
02c58278  ldr x0,[x0, #0x6e0]
02c5827c  bl 0x029f5a50
02c58280  adrp x0,0x5e63000
02c58284  ldr x0,[x0, #0x6e8]
02c58288  bl 0x029f5a50
02c5828c  adrp x0,0x5e62000
02c58290  ldr x0,[x0, #0x628]
02c58294  bl 0x029f5a50
02c58298  adrp x0,0x5e63000
02c5829c  ldr x0,[x0, #0x6b0]
02c582a0  bl 0x029f5a50
02c582a4  adrp x0,0x5e5e000
02c582a8  ldr x0,[x0, #0x70]
02c582ac  bl 0x029f5a50
02c582b0  adrp x0,0x5e63000
02c582b4  ldr x0,[x0, #0x6f0]
02c582b8  bl 0x029f5a50
02c582bc  adrp x0,0x5e63000
02c582c0  ldr x0,[x0, #0x6f8]
02c582c4  bl 0x029f5a50
02c582c8  adrp x0,0x5e63000
02c582cc  ldr x0,[x0, #0x700]
02c582d0  bl 0x029f5a50
02c582d4  mov w8,#0x1
02c582d8  strb w8,[x21, #0x1ab]
02c582dc  adrp x28,0x5e5e000
02c582e0  adrp x29,0x5e63000
02c582e4  adrp x24,0x5e63000
02c582e8  adrp x27,0x5e63000
02c582ec  adrp x26,0x5e63000
02c582f0  adrp x22,0x5e63000
02c582f4  adrp x23,0x5e63000
02c582f8  ldr x28,[x28, #0x70]
02c582fc  ldr x29,[x29, #0x700]
02c58300  ldr x24,[x24, #0x6c8]
02c58304  ldr x27,[x27, #0x6f8]
02c58308  ldr x26,[x26, #0x6d0]
02c5830c  ldr x22,[x22, #0x6e8]
02c58310  ldr x23,[x23, #0x108]
02c58314  ldr x0,[x20]
02c58318  bl 0x029f5cec
02c5831c  ldr x1,[x19]
02c58320  mov x19,x0
02c58324  bl 0x04463a80
02c58328  mov w20,wzr
02c5832c  mov w25,#0x28
02c58330  ldr x0,[x28]
02c58334  ldr w8,[x0, #0xe4]
02c58338  cbnz w8,0x02c58340
02c5833c  bl 0x029f5bd0
02c58340  bl 0x02c57fb0
02c58344  cmp w20,w0
02c58348  b.ge 0x02c5844c
02c5834c  ldr x0,[x28]
02c58350  ldr w8,[x0, #0xe4]
02c58354  cbnz w8,0x02c5835c
02c58358  bl 0x029f5bd0
02c5835c  mov w0,w20
02c58360  bl 0x02c5808c
02c58364  cmn w0,#0x1
02c58368  b.eq 0x02c58444
02c5836c  mov w21,w0
02c58370  ldr x0,[x28]
02c58374  ldr w8,[x0, #0xe4]
02c58378  cbnz w8,0x02c58380
02c5837c  bl 0x029f5bd0
02c58380  add x8,sp,#0x10
02c58384  mov w0,w21
02c58388  bl 0x02c51d80
02c5838c  movi v1.2D,#0x0
02c58390  ldr x3,[x29]
02c58394  add x0,sp,#0x30
02c58398  add x2,sp,#0x90
02c5839c  mov w1,w20
02c583a0  str xzr,[sp, #0x50]
02c583a4  stp q1,q1,[sp, #0x30]
02c583a8  ldp q0,q1,[sp, #0x10]
02c583ac  stp q0,q1,[sp, #0x90]
02c583b0  bl 0x03b82d48
02c583b4  cbz x19,0x02c585b4
02c583b8  ldr x9,[sp, #0x50]
02c583bc  ldp q0,q1,[sp, #0x30]
02c583c0  ldr w10,[x19, #0x1c]
02c583c4  ldr x8,[x19, #0x10]
02c583c8  str x9,[sp, #0x80]
02c583cc  ldr x9,[x24]
02c583d0  add w10,w10,#0x1
02c583d4  stp q0,q1,[sp, #0x60]
02c583d8  str w10,[x19, #0x1c]
02c583dc  cbz x8,0x02c585b4
02c583e0  ldrsw x10,[x19, #0x18]
02c583e4  ldr w11,[x8, #0x18]
02c583e8  cmp w10,w11
02c583ec  b.cs 0x02c5841c
02c583f0  smaddl x8,w10,w25,x8
02c583f4  add w9,w10,#0x1
02c583f8  mov x1,xzr
02c583fc  ldp q0,q1,[sp, #0x60]
02c58400  str w9,[x19, #0x18]
02c58404  ldr x9,[sp, #0x80]
02c58408  add x0,x8,#0x28
02c5840c  stp q0,q1,[x8, #0x20]
02c58410  str x9,[x8, #0x40]
02c58414  bl 0x029f59f4
02c58418  b 0x02c58444
02c5841c  ldr x8,[x9, #0x20]
02c58420  ldp q0,q1,[sp, #0x60]
02c58424  ldr x9,[sp, #0x80]
02c58428  add x1,sp,#0x90
02c5842c  mov x0,x19
02c58430  ldr x8,[x8, #0xc0]
02c58434  ldr x2,[x8, #0x70]
02c58438  stp q0,q1,[sp, #0x90]
02c5843c  str x9,[sp, #0xb0]
02c58440  bl 0x044643a8
02c58444  add w20,w20,#0x1
02c58448  b 0x02c58330
02c5844c  ldr x0,[x27]
02c58450  ldr w8,[x0, #0xe4]
02c58454  cbnz w8,0x02c58460
02c58458  bl 0x029f5bd0
02c5845c  ldr x0,[x27]
02c58460  ldr x8,[x0, #0xb8]
02c58464  ldr x20,[x8, #0x8]
02c58468  cbnz x20,0x02c584c4
02c5846c  ldr w9,[x0, #0xe4]
02c58470  cbnz w9,0x02c58480
02c58474  bl 0x029f5bd0
02c58478  ldr x8,[x27]
02c5847c  ldr x8,[x8, #0xb8]
02c58480  adrp x9,0x5e63000
02c58484  ldr x9,[x9, #0x6c0]
02c58488  ldr x21,[x8]
02c5848c  ldr x0,[x9]
02c58490  bl 0x029f5cec
02c58494  adrp x8,0x5e63000
02c58498  mov x1,x21
02c5849c  mov x3,xzr
02c584a0  ldr x8,[x8, #0x6f0]
02c584a4  mov x20,x0
02c584a8  ldr x2,[x8]
02c584ac  bl 0x03cf5874
02c584b0  ldr x8,[x27]
02c584b4  mov x1,x20
02c584b8  ldr x0,[x8, #0xb8]
02c584bc  str x20,[x0, #0x8]!
02c584c0  bl 0x029f59f4
02c584c4  cbz x19,0x02c585b4
02c584c8  ldr x2,[x26]
02c584cc  mov x0,x19
02c584d0  mov x1,x20
02c584d4  bl 0x044661a8
02c584d8  adrp x8,0x5e62000
02c584dc  ldr w21,[x19, #0x18]
02c584e0  ldr x8,[x8, #0x628]
02c584e4  ldr x0,[x8]
02c584e8  bl 0x029f5cec
02c584ec  adrp x8,0x5e63000
02c584f0  mov w1,w21
02c584f4  mov x20,x0
02c584f8  ldr x8,[x8, #0x6d8]
02c584fc  ldr x2,[x8]
02c58500  bl 0x044f71f8
02c58504  ldr w8,[x19, #0x18]
02c58508  cmp w8,#0x1
02c5850c  b.lt 0x02c58590
02c58510  mov w21,wzr
02c58514  ldr x2,[x22]
02c58518  add x8,sp,#0x90
02c5851c  mov x0,x19
02c58520  mov w1,w21
02c58524  bl 0x04464018
02c58528  cbz x20,0x02c585b4
02c5852c  ldr w10,[x20, #0x1c]
02c58530  ldr x8,[x20, #0x10]
02c58534  ldr w1,[sp, #0x90]
02c58538  ldr x9,[x23]
02c5853c  add w10,w10,#0x1
02c58540  str w10,[x20, #0x1c]
02c58544  cbz x8,0x02c585b4
02c58548  ldrsw x10,[x20, #0x18]
02c5854c  ldr w11,[x8, #0x18]
02c58550  cmp w10,w11
02c58554  b.cs 0x02c5856c
02c58558  add x8,x8,x10, LSL #0x2
02c5855c  add w9,w10,#0x1
02c58560  str w9,[x20, #0x18]
02c58564  str w1,[x8, #0x20]
02c58568  b 0x02c58580
02c5856c  ldr x8,[x9, #0x20]
02c58570  mov x0,x20
02c58574  ldr x8,[x8, #0xc0]
02c58578  ldr x2,[x8, #0x70]
02c5857c  bl 0x044f7a10
02c58580  ldr w8,[x19, #0x18]
02c58584  add w21,w21,#0x1
02c58588  cmp w21,w8
02c5858c  b.lt 0x02c58514
02c58590  mov x0,x20
02c58594  ldp x20,x19,[sp, #0x110]
02c58598  ldp x22,x21,[sp, #0x100]
02c5859c  ldp x24,x23,[sp, #0xf0]
02c585a0  ldp x26,x25,[sp, #0xe0]
02c585a4  ldp x28,x27,[sp, #0xd0]
02c585a8  ldp x29,x30,[sp, #0xc0]
02c585ac  add sp,sp,#0x120
02c585b0  ret
02c585b4  bl 0x029f5cfc
