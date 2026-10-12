02c0a104  sub sp,sp,#0x50
02c0a108  stp x30,x25,[sp, #0x10]
02c0a10c  stp x24,x23,[sp, #0x20]
02c0a110  stp x22,x21,[sp, #0x30]
02c0a114  stp x20,x19,[sp, #0x40]
02c0a118  adrp x24,0x5e62000
02c0a11c  adrp x19,0x5e62000
02c0a120  adrp x20,0x5e62000
02c0a124  adrp x25,0x625b000
02c0a128  adrp x23,0x5e62000
02c0a12c  adrp x22,0x5e62000
02c0a130  adrp x21,0x5e62000
02c0a134  ldr x24,[x24, #0xc0]
02c0a138  ldr x19,[x19, #0xc8]
02c0a13c  ldr x20,[x20, #0x40]
02c0a140  ldr x23,[x23, #0xd0]
02c0a144  ldrb w8,[x25, #0xe8f]
02c0a148  ldr x22,[x22, #0xd8]
02c0a14c  ldr x21,[x21, #0xe0]
02c0a150  tbnz w8,#0x0,0x02c0a1a4
02c0a154  adrp x0,0x5e62000
02c0a158  ldr x0,[x0, #0xc0]
02c0a15c  bl 0x029f5a50
02c0a160  adrp x0,0x5e62000
02c0a164  ldr x0,[x0, #0x40]
02c0a168  bl 0x029f5a50
02c0a16c  adrp x0,0x5e62000
02c0a170  ldr x0,[x0, #0xd8]
02c0a174  bl 0x029f5a50
02c0a178  adrp x0,0x5e62000
02c0a17c  ldr x0,[x0, #0xd0]
02c0a180  bl 0x029f5a50
02c0a184  adrp x0,0x5e62000
02c0a188  ldr x0,[x0, #0xe0]
02c0a18c  bl 0x029f5a50
02c0a190  adrp x0,0x5e62000
02c0a194  ldr x0,[x0, #0xc8]
02c0a198  bl 0x029f5a50
02c0a19c  mov w8,#0x1
02c0a1a0  strb w8,[x25, #0xe8f]
02c0a1a4  ldr x0,[x24]
02c0a1a8  mov w1,#0x4
02c0a1ac  bl 0x029f5b40
02c0a1b0  ldr x1,[x19]
02c0a1b4  mov x2,xzr
02c0a1b8  mov x19,x0
02c0a1bc  bl 0x047779e0
02c0a1c0  ldr x8,[x20]
02c0a1c4  mov x1,x19
02c0a1c8  ldr x8,[x8, #0xb8]
02c0a1cc  str x19,[x8]
02c0a1d0  ldr x8,[x20]
02c0a1d4  ldr x0,[x8, #0xb8]
02c0a1d8  bl 0x029f59f4
02c0a1dc  ldr x0,[x24]
02c0a1e0  mov w1,#0x4
02c0a1e4  bl 0x029f5b40
02c0a1e8  ldr x1,[x23]
02c0a1ec  mov x2,xzr
02c0a1f0  mov x19,x0
02c0a1f4  bl 0x047779e0
02c0a1f8  ldr x8,[x20]
02c0a1fc  mov x1,x19
02c0a200  ldr x0,[x8, #0xb8]
02c0a204  str x19,[x0, #0x8]!
02c0a208  bl 0x029f59f4
02c0a20c  adrp x8,0x116e000
02c0a210  add x8,x8,#0x140
02c0a214  ldr x0,[x22]
02c0a218  ldr q0,[x8]
02c0a21c  mov x1,sp
02c0a220  str q0,[sp]
02c0a224  bl 0x029f5b48
02c0a228  ldr x1,[x21]
02c0a22c  mov x2,xzr
02c0a230  mov x19,x0
02c0a234  bl 0x047779e0
02c0a238  ldr x8,[x20]
02c0a23c  mov x1,x19
02c0a240  ldr x0,[x8, #0xb8]
02c0a244  str x19,[x0, #0x10]!
02c0a248  bl 0x029f59f4
02c0a24c  ldp x20,x19,[sp, #0x40]
02c0a250  ldp x22,x21,[sp, #0x30]
02c0a254  ldp x24,x23,[sp, #0x20]
02c0a258  ldp x30,x25,[sp, #0x10]
02c0a25c  add sp,sp,#0x50
02c0a260  ret
