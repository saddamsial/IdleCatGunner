02c4563c  adrp x8,0x116d000
02c45640  mov x1,xzr
02c45644  ldr q0,[x8, #0xfc0]
02c45648  mov x8,#0x40800000
02c4564c  movk x8,#0xa, LSL #32
02c45650  stur q0,[x0, #0x58]
02c45654  str x8,[x0, #0x68]
02c45658  b 0x057e2ee0
