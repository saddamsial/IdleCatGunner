02c2894c  stp x30,x19,[sp, #-0x10]!
02c28950  mov w8,#0x3f800000
02c28954  mov w9,#0x1
02c28958  mov x1,xzr
02c2895c  mov x19,x0
02c28960  str w8,[x0, #0xe4]
02c28964  strb w9,[x0, #0xe8]
02c28968  str w8,[x0, #0xec]
02c2896c  bl 0x05ab6800
02c28970  strb wzr,[x19, #0xa0]
02c28974  ldp x30,x19,[sp], #0x10
02c28978  ret
