02c7bfec  str d10,[sp, #-0x40]!
02c7bff0  stp d9,d8,[sp, #0x8]
02c7bff4  str x30,[sp, #0x18]
02c7bff8  stp x22,x21,[sp, #0x20]
02c7bffc  stp x20,x19,[sp, #0x30]
02c7c000  fmov s8,s2
02c7c004  fmov s9,s1
02c7c008  adrp x20,0x625c000
02c7c00c  fmov s10,s0
02c7c010  ldrb w8,[x20, #0x31c]
02c7c014  mov x19,x0
02c7c018  tbnz w8,#0x0,0x02c7c030
02c7c01c  adrp x0,0x5e59000
02c7c020  ldr x0,[x0, #0x1c0]
02c7c024  bl 0x029f5a50
02c7c028  mov w8,#0x1
02c7c02c  strb w8,[x20, #0x31c]
02c7c030  ldr x8,[x19, #0x20]
02c7c034  cbz x8,0x02c7c0cc
02c7c038  adrp x21,0x5e59000
02c7c03c  mov x22,xzr
02c7c040  ldr x21,[x21, #0x1c0]
02c7c044  ldr w9,[x8, #0x18]
02c7c048  cmp x22,w9, SXTW 
02c7c04c  b.ge 0x02c7c0d0
02c7c050  cmp x22,x9
02c7c054  b.cs 0x02c7c0e8
02c7c058  ldr x0,[x21]
02c7c05c  add x8,x8,x22, LSL #0x3
02c7c060  ldr w9,[x0, #0xe4]
02c7c064  ldr x20,[x8, #0x20]
02c7c068  cbnz w9,0x02c7c070
02c7c06c  bl 0x029f5bd0
02c7c070  mov x0,x20
02c7c074  mov x1,xzr
02c7c078  mov x2,xzr
02c7c07c  bl 0x057e14b4
02c7c080  tbnz w0,#0x0,0x02c7c0c0
02c7c084  cbz x20,0x02c7c0cc
02c7c088  mov x0,x20
02c7c08c  mov x1,xzr
02c7c090  bl 0x057dc1c8
02c7c094  cbz x0,0x02c7c0cc
02c7c098  mov x1,xzr
02c7c09c  bl 0x057e0000
02c7c0a0  tbz w0,#0x0,0x02c7c0c0
02c7c0a4  ldp s0,s1,[x20, #0x58]
02c7c0a8  mov x0,x20
02c7c0ac  ldr s2,[x20, #0x60]
02c7c0b0  fadd s0,s10,s0
02c7c0b4  fadd s1,s9,s1
02c7c0b8  fadd s2,s8,s2
02c7c0bc  bl 0x02c7a91c
02c7c0c0  ldr x8,[x19, #0x20]
02c7c0c4  add x22,x22,#0x1
02c7c0c8  cbnz x8,0x02c7c044
02c7c0cc  bl 0x029f5cfc
02c7c0d0  ldp x20,x19,[sp, #0x30]
02c7c0d4  ldr x30,[sp, #0x18]
02c7c0d8  ldp x22,x21,[sp, #0x20]
02c7c0dc  ldp d9,d8,[sp, #0x8]
02c7c0e0  ldr d10,[sp], #0x40
02c7c0e4  ret
02c7c0e8  bl 0x029f5d04
