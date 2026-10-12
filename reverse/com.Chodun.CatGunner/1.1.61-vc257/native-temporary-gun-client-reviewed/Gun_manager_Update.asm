02c6aa84  str d8,[sp, #-0x30]!
02c6aa88  stp x30,x21,[sp, #0x10]
02c6aa8c  stp x20,x19,[sp, #0x20]
02c6aa90  adrp x20,0x625c000
02c6aa94  mov x19,x0
02c6aa98  ldrb w8,[x20, #0x282]
02c6aa9c  tbnz w8,#0x0,0x02c6aac0
02c6aaa0  adrp x0,0x5e5d000
02c6aaa4  ldr x0,[x0, #0x910]
02c6aaa8  bl 0x029f5a50
02c6aaac  adrp x0,0x5e59000
02c6aab0  ldr x0,[x0, #0x1c0]
02c6aab4  bl 0x029f5a50
02c6aab8  mov w8,#0x1
02c6aabc  strb w8,[x20, #0x282]
02c6aac0  ldr w8,[x19, #0xc0]
02c6aac4  cmn w8,#0x1
02c6aac8  b.eq 0x02c6ab5c
02c6aacc  ldr s8,[x19, #0xd0]
02c6aad0  mov x0,xzr
02c6aad4  bl 0x057ebb34
02c6aad8  fadd s0,s8,s0
02c6aadc  fmov s1,0x3e800000
02c6aae0  fcmp s0,s1
02c6aae4  str s0,[x19, #0xd0]
02c6aae8  b.mi 0x02c6ab5c
02c6aaec  adrp x21,0x5e5d000
02c6aaf0  adrp x8,0x5e59000
02c6aaf4  ldr x21,[x21, #0x910]
02c6aaf8  ldr x8,[x8, #0x1c0]
02c6aafc  str wzr,[x19, #0xd0]
02c6ab00  ldr x9,[x21]
02c6ab04  ldr x0,[x8]
02c6ab08  ldr x8,[x9, #0xb8]
02c6ab0c  ldr w9,[x0, #0xe4]
02c6ab10  ldr x20,[x8]
02c6ab14  cbnz w9,0x02c6ab1c
02c6ab18  bl 0x029f5bd0
02c6ab1c  mov x0,x20
02c6ab20  mov x1,xzr
02c6ab24  mov x2,xzr
02c6ab28  bl 0x057dfa70
02c6ab2c  tbz w0,#0x0,0x02c6ab4c
02c6ab30  ldr x8,[x21]
02c6ab34  ldr x8,[x8, #0xb8]
02c6ab38  ldr x0,[x8]
02c6ab3c  cbz x0,0x02c6ab80
02c6ab40  mov x1,xzr
02c6ab44  bl 0x02b89a70
02c6ab48  tbnz w0,#0x0,0x02c6ab5c
02c6ab4c  mov x0,x19
02c6ab50  bl 0x02c6a6d8
02c6ab54  fcmp d0,#0.0
02c6ab58  b.ls 0x02c6ab6c
02c6ab5c  ldp x20,x19,[sp, #0x20]
02c6ab60  ldp x30,x21,[sp, #0x10]
02c6ab64  ldr d8,[sp], #0x30
02c6ab68  ret
02c6ab6c  mov x0,x19
02c6ab70  ldp x20,x19,[sp, #0x20]
02c6ab74  ldp x30,x21,[sp, #0x10]
02c6ab78  ldr d8,[sp], #0x30
02c6ab7c  b 0x02c6a9e4
02c6ab80  bl 0x029f5cfc
