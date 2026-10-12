02c367d0  adrp x8,0x116f000
02c367d4  mov x1,xzr
02c367d8  ldr d0,[x8, #0xd50]
02c367dc  mov w8,#0x999a
02c367e0  movk w8,#0x3e99, LSL #16
02c367e4  str d0,[x0, #0x88]
02c367e8  str w8,[x0, #0x90]
02c367ec  b 0x057e2ee0
