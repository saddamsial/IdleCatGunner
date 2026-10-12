02c4ce44  fmov v0.2S,#0x3f800000
02c4ce48  adrp x8,0x116d000
02c4ce4c  mov x1,xzr
02c4ce50  ldr q1,[x8, #0x6a0]
02c4ce54  stur q1,[x0, #0x48]
02c4ce58  str d0,[x0, #0x58]
02c4ce5c  b 0x057e2ee0
