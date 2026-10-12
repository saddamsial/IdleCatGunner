02c550e4  str x30,[sp, #-0x10]!
02c550e8  cbz x0,0x02c55138
02c550ec  cbz x1,0x02c55138
02c550f0  ldr x9,[x0, #0x18]
02c550f4  ldr x10,[x1, #0x18]
02c550f8  cmp w9,w10
02c550fc  csel w8,w9,w10,lt
02c55100  cmp w8,#0x1
02c55104  b.lt 0x02c55138
02c55108  and x9,x9,#0xffffffff
02c5510c  and x10,x10,#0xffffffff
02c55110  add x11,x0,#0x20
02c55114  add x12,x1,#0x20
02c55118  cbz x9,0x02c55140
02c5511c  cbz x10,0x02c55140
02c55120  ldrb w13,[x11], #0x1
02c55124  subs x8,x8,#0x1
02c55128  sub x10,x10,#0x1
02c5512c  sub x9,x9,#0x1
02c55130  strb w13,[x12], #0x1
02c55134  b.ne 0x02c55118
02c55138  ldr x30,[sp], #0x10
02c5513c  ret
02c55140  bl 0x029f5d04
