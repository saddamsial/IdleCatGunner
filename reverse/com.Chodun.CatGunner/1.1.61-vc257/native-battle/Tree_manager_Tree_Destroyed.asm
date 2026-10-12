02cabf6c  sub sp,sp,#0x60
02cabf70  stp d9,d8,[sp, #0x20]
02cabf74  stp x30,x23,[sp, #0x30]
02cabf78  stp x22,x21,[sp, #0x40]
02cabf7c  stp x20,x19,[sp, #0x50]
02cabf80  adrp x21,0x625c000
02cabf84  adrp x20,0x5e5d000
02cabf88  mov x19,x0
02cabf8c  ldrb w8,[x21, #0x526]
02cabf90  ldr x20,[x20, #0x338]
02cabf94  tbnz w8,#0x0,0x02cabfe8
02cabf98  adrp x0,0x5e5d000
02cabf9c  ldr x0,[x0, #0x540]
02cabfa0  bl 0x029f5a50
02cabfa4  adrp x0,0x5e5d000
02cabfa8  ldr x0,[x0, #0x338]
02cabfac  bl 0x029f5a50
02cabfb0  adrp x0,0x5e5e000
02cabfb4  ldr x0,[x0, #0x338]
02cabfb8  bl 0x029f5a50
02cabfbc  adrp x0,0x5e5d000
02cabfc0  ldr x0,[x0, #0xfe8]
02cabfc4  bl 0x029f5a50
02cabfc8  adrp x0,0x5e5d000
02cabfcc  ldr x0,[x0, #0xd50]
02cabfd0  bl 0x029f5a50
02cabfd4  adrp x0,0x5e64000
02cabfd8  ldr x0,[x0, #0xa70]
02cabfdc  bl 0x029f5a50
02cabfe0  mov w8,#0x1
02cabfe4  strb w8,[x21, #0x526]
02cabfe8  ldr x0,[x20]
02cabfec  str wzr,[sp, #0x18]
02cabff0  ldr w8,[x0, #0xe4]
02cabff4  cbnz w8,0x02cac000
02cabff8  bl 0x029f5bd0
02cabffc  ldr x0,[x20]
02cac000  ldr x8,[x0, #0xb8]
02cac004  ldrb w8,[x8]
02cac008  cbz w8,0x02cac1e4
02cac00c  ldr w8,[x19, #0x90]
02cac010  ldr x0,[x19, #0xa0]
02cac014  sub w8,w8,#0x1
02cac018  str w8,[x19, #0x90]
02cac01c  cbz x0,0x02cac1fc
02cac020  ldr w9,[x19, #0x94]
02cac024  mov x1,xzr
02cac028  sub w8,w9,w8
02cac02c  scvtf s1,w9
02cac030  scvtf s0,w8
02cac034  fdiv s8,s0,s1
02cac038  fmov s0,s8
02cac03c  bl 0x02c7a4f0
02cac040  ldr w8,[x19, #0x28]
02cac044  cbnz w8,0x02cac19c
02cac048  ldp w8,w9,[x19, #0x2c]
02cac04c  cmp w8,w9
02cac050  b.lt 0x02cac19c
02cac054  adrp x20,0x625b000
02cac058  fmov s9,0x41200000
02cac05c  ldrb w8,[x20, #0xa65]
02cac060  cbnz w8,0x02cac078
02cac064  adrp x0,0x5e59000
02cac068  ldr x0,[x0]
02cac06c  bl 0x029f5a50
02cac070  mov w8,#0x1
02cac074  strb w8,[x20, #0xa65]
02cac078  adrp x8,0x5e59000
02cac07c  fmul s8,s8,s9
02cac080  ldr x8,[x8]
02cac084  ldr x0,[x8]
02cac088  ldr w8,[x0, #0xe4]
02cac08c  cbnz w8,0x02cac094
02cac090  bl 0x029f5bd0
02cac094  fcvtms w8,s8
02cac098  frintm s0,s8
02cac09c  mov w9,#0x7f800000
02cac0a0  fmov s1,w9
02cac0a4  add w8,w8,w8, LSL #0x2
02cac0a8  fcmp s0,s1
02cac0ac  lsl w8,w8,#0x1
02cac0b0  csel w20,wzr,w8,eq
02cac0b4  cmp w20,#0xa
02cac0b8  b.lt 0x02cac19c
02cac0bc  adrp x23,0x5e58000
02cac0c0  add x1,sp,#0xc
02cac0c4  ldr x23,[x23, #0xa10]
02cac0c8  ldr w8,[x19, #0x28]
02cac0cc  ldr x0,[x23, #0x48]
02cac0d0  str w8,[sp, #0xc]
02cac0d4  bl 0x029f5bd8
02cac0d8  mov x21,x0
02cac0dc  ldr w8,[x19, #0x2c]
02cac0e0  ldr x0,[x23, #0x48]
02cac0e4  add x1,sp,#0x8
02cac0e8  str w8,[sp, #0x8]
02cac0ec  bl 0x029f5bd8
02cac0f0  mov x22,x0
02cac0f4  ldr x0,[x23, #0x48]
02cac0f8  add x1,sp,#0x4
02cac0fc  str w20,[sp, #0x4]
02cac100  bl 0x029f5bd8
02cac104  adrp x8,0x5e64000
02cac108  mov x3,x0
02cac10c  mov x1,x21
02cac110  ldr x8,[x8, #0xa70]
02cac114  mov x2,x22
02cac118  mov x4,xzr
02cac11c  ldr x8,[x8]
02cac120  mov x0,x8
02cac124  bl 0x046c1d58
02cac128  ldr x8,[x19, #0x48]
02cac12c  cbz x8,0x02cac1fc
02cac130  adrp x9,0x5e5d000
02cac134  mov x21,x0
02cac138  mov x0,x8
02cac13c  ldr x9,[x9, #0xfe8]
02cac140  mov x1,x21
02cac144  ldr x2,[x9]
02cac148  bl 0x042bc0a8
02cac14c  tbnz w0,#0x0,0x02cac19c
02cac150  ldr x0,[x19, #0x48]
02cac154  cbz x0,0x02cac1fc
02cac158  adrp x8,0x5e5e000
02cac15c  mov x1,x21
02cac160  ldr x8,[x8, #0x338]
02cac164  ldr x2,[x8]
02cac168  bl 0x042bcb98
02cac16c  adrp x8,0x5e5d000
02cac170  ldr x8,[x8, #0x540]
02cac174  ldp w21,w22,[x19, #0x28]
02cac178  ldr x0,[x8]
02cac17c  ldr w8,[x0, #0xe4]
02cac180  cbnz w8,0x02cac188
02cac184  bl 0x029f5bd0
02cac188  mov w0,w21
02cac18c  mov w1,w22
02cac190  mov w2,w20
02cac194  mov x3,xzr
02cac198  bl 0x02b97580
02cac19c  ldr w8,[x19, #0x90]
02cac1a0  adrp x20,0x5e5d000
02cac1a4  ldr x20,[x20, #0xd50]
02cac1a8  cmp w8,#0x0
02cac1ac  b.gt 0x02cac1b8
02cac1b0  mov x0,x19
02cac1b4  bl 0x02cad174
02cac1b8  ldr x0,[x20]
02cac1bc  ldr w8,[x0, #0xe4]
02cac1c0  cbnz w8,0x02cac1cc
02cac1c4  bl 0x029f5bd0
02cac1c8  ldr x0,[x20]
02cac1cc  ldr x8,[x0, #0xb8]
02cac1d0  ldr x0,[x8, #0x8]
02cac1d4  cbz x0,0x02cac1fc
02cac1d8  mov w1,wzr
02cac1dc  mov x2,xzr
02cac1e0  bl 0x02ba6a18
02cac1e4  ldp x20,x19,[sp, #0x50]
02cac1e8  ldp x22,x21,[sp, #0x40]
02cac1ec  ldp x30,x23,[sp, #0x30]
02cac1f0  ldp d9,d8,[sp, #0x20]
02cac1f4  add sp,sp,#0x60
02cac1f8  ret
02cac1fc  bl 0x029f5cfc
