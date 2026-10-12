02c716e4  stp d11,d10,[sp, #-0x40]!
02c716e8  stp d9,d8,[sp, #0x10]
02c716ec  stp x30,x21,[sp, #0x20]
02c716f0  stp x20,x19,[sp, #0x30]
02c716f4  fmov s8,s3
02c716f8  fmov s9,s2
02c716fc  adrp x20,0x625c000
02c71700  fmov s11,s1
02c71704  fmov s10,s0
02c71708  adrp x21,0x5e63000
02c7170c  ldrb w8,[x20, #0x2cc]
02c71710  ldr x21,[x21, #0xb80]
02c71714  mov x19,x0
02c71718  tbnz w8,#0x0,0x02c71730
02c7171c  adrp x0,0x5e63000
02c71720  ldr x0,[x0, #0xb80]
02c71724  bl 0x029f5a50
02c71728  mov w8,#0x1
02c7172c  strb w8,[x20, #0x2cc]
02c71730  ldr x0,[x21]
02c71734  bl 0x029f5cec
02c71738  mov x1,xzr
02c7173c  mov x20,x0
02c71740  bl 0x04893238
02c71744  mov x0,x20
02c71748  mov x1,x19
02c7174c  str wzr,[x20, #0x10]
02c71750  str x19,[x0, #0x20]!
02c71754  bl 0x029f59f4
02c71758  stp s11,s9,[x20, #0x30]
02c7175c  mov x0,x20
02c71760  stp s8,s10,[x20, #0x28]
02c71764  ldp x20,x19,[sp, #0x30]
02c71768  ldp x30,x21,[sp, #0x20]
02c7176c  ldp d9,d8,[sp, #0x10]
02c71770  ldp d11,d10,[sp], #0x40
02c71774  ret
