02b9b7ac  adrp x8,0x116f000
02b9b7b0  mov x1,xzr
02b9b7b4  ldr d0,[x8, #0xca0]
02b9b7b8  mov w8,#0x999a
02b9b7bc  movk w8,#0x3f19, LSL #16
02b9b7c0  stur d0,[x0, #0x24]
02b9b7c4  str w8,[x0, #0x2c]
02b9b7c8  b 0x057e2ee0
