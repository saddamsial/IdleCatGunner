02b9b078  str x30,[sp, #-0x20]!
02b9b07c  stp x20,x19,[sp, #0x10]
02b9b080  mov w8,#0x6666
02b9b084  adrp x20,0x625b000
02b9b088  mov x19,x0
02b9b08c  movk w8,#0x3f66, LSL #16
02b9b090  ldrb w9,[x20, #0x279]
02b9b094  str w8,[x0, #0x24]
02b9b098  mov w8,#0xcccd
02b9b09c  movk w8,#0x3e4c, LSL #16
02b9b0a0  str w8,[x0, #0x2c]
02b9b0a4  cbnz w9,0x02b9b0bc
02b9b0a8  adrp x0,0x5e58000
02b9b0ac  ldr x0,[x0, #0xbf8]
02b9b0b0  bl 0x029f5a50
02b9b0b4  mov w8,#0x1
02b9b0b8  strb w8,[x20, #0x279]
02b9b0bc  adrp x8,0x5e58000
02b9b0c0  mov x0,x19
02b9b0c4  mov x1,xzr
02b9b0c8  ldr x8,[x8, #0xbf8]
02b9b0cc  ldr x8,[x8]
02b9b0d0  ldr x8,[x8, #0xb8]
02b9b0d4  ldur d0,[x8, #0xc]
02b9b0d8  ldr s1,[x8, #0x14]
02b9b0dc  str d0,[x19, #0x38]
02b9b0e0  str s1,[x19, #0x40]
02b9b0e4  ldp x20,x19,[sp, #0x10]
02b9b0e8  ldr x30,[sp], #0x20
02b9b0ec  b 0x057e2ee0
