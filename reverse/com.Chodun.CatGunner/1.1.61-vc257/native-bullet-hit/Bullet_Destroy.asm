02c6708c  stp x30,x19,[sp, #-0x10]!
02c67090  ldrb w8,[x0, #0x68]
02c67094  cbz w8,0x02c670a0
02c67098  ldp x30,x19,[sp], #0x10
02c6709c  ret
02c670a0  ldr w8,[x0, #0x98]
02c670a4  mov x19,x0
02c670a8  and w8,w8,#0xfffffffe
02c670ac  cmp w8,#0x4
02c670b0  b.ne 0x02c670f4
02c670b4  mov x0,x19
02c670b8  mov x1,xzr
02c670bc  bl 0x057dc0f8
02c670c0  cbz x0,0x02c67100
02c670c4  mov x1,xzr
02c670c8  bl 0x057eed98
02c670cc  mov x0,x19
02c670d0  bl 0x02c65edc
02c670d4  mov x0,x19
02c670d8  mov x1,xzr
02c670dc  bl 0x057dc0f8
02c670e0  cbz x0,0x02c67100
02c670e4  mov x1,xzr
02c670e8  bl 0x057eed98
02c670ec  mov x0,x19
02c670f0  bl 0x02c66180
02c670f4  mov x0,x19
02c670f8  ldp x30,x19,[sp], #0x10
02c670fc  b 0x02c66330
02c67100  bl 0x029f5cfc
