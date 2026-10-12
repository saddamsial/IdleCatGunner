02c45170  sub sp,sp,#0x80
02c45174  stp d15,d14,[sp, #0x20]
02c45178  stp d13,d12,[sp, #0x30]
02c4517c  stp d11,d10,[sp, #0x40]
02c45180  stp d9,d8,[sp, #0x50]
02c45184  str x30,[sp, #0x60]
02c45188  stp x20,x19,[sp, #0x70]
02c4518c  mov x19,x0
02c45190  bl 0x02c45270
02c45194  mov x0,x19
02c45198  mov x1,xzr
02c4519c  str s0,[sp, #0x6c]
02c451a0  fmov s9,s1
02c451a4  fmov s10,s2
02c451a8  bl 0x057dc0f8
02c451ac  cbz x0,0x02c4526c
02c451b0  mov x1,xzr
02c451b4  bl 0x057eed98
02c451b8  ldr w8,[x19, #0x6c]
02c451bc  cmp w8,#0x1
02c451c0  b.lt 0x02c4522c
02c451c4  fmov s11,s0
02c451c8  fmov s12,s1
02c451cc  mov w20,wzr
02c451d0  fmov s13,s2
02c451d4  mov x0,x19
02c451d8  bl 0x02c452ec
02c451dc  fmov s14,s0
02c451e0  fmov s15,s1
02c451e4  ldr s0,[x19, #0x68]
02c451e8  fmov s8,s2
02c451ec  fmov s1,s12
02c451f0  ldr s6,[sp, #0x6c]
02c451f4  str s0,[sp, #0x10]
02c451f8  fmov s0,s11
02c451fc  fmov s2,s13
02c45200  stp s9,s10,[sp, #0x4]
02c45204  fmov s3,s14
02c45208  fmov s4,s15
02c4520c  str s6,[sp]
02c45210  fmov s5,s8
02c45214  bl 0x02c453a8
02c45218  tbz w0,#0x0,0x02c45240
02c4521c  ldr w8,[x19, #0x6c]
02c45220  add w20,w20,#0x1
02c45224  cmp w20,w8
02c45228  b.lt 0x02c451d4
02c4522c  mov x0,x19
02c45230  bl 0x02c452ec
02c45234  fmov s14,s0
02c45238  fmov s15,s1
02c4523c  fmov s8,s2
02c45240  fmov s0,s14
02c45244  fmov s1,s15
02c45248  ldr x30,[sp, #0x60]
02c4524c  fmov s2,s8
02c45250  ldp x20,x19,[sp, #0x70]
02c45254  ldp d9,d8,[sp, #0x50]
02c45258  ldp d11,d10,[sp, #0x40]
02c4525c  ldp d13,d12,[sp, #0x30]
02c45260  ldp d15,d14,[sp, #0x20]
02c45264  add sp,sp,#0x80
02c45268  ret
02c4526c  bl 0x029f5cfc
