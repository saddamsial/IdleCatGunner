02c701c8  str x30,[sp, #-0x30]!
02c701cc  stp x22,x21,[sp, #0x10]
02c701d0  stp x20,x19,[sp, #0x20]
02c701d4  adrp x21,0x625c000
02c701d8  adrp x22,0x5e5d000
02c701dc  mov w19,w1
02c701e0  ldrb w8,[x21, #0x2bf]
02c701e4  ldr x22,[x22, #0xd40]
02c701e8  mov x20,x0
02c701ec  tbnz w8,#0x0,0x02c70204
02c701f0  adrp x0,0x5e5d000
02c701f4  ldr x0,[x0, #0xd40]
02c701f8  bl 0x029f5a50
02c701fc  mov w8,#0x1
02c70200  strb w8,[x21, #0x2bf]
02c70204  ldr x8,[x22]
02c70208  ldr x9,[x8, #0xb8]
02c7020c  ldr w8,[x20, #0x88]
02c70210  ldr x0,[x9]
02c70214  cmp w8,#0x2
02c70218  b.eq 0x02c70244
02c7021c  cmp w8,#0x1
02c70220  b.ne 0x02c70264
02c70224  cbz x0,0x02c70274
02c70228  ldr w1,[x20, #0x90]
02c7022c  and w2,w19,#0x1
02c70230  mov x3,xzr
02c70234  ldp x20,x19,[sp, #0x20]
02c70238  ldp x22,x21,[sp, #0x10]
02c7023c  ldr x30,[sp], #0x30
02c70240  b 0x02c683a0
02c70244  cbz x0,0x02c70274
02c70248  ldr w1,[x20, #0x90]
02c7024c  and w2,w19,#0x1
02c70250  mov x3,xzr
02c70254  ldp x20,x19,[sp, #0x20]
02c70258  ldp x22,x21,[sp, #0x10]
02c7025c  ldr x30,[sp], #0x30
02c70260  b 0x02c685d8
02c70264  ldp x20,x19,[sp, #0x20]
02c70268  ldp x22,x21,[sp, #0x10]
02c7026c  ldr x30,[sp], #0x30
02c70270  ret
02c70274  bl 0x029f5cfc
