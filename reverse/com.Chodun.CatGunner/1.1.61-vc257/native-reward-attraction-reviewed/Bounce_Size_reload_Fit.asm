02b9aeec  fmov s3,0x3f000000
02b9aef0  ldr s4,[x0, #0x24]
02b9aef4  ldr s6,[x0, #0x2c]
02b9aef8  stp s0,s1,[x0, #0x38]
02b9aefc  fmul s5,s0,s4
02b9af00  fmul s7,s1,s4
02b9af04  fmul s0,s2,s4
02b9af08  fmul s1,s6,s3
02b9af0c  stp s2,s5,[x0, #0x40]
02b9af10  stp s7,s0,[x0, #0x48]
02b9af14  str s1,[x0, #0x30]
02b9af18  ret
