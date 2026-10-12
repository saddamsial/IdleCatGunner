02c6cea4  fmov v0.4S,#0x3f800000
02c6cea8  adrp x8,0x116f000
02c6ceac  mov x1,xzr
02c6ceb0  ldr q1,[x8, #0x3c0]
02c6ceb4  mov w9,#0xffffffff
02c6ceb8  str w9,[x0, #0x20]
02c6cebc  stur q1,[x0, #0x68]
02c6cec0  stur q0,[x0, #0x58]
02c6cec4  str w9,[x0, #0x7c]
02c6cec8  b 0x057e2ee0
