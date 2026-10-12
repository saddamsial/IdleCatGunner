02c6a0ac  stp x30,x21,[sp, #-0x20]!
02c6a0b0  stp x20,x19,[sp, #0x10]
02c6a0b4  adrp x20,0x625c000
02c6a0b8  adrp x21,0x5e5d000
02c6a0bc  mov x19,x0
02c6a0c0  ldrb w8,[x20, #0x274]
02c6a0c4  ldr x21,[x21, #0x6a8]
02c6a0c8  tbnz w8,#0x0,0x02c6a0e0
02c6a0cc  adrp x0,0x5e5d000
02c6a0d0  ldr x0,[x0, #0x6a8]
02c6a0d4  bl 0x029f5a50
02c6a0d8  mov w8,#0x1
02c6a0dc  strb w8,[x20, #0x274]
02c6a0e0  ldr x0,[x21]
02c6a0e4  ldr w8,[x0, #0xe4]
02c6a0e8  cbnz w8,0x02c6a0f0
02c6a0ec  bl 0x029f5bd0
02c6a0f0  mov x0,xzr
02c6a0f4  bl 0x02c193d4
02c6a0f8  tbz w0,#0x0,0x02c6a124
02c6a0fc  bl 0x02c69fc0
02c6a100  tbz w0,#0x0,0x02c6a124
02c6a104  ldr x19,[x19, #0xb8]
02c6a108  bl 0x02c69f50
02c6a10c  mov x1,x0
02c6a110  mov x0,x19
02c6a114  mov x2,xzr
02c6a118  bl 0x046b2ddc
02c6a11c  eor w8,w0,#0x1
02c6a120  b 0x02c6a128
02c6a124  mov w8,wzr
02c6a128  ldp x20,x19,[sp, #0x10]
02c6a12c  and w0,w8,#0x1
02c6a130  ldp x30,x21,[sp], #0x20
02c6a134  ret
