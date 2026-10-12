02c9264c  str x30,[sp, #-0x20]!
02c92650  stp x20,x19,[sp, #0x10]
02c92654  adrp x20,0x625c000
02c92658  mov w19,w0
02c9265c  ldrb w8,[x20, #0x407]
02c92660  tbnz w8,#0x0,0x02c92678
02c92664  adrp x0,0x5e5d000
02c92668  ldr x0,[x0, #0x920]
02c9266c  bl 0x029f5a50
02c92670  mov w8,#0x1
02c92674  strb w8,[x20, #0x407]
02c92678  tbnz w19,#0x1f,0x02c926ec
02c9267c  adrp x20,0x5e5d000
02c92680  ldr x20,[x20, #0x920]
02c92684  ldr x0,[x20]
02c92688  ldr w8,[x0, #0xe4]
02c9268c  cbnz w8,0x02c92698
02c92690  bl 0x029f5bd0
02c92694  ldr x0,[x20]
02c92698  ldr x8,[x0, #0xb8]
02c9269c  ldr x8,[x8, #0x28]
02c926a0  cbz x8,0x02c926fc
02c926a4  ldr w9,[x8, #0x18]
02c926a8  cmp w9,w19
02c926ac  b.le 0x02c926ec
02c926b0  ldr w9,[x0, #0xe4]
02c926b4  cbnz w9,0x02c926cc
02c926b8  bl 0x029f5bd0
02c926bc  ldr x8,[x20]
02c926c0  ldr x8,[x8, #0xb8]
02c926c4  ldr x8,[x8, #0x28]
02c926c8  cbz x8,0x02c926fc
02c926cc  ldr w9,[x8, #0x18]
02c926d0  cmp w9,w19
02c926d4  b.ls 0x02c92700
02c926d8  add x8,x8,w19, UXTW 
02c926dc  ldrb w8,[x8, #0x20]
02c926e0  cmp w8,#0x0
02c926e4  cset w0,eq
02c926e8  b 0x02c926f0
02c926ec  mov w0,wzr
02c926f0  ldp x20,x19,[sp, #0x10]
02c926f4  ldr x30,[sp], #0x20
02c926f8  ret
02c926fc  bl 0x029f5cfc
02c92700  bl 0x029f5d04
