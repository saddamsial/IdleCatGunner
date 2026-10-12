02c61164  stp x30,x23,[sp, #-0x30]!
02c61168  stp x22,x21,[sp, #0x10]
02c6116c  stp x20,x19,[sp, #0x20]
02c61170  adrp x23,0x625c000
02c61174  adrp x22,0x5e5d000
02c61178  mov w21,w2
02c6117c  ldrb w8,[x23, #0x21e]
02c61180  ldr x22,[x22, #0xd38]
02c61184  mov w20,w1
02c61188  mov x19,x0
02c6118c  tbnz w8,#0x0,0x02c611a4
02c61190  adrp x0,0x5e5d000
02c61194  ldr x0,[x0, #0xd38]
02c61198  bl 0x029f5a50
02c6119c  mov w8,#0x1
02c611a0  strb w8,[x23, #0x21e]
02c611a4  mov x0,x19
02c611a8  bl 0x02c60a20
02c611ac  mov w8,#0x1
02c611b0  ldr x9,[x22]
02c611b4  stp w20,w21,[x19, #0x40]
02c611b8  strh w8,[x19, #0x48]
02c611bc  ldr x8,[x9, #0xb8]
02c611c0  ldr x8,[x8]
02c611c4  cbz x8,0x02c612ac
02c611c8  ldr x8,[x8, #0x30]
02c611cc  cbz x8,0x02c612ac
02c611d0  ldr w9,[x8, #0x18]
02c611d4  cmp w9,w20
02c611d8  b.ls 0x02c612b0
02c611dc  ldr x0,[x19, #0x20]
02c611e0  cbz x0,0x02c612ac
02c611e4  add x8,x8,w20, SXTW  #0x3
02c611e8  mov x2,xzr
02c611ec  ldr x1,[x8, #0x20]
02c611f0  bl 0x058d34cc
02c611f4  ldr x0,[x19, #0x20]
02c611f8  cbz x0,0x02c612ac
02c611fc  ldr x8,[x0]
02c61200  ldr x9,[x8, #0x408]
02c61204  ldr x1,[x8, #0x410]
02c61208  blr x9
02c6120c  ldr x8,[x22]
02c61210  ldr x8,[x8, #0xb8]
02c61214  ldr x8,[x8]
02c61218  cbz x8,0x02c612ac
02c6121c  ldr x8,[x8, #0x38]
02c61220  cbz x8,0x02c612ac
02c61224  ldrsw x9,[x19, #0x40]
02c61228  ldr w10,[x8, #0x18]
02c6122c  cmp w9,w10
02c61230  b.cs 0x02c612b0
02c61234  ldr x0,[x19, #0x28]
02c61238  cbz x0,0x02c612ac
02c6123c  add x8,x8,x9, LSL #0x3
02c61240  mov x2,xzr
02c61244  ldr x1,[x8, #0x20]
02c61248  bl 0x058d34cc
02c6124c  mov x0,x19
02c61250  bl 0x02c612b4
02c61254  mov x0,x19
02c61258  bl 0x02c61374
02c6125c  mov x0,x19
02c61260  bl 0x02c613b8
02c61264  mov x0,x19
02c61268  bl 0x02c61024
02c6126c  mov x0,x19
02c61270  mov x1,xzr
02c61274  strh wzr,[x19, #0x84]
02c61278  strb wzr,[x19, #0xb0]
02c6127c  bl 0x057dc1c8
02c61280  cbz x0,0x02c612ac
02c61284  mov w1,#0x1
02c61288  mov x2,xzr
02c6128c  bl 0x057dff3c
02c61290  mov x0,x19
02c61294  bl 0x02c613e4
02c61298  mov x0,x19
02c6129c  ldp x20,x19,[sp, #0x20]
02c612a0  ldp x22,x21,[sp, #0x10]
02c612a4  ldp x30,x23,[sp], #0x30
02c612a8  b 0x02c615ac
02c612ac  bl 0x029f5cfc
02c612b0  bl 0x029f5d04
