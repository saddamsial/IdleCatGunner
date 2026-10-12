02ba56f4  str x30,[sp, #-0x60]!
02ba56f8  stp x28,x27,[sp, #0x10]
02ba56fc  stp x26,x25,[sp, #0x20]
02ba5700  stp x24,x23,[sp, #0x30]
02ba5704  stp x22,x21,[sp, #0x40]
02ba5708  stp x20,x19,[sp, #0x50]
02ba570c  adrp x20,0x625b000
02ba5710  adrp x21,0x5e5e000
02ba5714  mov x19,x0
02ba5718  ldrb w8,[x20, #0xa49]
02ba571c  ldr x21,[x21, #0x748]
02ba5720  tbnz w8,#0x0,0x02ba5774
02ba5724  adrp x0,0x5e5e000
02ba5728  ldr x0,[x0, #0x750]
02ba572c  bl 0x029f5a50
02ba5730  adrp x0,0x5e5e000
02ba5734  ldr x0,[x0, #0x758]
02ba5738  bl 0x029f5a50
02ba573c  adrp x0,0x5e5d000
02ba5740  ldr x0,[x0, #0x790]
02ba5744  bl 0x029f5a50
02ba5748  adrp x0,0x5e5e000
02ba574c  ldr x0,[x0, #0x760]
02ba5750  bl 0x029f5a50
02ba5754  adrp x0,0x5e5e000
02ba5758  ldr x0,[x0, #0x768]
02ba575c  bl 0x029f5a50
02ba5760  adrp x0,0x5e5e000
02ba5764  ldr x0,[x0, #0x748]
02ba5768  bl 0x029f5a50
02ba576c  mov w8,#0x1
02ba5770  strb w8,[x20, #0xa49]
02ba5774  ldr x0,[x21]
02ba5778  bl 0x029f5cec
02ba577c  mov x1,xzr
02ba5780  mov x20,x0
02ba5784  bl 0x02c032f4
02ba5788  cbz x20,0x02ba5964
02ba578c  mov x0,x20
02ba5790  mov x1,x19
02ba5794  str x19,[x0, #0x18]!
02ba5798  bl 0x029f59f4
02ba579c  ldr x8,[x19, #0x90]
02ba57a0  cbz x8,0x02ba5964
02ba57a4  adrp x26,0x5e5d000
02ba57a8  adrp x22,0x5e5e000
02ba57ac  adrp x25,0x5e5e000
02ba57b0  adrp x24,0x5e5e000
02ba57b4  adrp x23,0x5e5e000
02ba57b8  ldr x26,[x26, #0x790]
02ba57bc  ldr x22,[x22, #0x760]
02ba57c0  ldr x25,[x25, #0x758]
02ba57c4  ldr x24,[x24, #0x768]
02ba57c8  ldr x23,[x23, #0x750]
02ba57cc  mov w27,wzr
02ba57d0  ldr w1,[x8, #0x18]
02ba57d4  cmp w27,w1
02ba57d8  b.ge 0x02ba5894
02ba57dc  ldr x8,[x19, #0x20]
02ba57e0  cbz x8,0x02ba5964
02ba57e4  ldr w9,[x8, #0x18]
02ba57e8  cmp w27,w9
02ba57ec  b.cs 0x02ba5a18
02ba57f0  sxtw x28,w27
02ba57f4  mov x0,x19
02ba57f8  add x8,x8,x28, LSL #0x3
02ba57fc  ldr x21,[x8, #0x20]
02ba5800  mov x1,x21
02ba5804  bl 0x02ba5a7c
02ba5808  ldr x8,[x19, #0x90]
02ba580c  cbz x8,0x02ba5964
02ba5810  ldr w9,[x8, #0x18]
02ba5814  cmp w27,w9
02ba5818  b.cs 0x02ba5a18
02ba581c  cbz x21,0x02ba5964
02ba5820  ldr w9,[x21, #0x18]
02ba5824  mov w3,w0
02ba5828  mov w1,wzr
02ba582c  cmp w9,#0x1
02ba5830  b.gt 0x02ba5848
02ba5834  cbz w9,0x02ba5860
02ba5838  cmp w9,#0x1
02ba583c  b.ne 0x02ba586c
02ba5840  ldr w1,[x19, #0x54]
02ba5844  b 0x02ba586c
02ba5848  cmp w9,#0x2
02ba584c  b.eq 0x02ba5868
02ba5850  cmp w9,#0x3
02ba5854  b.ne 0x02ba586c
02ba5858  ldr w1,[x19, #0x5c]
02ba585c  b 0x02ba586c
02ba5860  ldr w1,[x19, #0x50]
02ba5864  b 0x02ba586c
02ba5868  ldr w1,[x19, #0x58]
02ba586c  add x8,x8,x28, LSL #0x3
02ba5870  ldr x0,[x8, #0x20]
02ba5874  cbz x0,0x02ba5964
02ba5878  ldr w2,[x21, #0x1c]
02ba587c  mov x4,xzr
02ba5880  add w27,w27,#0x1
02ba5884  bl 0x02c03e2c
02ba5888  ldr x8,[x19, #0x90]
02ba588c  cbnz x8,0x02ba57d0
02ba5890  b 0x02ba5964
02ba5894  ldr x0,[x26]
02ba5898  bl 0x029f5b40
02ba589c  cbz x0,0x02ba5964
02ba58a0  ldr x10,[x0, #0x18]
02ba58a4  mov x21,x0
02ba58a8  cmp w10,#0x1
02ba58ac  b.lt 0x02ba58d8
02ba58b0  bic w9,w10,w10, ASR #0x1f
02ba58b4  mov x8,xzr
02ba58b8  and x10,x10,#0xffffffff
02ba58bc  add x11,x21,#0x20
02ba58c0  cmp x10,x8
02ba58c4  b.eq 0x02ba5a18
02ba58c8  str w8,[x11, x8, LSL #0x2]
02ba58cc  add x8,x8,#0x1
02ba58d0  cmp x9,x8
02ba58d4  b.ne 0x02ba58c0
02ba58d8  ldr x8,[x19, #0x90]
02ba58dc  cbz x8,0x02ba5964
02ba58e0  ldr x0,[x22]
02ba58e4  ldr w1,[x8, #0x18]
02ba58e8  bl 0x029f5b40
02ba58ec  mov x22,x20
02ba58f0  mov x1,x0
02ba58f4  str x0,[x22, #0x10]!
02ba58f8  mov x0,x22
02ba58fc  bl 0x029f59f4
02ba5900  ldr x8,[x19, #0x90]
02ba5904  cbz x8,0x02ba5964
02ba5908  mov x26,xzr
02ba590c  ldrsw x8,[x8, #0x18]
02ba5910  cmp x26,x8
02ba5914  b.ge 0x02ba5968
02ba5918  ldr x8,[x19, #0x20]
02ba591c  cbz x8,0x02ba5964
02ba5920  ldr w9,[x8, #0x18]
02ba5924  cmp x26,x9
02ba5928  b.cs 0x02ba5a18
02ba592c  add x8,x8,x26, LSL #0x3
02ba5930  ldr x27,[x22]
02ba5934  mov x0,x19
02ba5938  ldr x1,[x8, #0x20]
02ba593c  bl 0x02ba5a7c
02ba5940  cbz x27,0x02ba5964
02ba5944  ldr w8,[x27, #0x18]
02ba5948  cmp x26,x8
02ba594c  b.cs 0x02ba5a18
02ba5950  add x9,x27,x26, LSL #0x2
02ba5954  ldr x8,[x19, #0x90]
02ba5958  add x26,x26,#0x1
02ba595c  str w0,[x9, #0x20]
02ba5960  cbnz x8,0x02ba590c
02ba5964  bl 0x029f5cfc
02ba5968  ldr x0,[x25]
02ba596c  bl 0x029f5cec
02ba5970  ldr x2,[x24]
02ba5974  mov x1,x20
02ba5978  mov x3,xzr
02ba597c  mov x22,x0
02ba5980  bl 0x03cf77bc
02ba5984  ldr x2,[x23]
02ba5988  mov x0,x21
02ba598c  mov x1,x22
02ba5990  bl 0x02f4973c
02ba5994  ldr w8,[x21, #0x18]
02ba5998  cmp w8,#0x1
02ba599c  b.lt 0x02ba59fc
02ba59a0  mov x20,xzr
02ba59a4  add x22,x21,#0x20
02ba59a8  cmp w20,w8
02ba59ac  b.cs 0x02ba5a18
02ba59b0  ldr x8,[x19, #0x90]
02ba59b4  cbz x8,0x02ba5964
02ba59b8  ldrsw x9,[x22, x20, LSL #0x2]
02ba59bc  ldr w10,[x8, #0x18]
02ba59c0  cmp w9,w10
02ba59c4  b.cs 0x02ba5a18
02ba59c8  add x8,x8,x9, LSL #0x3
02ba59cc  ldr x0,[x8, #0x20]
02ba59d0  cbz x0,0x02ba5964
02ba59d4  mov x1,xzr
02ba59d8  bl 0x057dc0f8
02ba59dc  cbz x0,0x02ba5964
02ba59e0  mov w1,w20
02ba59e4  mov x2,xzr
02ba59e8  bl 0x057f0be8
02ba59ec  ldr w8,[x21, #0x18]
02ba59f0  add x20,x20,#0x1
02ba59f4  cmp w20,w8
02ba59f8  b.lt 0x02ba59a8
02ba59fc  ldp x20,x19,[sp, #0x50]
02ba5a00  ldp x22,x21,[sp, #0x40]
02ba5a04  ldp x24,x23,[sp, #0x30]
02ba5a08  ldp x26,x25,[sp, #0x20]
02ba5a0c  ldp x28,x27,[sp, #0x10]
02ba5a10  ldr x30,[sp], #0x60
02ba5a14  ret
02ba5a18  bl 0x029f5d04
