02c629e4  str x30,[sp, #-0x20]!
02c629e8  stp x20,x19,[sp, #0x10]
02c629ec  movi v0.2D,#-0x1
02c629f0  adrp x8,0x116f000
02c629f4  adrp x20,0x625b000
02c629f8  ldr q1,[x8, #0x140]
02c629fc  ldrb w8,[x20, #0x279]
02c62a00  mov w9,#0xd70a
02c62a04  mov x19,x0
02c62a08  movk w9,#0x3da3, LSL #16
02c62a0c  stur q1,[x0, #0x88]
02c62a10  str d0,[x0, #0x40]
02c62a14  str w9,[x0, #0x98]
02c62a18  cbnz w8,0x02c62a30
02c62a1c  adrp x0,0x5e58000
02c62a20  ldr x0,[x0, #0xbf8]
02c62a24  bl 0x029f5a50
02c62a28  mov w8,#0x1
02c62a2c  strb w8,[x20, #0x279]
02c62a30  adrp x8,0x5e58000
02c62a34  mov x0,x19
02c62a38  mov x1,xzr
02c62a3c  ldr x8,[x8, #0xbf8]
02c62a40  ldr x8,[x8]
02c62a44  ldr x8,[x8, #0xb8]
02c62a48  ldur d0,[x8, #0xc]
02c62a4c  ldr s1,[x8, #0x14]
02c62a50  stur d0,[x19, #0x9c]
02c62a54  str s1,[x19, #0xa4]
02c62a58  ldp x20,x19,[sp, #0x10]
02c62a5c  ldr x30,[sp], #0x20
02c62a60  b 0x057e2ee0
