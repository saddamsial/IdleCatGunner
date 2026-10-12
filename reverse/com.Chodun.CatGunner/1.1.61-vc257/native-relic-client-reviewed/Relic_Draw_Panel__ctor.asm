02c30a08  adrp x8,0x116f000
02c30a0c  mov x1,xzr
02c30a10  ldr d0,[x8, #0xb70]
02c30a14  mov w8,#0x999a
02c30a18  movk w8,#0x3e99, LSL #16
02c30a1c  str d0,[x0, #0x58]
02c30a20  str w8,[x0, #0x60]
02c30a24  b 0x057e2ee0
