02c751e4  stp d9,d8,[sp, #-0x30]!
02c751e8  str x30,[sp, #0x10]
02c751ec  stp x20,x19,[sp, #0x20]
02c751f0  ldr w8,[x0, #0x10]
02c751f4  ldr x20,[x0, #0x20]
02c751f8  mov x19,x0
02c751fc  cmp w8,#0x1
02c75200  b.eq 0x02c75240
02c75204  cbnz w8,0x02c75360
02c75208  mov w8,#0xffffffff
02c7520c  str w8,[x19, #0x10]
02c75210  cbz x20,0x02c75374
02c75214  mov x0,x20
02c75218  mov x1,xzr
02c7521c  bl 0x057dc0f8
02c75220  cbz x0,0x02c75374
02c75224  mov x1,xzr
02c75228  bl 0x057ef578
02c7522c  movi d8,#0x0
02c75230  stp s0,s1,[x19, #0x38]
02c75234  str s2,[x19, #0x40]
02c75238  str wzr,[x19, #0x44]
02c7523c  b 0x02c7524c
02c75240  ldr s8,[x19, #0x44]
02c75244  mov w8,#0xffffffff
02c75248  str w8,[x19, #0x10]
02c7524c  ldr s0,[x19, #0x28]
02c75250  fcmp s8,s0
02c75254  b.pl 0x02c7532c
02c75258  mov x0,xzr
02c7525c  bl 0x057ebb34
02c75260  fadd s8,s8,s0
02c75264  str s8,[x19, #0x44]
02c75268  cbz x20,0x02c75374
02c7526c  ldr s9,[x19, #0x28]
02c75270  mov x0,x20
02c75274  mov x1,xzr
02c75278  bl 0x057dc0f8
02c7527c  cbz x0,0x02c75374
02c75280  fdiv s0,s8,s9
02c75284  fmov s1,0x3f800000
02c75288  movi d3,#0x0
02c7528c  fmov s4,0x40400000
02c75290  mov x1,xzr
02c75294  fcmp s0,s1
02c75298  fcsel s2,s1,s0,gt
02c7529c  fcmp s0,#0.0
02c752a0  fcsel s0,s3,s2,mi
02c752a4  fcmp s0,#0.0
02c752a8  fcsel s0,s3,s0,mi
02c752ac  fadd s2,s0,s0
02c752b0  fmul s4,s0,s4
02c752b4  fmul s2,s0,s2
02c752b8  fmul s4,s0,s4
02c752bc  fmul s0,s0,s2
02c752c0  fsub s0,s4,s0
02c752c4  ldr s4,[x19, #0x34]
02c752c8  fsub s2,s1,s0
02c752cc  fmul s2,s2,s3
02c752d0  fadd s0,s0,s2
02c752d4  ldur d2,[x19, #0x2c]
02c752d8  fcmp s0,s1
02c752dc  fcsel s1,s1,s0,gt
02c752e0  fcmp s0,#0.0
02c752e4  ldr d0,[x19, #0x38]
02c752e8  fsub v2.2S,v2.2S,v0.2S
02c752ec  fcsel s1,s3,s1,mi
02c752f0  ldr s3,[x19, #0x40]
02c752f4  fsub s4,s4,s3
02c752f8  fmul v2.2S,v2.2S,v1.S[0x0]
02c752fc  fmul s1,s1,s4
02c75300  fadd v0.2S,v0.2S,v2.2S
02c75304  fadd s2,s3,s1
02c75308  dup s1,v0.S[0x1]
02c7530c  bl 0x057ef654
02c75310  str xzr,[x19, #0x18]!
02c75314  mov x0,x19
02c75318  mov x1,xzr
02c7531c  bl 0x029f59f4
02c75320  mov w0,#0x1
02c75324  stur w0,[x19, #-0x8]
02c75328  b 0x02c75364
02c7532c  cbz x20,0x02c75374
02c75330  mov x0,x20
02c75334  mov x1,xzr
02c75338  bl 0x057dc0f8
02c7533c  cbz x0,0x02c75374
02c75340  ldp s1,s2,[x19, #0x30]
02c75344  mov x1,xzr
02c75348  ldr s0,[x19, #0x2c]
02c7534c  bl 0x057ef654
02c75350  add x0,x20,#0x108
02c75354  mov x1,xzr
02c75358  str xzr,[x20, #0x108]
02c7535c  bl 0x029f59f4
02c75360  mov w0,wzr
02c75364  ldp x20,x19,[sp, #0x20]
02c75368  ldr x30,[sp, #0x10]
02c7536c  ldp d9,d8,[sp], #0x30
02c75370  ret
02c75374  bl 0x029f5cfc
