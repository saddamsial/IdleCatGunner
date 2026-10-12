02c417e8  str d10,[sp, #-0x40]!
02c417ec  stp d9,d8,[sp, #0x10]
02c417f0  stp x30,x21,[sp, #0x20]
02c417f4  stp x20,x19,[sp, #0x30]
02c417f8  adrp x20,0x625c000
02c417fc  adrp x21,0x5e59000
02c41800  mov x19,x0
02c41804  ldrb w8,[x20, #0xb1]
02c41808  ldr x21,[x21, #0x1c0]
02c4180c  tbnz w8,#0x0,0x02c41830
02c41810  adrp x0,0x5e63000
02c41814  ldr x0,[x0, #0x1d8]
02c41818  bl 0x029f5a50
02c4181c  adrp x0,0x5e59000
02c41820  ldr x0,[x0, #0x1c0]
02c41824  bl 0x029f5a50
02c41828  mov w8,#0x1
02c4182c  strb w8,[x20, #0xb1]
02c41830  ldr x0,[x21]
02c41834  ldr x20,[x19, #0xc0]
02c41838  ldr w8,[x0, #0xe4]
02c4183c  cbnz w8,0x02c41844
02c41840  bl 0x029f5bd0
02c41844  mov x0,x20
02c41848  mov x1,xzr
02c4184c  mov x2,xzr
02c41850  bl 0x057e14b4
02c41854  tbnz w0,#0x0,0x02c419b8
02c41858  ldr x0,[x21]
02c4185c  ldr x20,[x19, #0xd0]
02c41860  ldr w8,[x0, #0xe4]
02c41864  cbnz w8,0x02c4186c
02c41868  bl 0x029f5bd0
02c4186c  mov x0,x20
02c41870  mov x1,xzr
02c41874  mov x2,xzr
02c41878  bl 0x057e14b4
02c4187c  tbnz w0,#0x0,0x02c419b8
02c41880  ldr x0,[x19, #0xd0]
02c41884  cbz x0,0x02c419cc
02c41888  mov x1,xzr
02c4188c  bl 0x057eecc8
02c41890  ldr x8,[x21]
02c41894  mov x20,x0
02c41898  ldr w9,[x8, #0xe4]
02c4189c  cbnz w9,0x02c418a8
02c418a0  mov x0,x8
02c418a4  bl 0x029f5bd0
02c418a8  mov x0,x20
02c418ac  mov x1,xzr
02c418b0  mov x2,xzr
02c418b4  bl 0x057dfa70
02c418b8  mov w8,w0
02c418bc  ldr x0,[x19, #0xc0]
02c418c0  tbz w8,#0x0,0x02c41914
02c418c4  cbz x0,0x02c419cc
02c418c8  mov x1,xzr
02c418cc  bl 0x057eed98
02c418d0  ldr x0,[x19, #0xd0]
02c418d4  cbz x0,0x02c419cc
02c418d8  mov x1,xzr
02c418dc  fmov s8,s0
02c418e0  fmov s9,s1
02c418e4  fmov s10,s2
02c418e8  bl 0x057eed98
02c418ec  cbz x20,0x02c419cc
02c418f0  fsub s2,s10,s2
02c418f4  fsub s1,s9,s1
02c418f8  mov x0,x20
02c418fc  fsub s0,s8,s0
02c41900  mov x1,xzr
02c41904  bl 0x057f041c
02c41908  fmov s3,s0
02c4190c  fmov s0,s1
02c41910  b 0x02c41948
02c41914  cbz x0,0x02c419cc
02c41918  mov x1,xzr
02c4191c  bl 0x057eed98
02c41920  ldr x0,[x19, #0xd0]
02c41924  cbz x0,0x02c419cc
02c41928  mov x1,xzr
02c4192c  fmov s8,s0
02c41930  fmov s9,s1
02c41934  fmov s10,s2
02c41938  bl 0x057eed98
02c4193c  fsub s3,s8,s0
02c41940  fsub s0,s9,s1
02c41944  fsub s2,s10,s2
02c41948  fmul s1,s3,s3
02c4194c  fmul s4,s0,s0
02c41950  adrp x8,0x116c000
02c41954  fmul s2,s2,s2
02c41958  fadd s1,s1,s4
02c4195c  fadd s1,s2,s1
02c41960  ldr s2,[x8, #0x200]
02c41964  fcmp s1,s2
02c41968  b.mi 0x02c419b8
02c4196c  fmov s1,s3
02c41970  ldr x19,[x19, #0xd0]
02c41974  bl 0x05afb2e0
02c41978  adrp x8,0x5e63000
02c4197c  fmov s8,s0
02c41980  ldr x8,[x8, #0x1d8]
02c41984  ldr x0,[x8]
02c41988  ldr w8,[x0, #0xe4]
02c4198c  cbnz w8,0x02c41994
02c41990  bl 0x029f5bd0
02c41994  adrp x8,0x116c000
02c41998  mov x0,x19
02c4199c  ldr s0,[x8, #0x74]
02c419a0  ldp x20,x19,[sp, #0x30]
02c419a4  ldp x30,x21,[sp, #0x20]
02c419a8  fmul s0,s8,s0
02c419ac  ldp d9,d8,[sp, #0x10]
02c419b0  ldr d10,[sp], #0x40
02c419b4  b 0x02c3a370
02c419b8  ldp x20,x19,[sp, #0x30]
02c419bc  ldp x30,x21,[sp, #0x20]
02c419c0  ldp d9,d8,[sp, #0x10]
02c419c4  ldr d10,[sp], #0x40
02c419c8  ret
02c419cc  bl 0x029f5cfc
