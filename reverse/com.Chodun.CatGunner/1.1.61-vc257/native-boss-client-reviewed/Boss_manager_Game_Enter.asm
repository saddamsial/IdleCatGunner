02c45fdc  stp x30,x21,[sp, #-0x20]!
02c45fe0  stp x20,x19,[sp, #0x10]
02c45fe4  adrp x21,0x625c000
02c45fe8  adrp x20,0x5e5d000
02c45fec  mov x19,x0
02c45ff0  ldrb w8,[x21, #0xdb]
02c45ff4  ldr x20,[x20, #0x338]
02c45ff8  tbnz w8,#0x0,0x02c46040
02c45ffc  adrp x0,0x5e5d000
02c46000  ldr x0,[x0, #0x5b0]
02c46004  bl 0x029f5a50
02c46008  adrp x0,0x5e5d000
02c4600c  ldr x0,[x0, #0x338]
02c46010  bl 0x029f5a50
02c46014  adrp x0,0x5e62000
02c46018  ldr x0,[x0, #0x670]
02c4601c  bl 0x029f5a50
02c46020  adrp x0,0x5e5d000
02c46024  ldr x0,[x0, #0xc20]
02c46028  bl 0x029f5a50
02c4602c  adrp x0,0x5e5d000
02c46030  ldr x0,[x0, #0x368]
02c46034  bl 0x029f5a50
02c46038  mov w8,#0x1
02c4603c  strb w8,[x21, #0xdb]
02c46040  ldr x0,[x20]
02c46044  adrp x21,0x5e5d000
02c46048  ldr w8,[x0, #0xe4]
02c4604c  ldr x21,[x21, #0xc20]
02c46050  cbnz w8,0x02c4605c
02c46054  bl 0x029f5bd0
02c46058  ldr x0,[x20]
02c4605c  ldr x8,[x21]
02c46060  ldr x9,[x0, #0xb8]
02c46064  ldr w10,[x8, #0xe4]
02c46068  strb wzr,[x9]
02c4606c  cbnz w10,0x02c4607c
02c46070  mov x0,x8
02c46074  bl 0x029f5bd0
02c46078  ldr x8,[x21]
02c4607c  ldr x8,[x8, #0xb8]
02c46080  ldr x0,[x8, #0x10]
02c46084  cbz x0,0x02c461cc
02c46088  adrp x20,0x5e62000
02c4608c  mov x1,xzr
02c46090  ldr x20,[x20, #0x670]
02c46094  bl 0x02ca8b2c
02c46098  ldr x8,[x20]
02c4609c  ldr x8,[x8, #0xb8]
02c460a0  ldr x0,[x8, #0x8]
02c460a4  cbz x0,0x02c461cc
02c460a8  mov x1,xzr
02c460ac  bl 0x02c21688
02c460b0  ldr x0,[x19, #0x40]
02c460b4  cbz x0,0x02c461cc
02c460b8  mov w1,wzr
02c460bc  mov x2,xzr
02c460c0  bl 0x057dff3c
02c460c4  ldr x0,[x19, #0x48]
02c460c8  cbz x0,0x02c461cc
02c460cc  mov w1,#0x1
02c460d0  mov x2,xzr
02c460d4  bl 0x057dff3c
02c460d8  ldr w8,[x19, #0x20]
02c460dc  ldr x0,[x19, #0x118]
02c460e0  strh wzr,[x19, #0x7c]
02c460e4  strb wzr,[x19, #0x7e]
02c460e8  str w8,[x19, #0x78]
02c460ec  cbz x0,0x02c461cc
02c460f0  adrp x20,0x5e5d000
02c460f4  mov w1,#0x1
02c460f8  mov x2,xzr
02c460fc  ldr x20,[x20, #0x368]
02c46100  bl 0x057dff3c
02c46104  mov x0,x19
02c46108  bl 0x02c461d0
02c4610c  ldr x8,[x20]
02c46110  ldr x8,[x8, #0xb8]
02c46114  ldr x0,[x8]
02c46118  cbz x0,0x02c461cc
02c4611c  adrp x20,0x5e5d000
02c46120  mov w1,#0x3
02c46124  mov x2,xzr
02c46128  ldr x20,[x20, #0x5b0]
02c4612c  bl 0x02c2a560
02c46130  ldr x8,[x20]
02c46134  ldr x8,[x8, #0xb8]
02c46138  ldr x0,[x8, #0x8]
02c4613c  cbz x0,0x02c461cc
02c46140  ldp s1,s2,[x19, #0x94]
02c46144  ldr s0,[x19, #0x90]
02c46148  bl 0x02c44748
02c4614c  ldr x8,[x20]
02c46150  ldr x8,[x8, #0xb8]
02c46154  ldr x0,[x8, #0x8]
02c46158  cbz x0,0x02c461cc
02c4615c  bl 0x02c43744
02c46160  adrp x20,0x625b000
02c46164  ldrb w8,[x20, #0xa57]
02c46168  cbnz w8,0x02c46180
02c4616c  adrp x0,0x5e5d000
02c46170  ldr x0,[x0, #0xd70]
02c46174  bl 0x029f5a50
02c46178  mov w8,#0x1
02c4617c  strb w8,[x20, #0xa57]
02c46180  adrp x8,0x5e5d000
02c46184  ldr x8,[x8, #0xd70]
02c46188  ldr x8,[x8]
02c4618c  ldr x8,[x8, #0xb8]
02c46190  ldr x0,[x8]
02c46194  cbz x0,0x02c461cc
02c46198  fmov s0,0x3f800000
02c4619c  mov w1,#0xa
02c461a0  mov x2,xzr
02c461a4  mov x3,xzr
02c461a8  bl 0x02c1f10c
02c461ac  mov x0,x19
02c461b0  bl 0x02c46234
02c461b4  mov x1,x0
02c461b8  mov x0,x19
02c461bc  mov x2,xzr
02c461c0  ldp x20,x19,[sp, #0x10]
02c461c4  ldp x30,x21,[sp], #0x20
02c461c8  b 0x057e2120
02c461cc  bl 0x029f5cfc
