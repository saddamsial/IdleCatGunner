02c7d7e4  str x30,[sp, #-0x10]!
02c7d7e8  ldr x8,[x0, #0x28]
02c7d7ec  cbz x8,0x02c7d824
02c7d7f0  ldr x9,[x8, #0x18]
02c7d7f4  and x10,x9,#0xffffffff
02c7d7f8  mov w0,w9
02c7d7fc  sub x10,x10,#0x1
02c7d800  subs w0,w0,#0x1
02c7d804  b.mi 0x02c7d824
02c7d808  cmp w0,w9
02c7d80c  b.cs 0x02c7d830
02c7d810  add x11,x8,w10, UXTW 
02c7d814  sub x10,x10,#0x1
02c7d818  ldrb w11,[x11, #0x20]
02c7d81c  cbz w11,0x02c7d800
02c7d820  b 0x02c7d828
02c7d824  mov w0,#0xffffffff
02c7d828  ldr x30,[sp], #0x10
02c7d82c  ret
02c7d830  bl 0x029f5d04
