02c88058  str x29,[sp, #-0x30]!
02c8805c  stp x30,x21,[sp, #0x10]
02c88060  stp x20,x19,[sp, #0x20]
02c88064  sub sp,sp,#0x1e0
02c88068  adrp x21,0x625c000
02c8806c  adrp x20,0x5e5d000
02c88070  mov x19,x8
02c88074  ldrb w9,[x21, #0x387]
02c88078  ldr x20,[x20, #0xc20]
02c8807c  tbnz w9,#0x0,0x02c880b8
02c88080  adrp x0,0x5e62000
02c88084  ldr x0,[x0, #0xb8]
02c88088  bl 0x029f5a50
02c8808c  adrp x0,0x5e59000
02c88090  ldr x0,[x0]
02c88094  bl 0x029f5a50
02c88098  adrp x0,0x5e5d000
02c8809c  ldr x0,[x0, #0x4d8]
02c880a0  bl 0x029f5a50
02c880a4  adrp x0,0x5e5d000
02c880a8  ldr x0,[x0, #0xc20]
02c880ac  bl 0x029f5a50
02c880b0  mov w8,#0x1
02c880b4  strb w8,[x21, #0x387]
02c880b8  movi v0.2D,#0x0
02c880bc  ldr x0,[x20]
02c880c0  ldr w8,[x0, #0xe4]
02c880c4  stp q0,q0,[sp, #0x140]
02c880c8  stp q0,q0,[sp, #0x160]
02c880cc  stp q0,q0,[sp, #0x180]
02c880d0  stp q0,q0,[sp, #0x1a0]
02c880d4  stp q0,q0,[sp, #0x1c0]
02c880d8  cbnz w8,0x02c880e4
02c880dc  bl 0x029f5bd0
02c880e0  ldr x0,[x20]
02c880e4  ldr x8,[x0, #0xb8]
02c880e8  ldr x8,[x8, #0x10]
02c880ec  cbz x8,0x02c882bc
02c880f0  ldr w9,[x8, #0x28]
02c880f4  cmp w9,#0x1
02c880f8  b.le 0x02c88290
02c880fc  ldr w9,[x0, #0xe4]
02c88100  cbnz w9,0x02c88118
02c88104  bl 0x029f5bd0
02c88108  ldr x8,[x20]
02c8810c  ldr x8,[x8, #0xb8]
02c88110  ldr x8,[x8, #0x10]
02c88114  cbz x8,0x02c882bc
02c88118  ldp w9,w8,[x8, #0x28]
02c8811c  movi v0.2D,#0x0
02c88120  add x0,sp,#0x120
02c88124  mov x2,xzr
02c88128  mov x3,xzr
02c8812c  add w9,w9,w9, LSL #0x2
02c88130  add w20,w8,w9
02c88134  stp q0,q0,[sp, #0x120]
02c88138  mov w1,w20
02c8813c  bl 0x04655b64
02c88140  adrp x8,0x5e62000
02c88144  ldr x8,[x8, #0xb8]
02c88148  ldp q0,q1,[sp, #0x120]
02c8814c  ldr x0,[x8]
02c88150  stp q0,q1,[sp, #0x1a0]
02c88154  ldr w8,[x0, #0xe4]
02c88158  cbnz w8,0x02c88160
02c8815c  bl 0x029f5bd0
02c88160  add x8,sp,#0x100
02c88164  add x0,sp,#0x1a0
02c88168  mov w1,#0x2
02c8816c  mov w2,#0x1
02c88170  mov x3,xzr
02c88174  bl 0x0465ef6c
02c88178  adrp x8,0x5e59000
02c8817c  ldr x8,[x8]
02c88180  ldp q0,q1,[sp, #0x100]
02c88184  ldr x0,[x8]
02c88188  stp q0,q1,[sp, #0x180]
02c8818c  ldr w8,[x0, #0xe4]
02c88190  cbnz w8,0x02c88198
02c88194  bl 0x029f5bd0
02c88198  scvtf d0,w20
02c8819c  add x8,sp,#0xe0
02c881a0  mov x0,xzr
02c881a4  fsqrt d0,d0
02c881a8  bl 0x04656c9c
02c881ac  ldp q0,q1,[sp, #0xe0]
02c881b0  add x8,sp,#0xc0
02c881b4  add x0,sp,#0x180
02c881b8  add x1,sp,#0x160
02c881bc  mov x2,xzr
02c881c0  stp q0,q1,[sp, #0x160]
02c881c4  bl 0x04658538
02c881c8  adrp x20,0x5e5d000
02c881cc  ldr x20,[x20, #0x4d8]
02c881d0  ldp q0,q1,[sp, #0xc0]
02c881d4  ldr x0,[x20]
02c881d8  stp q0,q1,[sp, #0x1c0]
02c881dc  ldr w8,[x0, #0xe4]
02c881e0  cbnz w8,0x02c881ec
02c881e4  bl 0x029f5bd0
02c881e8  ldr x0,[x20]
02c881ec  ldr x8,[x0, #0xb8]
02c881f0  mov x1,xzr
02c881f4  ldr w0,[x8, #0x68]
02c881f8  add x8,sp,#0xa0
02c881fc  bl 0x046544b8
02c88200  ldp q0,q1,[sp, #0xa0]
02c88204  add x8,sp,#0x80
02c88208  add x0,sp,#0x1c0
02c8820c  add x1,sp,#0x1a0
02c88210  mov x2,xzr
02c88214  stp q0,q1,[sp, #0x1a0]
02c88218  bl 0x04658538
02c8821c  ldp q0,q1,[sp, #0x80]
02c88220  add x8,sp,#0x60
02c88224  mov w0,#0x64
02c88228  mov x1,xzr
02c8822c  stp q0,q1,[sp, #0x180]
02c88230  bl 0x046544b8
02c88234  ldp q0,q1,[sp, #0x60]
02c88238  add x8,sp,#0x40
02c8823c  add x0,sp,#0x180
02c88240  add x1,sp,#0x160
02c88244  mov x2,xzr
02c88248  stp q0,q1,[sp, #0x160]
02c8824c  bl 0x046587e8
02c88250  ldp q0,q1,[sp, #0x40]
02c88254  add x8,sp,#0x20
02c88258  add x0,sp,#0x140
02c8825c  mov w1,#0x5
02c88260  mov x2,xzr
02c88264  stp q0,q1,[sp, #0x140]
02c88268  bl 0x04658464
02c8826c  ldp q0,q1,[sp, #0x20]
02c88270  mov x8,sp
02c88274  add x0,sp,#0x1c0
02c88278  mov w1,#0x5
02c8827c  mov x2,xzr
02c88280  stp q0,q1,[sp, #0x1c0]
02c88284  bl 0x04658464
02c88288  ldp q0,q1,[sp]
02c8828c  b 0x02c882a4
02c88290  add x8,sp,#0x120
02c88294  mov w0,wzr
02c88298  mov x1,xzr
02c8829c  bl 0x046544b8
02c882a0  ldp q0,q1,[sp, #0x120]
02c882a4  stp q0,q1,[x19]
02c882a8  add sp,sp,#0x1e0
02c882ac  ldp x20,x19,[sp, #0x20]
02c882b0  ldp x30,x21,[sp, #0x10]
02c882b4  ldr x29,[sp], #0x30
02c882b8  ret
02c882bc  bl 0x029f5cfc
