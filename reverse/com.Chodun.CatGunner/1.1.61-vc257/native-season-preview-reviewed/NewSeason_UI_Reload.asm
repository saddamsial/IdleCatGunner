02c0504c  str x30,[sp, #-0x60]!
02c05050  stp x28,x27,[sp, #0x10]
02c05054  stp x26,x25,[sp, #0x20]
02c05058  stp x24,x23,[sp, #0x30]
02c0505c  stp x22,x21,[sp, #0x40]
02c05060  stp x20,x19,[sp, #0x50]
02c05064  adrp x20,0x625b000
02c05068  adrp x21,0x5e5d000
02c0506c  mov x19,x0
02c05070  ldrb w8,[x20, #0xe69]
02c05074  ldr x21,[x21, #0xd50]
02c05078  tbnz w8,#0x0,0x02c05090
02c0507c  adrp x0,0x5e5d000
02c05080  ldr x0,[x0, #0xd50]
02c05084  bl 0x029f5a50
02c05088  mov w8,#0x1
02c0508c  strb w8,[x20, #0xe69]
02c05090  ldr x0,[x21]
02c05094  ldr x20,[x19, #0x20]
02c05098  ldr w8,[x0, #0xe4]
02c0509c  cbnz w8,0x02c050a4
02c050a0  bl 0x029f5bd0
02c050a4  cbz x20,0x02c0524c
02c050a8  ldr x8,[x21]
02c050ac  mov x0,x20
02c050b0  mov x2,xzr
02c050b4  ldr x8,[x8, #0xb8]
02c050b8  ldrb w8,[x8]
02c050bc  cmp w8,#0x0
02c050c0  cset w1,eq
02c050c4  bl 0x057dff3c
02c050c8  ldr x0,[x21]
02c050cc  ldr x8,[x0, #0xb8]
02c050d0  ldrb w9,[x8]
02c050d4  cbnz w9,0x02c05230
02c050d8  ldr w9,[x0, #0xe4]
02c050dc  cbnz w9,0x02c050ec
02c050e0  bl 0x029f5bd0
02c050e4  ldr x8,[x21]
02c050e8  ldr x8,[x8, #0xb8]
02c050ec  ldr x20,[x8, #0x8]
02c050f0  cbz x20,0x02c0524c
02c050f4  ldr x9,[x20, #0x30]
02c050f8  cbz x9,0x02c0524c
02c050fc  ldr x8,[x19, #0x28]
02c05100  cbz x8,0x02c0524c
02c05104  ldr x8,[x8, #0x18]
02c05108  cmp w8,#0x1
02c0510c  b.lt 0x02c05230
02c05110  ldr w24,[x9, #0x18]
02c05114  ldr w9,[x20, #0x48]
02c05118  mov x23,xzr
02c0511c  and x27,x8,#0xffffffff
02c05120  mov x28,#0x100000000
02c05124  cmp w9,w24
02c05128  sub w11,w24,w8
02c0512c  csel w10,w9,w24,lt
02c05130  cmp w9,#0x0
02c05134  csel w9,wzr,w10,lt
02c05138  sub w9,w9,w8
02c0513c  bic w10,w9,w9, ASR #0x1f
02c05140  add w10,w10,w8
02c05144  cmp w10,w24
02c05148  csel w9,w11,w9,gt
02c0514c  bic w25,w9,w9, ASR #0x1f
02c05150  lsl x26,x25,#0x20
02c05154  ldr x8,[x19, #0x28]
02c05158  cbz x8,0x02c0524c
02c0515c  ldr w9,[x8, #0x18]
02c05160  cmp x23,x9
02c05164  b.cs 0x02c05250
02c05168  add x8,x8,x23, LSL #0x3
02c0516c  add x22,x25,x23
02c05170  cmp w22,w24
02c05174  ldr x21,[x8, #0x20]
02c05178  b.ge 0x02c05200
02c0517c  cbz x21,0x02c0524c
02c05180  mov x0,x21
02c05184  mov x1,xzr
02c05188  bl 0x057dc1c8
02c0518c  cbz x0,0x02c0524c
02c05190  mov w1,#0x1
02c05194  mov x2,xzr
02c05198  bl 0x057dff3c
02c0519c  ldr x8,[x20, #0x30]
02c051a0  cbz x8,0x02c0524c
02c051a4  ldr w9,[x8, #0x18]
02c051a8  add x10,x25,x23
02c051ac  cmp x10,x9
02c051b0  b.cs 0x02c05250
02c051b4  add x8,x8,x26, ASR #0x1d
02c051b8  ldr x8,[x8, #0x20]
02c051bc  cbz x8,0x02c0524c
02c051c0  ldp w3,w4,[x8, #0x14]
02c051c4  mov x0,x21
02c051c8  mov w1,#0x1
02c051cc  mov w2,w22
02c051d0  bl 0x02c04180
02c051d4  mov x0,x20
02c051d8  mov w1,#0x1
02c051dc  mov w2,w22
02c051e0  mov x3,xzr
02c051e4  bl 0x02ba6acc
02c051e8  mov w1,w0
02c051ec  mov x0,x21
02c051f0  mov w2,wzr
02c051f4  mov w3,wzr
02c051f8  bl 0x02c04394
02c051fc  b 0x02c05220
02c05200  cbz x21,0x02c0524c
02c05204  mov x0,x21
02c05208  mov x1,xzr
02c0520c  bl 0x057dc1c8
02c05210  cbz x0,0x02c0524c
02c05214  mov w1,wzr
02c05218  mov x2,xzr
02c0521c  bl 0x057dff3c
02c05220  add x23,x23,#0x1
02c05224  add x26,x26,x28
02c05228  cmp x27,x23
02c0522c  b.ne 0x02c05154
02c05230  ldp x20,x19,[sp, #0x50]
02c05234  ldp x22,x21,[sp, #0x40]
02c05238  ldp x24,x23,[sp, #0x30]
02c0523c  ldp x26,x25,[sp, #0x20]
02c05240  ldp x28,x27,[sp, #0x10]
02c05244  ldr x30,[sp], #0x60
02c05248  ret
02c0524c  bl 0x029f5cfc
02c05250  bl 0x029f5d04
