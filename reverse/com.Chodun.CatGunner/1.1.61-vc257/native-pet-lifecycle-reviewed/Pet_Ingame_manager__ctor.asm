02c7c0ec  adrp x8,0x116e000
02c7c0f0  adrp x9,0x116e000
02c7c0f4  mov x1,xzr
02c7c0f8  ldr q0,[x8, #0xa00]
02c7c0fc  adrp x8,0x116e000
02c7c100  ldr q1,[x9, #0x5f0]
02c7c104  ldr q2,[x8, #0x850]
02c7c108  stur q0,[x0, #0x28]
02c7c10c  stur q1,[x0, #0x38]
02c7c110  stur q2,[x0, #0x48]
02c7c114  b 0x057e2ee0
