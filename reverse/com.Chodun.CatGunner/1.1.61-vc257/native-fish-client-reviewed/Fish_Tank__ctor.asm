02c6437c  adrp x8,0x1170000
02c64380  mov x9,#0x42c80000
02c64384  mov x1,xzr
02c64388  ldr d0,[x8, #0xa10]
02c6438c  mov w8,#0x999a
02c64390  movk x9,#0x1e, LSL #32
02c64394  movk w8,#0x3e19, LSL #16
02c64398  str x9,[x0, #0x28]
02c6439c  str d0,[x0, #0x30]
02c643a0  str w8,[x0, #0x38]
02c643a4  b 0x057e2ee0
