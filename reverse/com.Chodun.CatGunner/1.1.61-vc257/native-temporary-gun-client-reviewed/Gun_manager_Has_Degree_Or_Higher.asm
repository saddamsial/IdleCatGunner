02c6a65c  str x30,[sp, #-0x10]!
02c6a660  ldr x8,[x0, #0x30]
02c6a664  cbz x8,0x02c6a6b8
02c6a668  add w9,w1,w1, LSL #0x2
02c6a66c  ldr w10,[x8, #0x18]
02c6a670  cmp w9,w10
02c6a674  b.ge 0x02c6a6b8
02c6a678  add x12,x8,w9, SXTW 
02c6a67c  mvn w8,w9
02c6a680  subs w9,w10,w9
02c6a684  add w11,w8,w10
02c6a688  csel w8,wzr,w9,cc
02c6a68c  add x9,x12,#0x20
02c6a690  cbz w8,0x02c6a6c4
02c6a694  mov w10,w11
02c6a698  ldrb w11,[x9], #0x1
02c6a69c  cmp w11,#0x0
02c6a6a0  cset w0,ne
02c6a6a4  cbnz w11,0x02c6a6bc
02c6a6a8  sub w11,w10,#0x1
02c6a6ac  sub w8,w8,#0x1
02c6a6b0  cbnz w10,0x02c6a690
02c6a6b4  b 0x02c6a6bc
02c6a6b8  mov w0,wzr
02c6a6bc  ldr x30,[sp], #0x10
02c6a6c0  ret
02c6a6c4  bl 0x029f5d04
