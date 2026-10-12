02c601d4  str x30,[sp, #-0x30]!
02c601d8  stp x22,x21,[sp, #0x10]
02c601dc  stp x20,x19,[sp, #0x20]
02c601e0  adrp x22,0x625c000
02c601e4  adrp x21,0x5e59000
02c601e8  mov x19,x1
02c601ec  ldrb w8,[x22, #0x218]
02c601f0  ldr x21,[x21, #0x1c0]
02c601f4  mov x20,x0
02c601f8  tbnz w8,#0x0,0x02c60210
02c601fc  adrp x0,0x5e59000
02c60200  ldr x0,[x0, #0x1c0]
02c60204  bl 0x029f5a50
02c60208  mov w8,#0x1
02c6020c  strb w8,[x22, #0x218]
02c60210  mov x0,x20
02c60214  bl 0x02c5ffcc
02c60218  ldr x0,[x21]
02c6021c  ldr x21,[x20, #0x20]
02c60220  ldr w8,[x0, #0xe4]
02c60224  cbnz w8,0x02c6022c
02c60228  bl 0x029f5bd0
02c6022c  mov x0,x21
02c60230  mov x1,xzr
02c60234  mov x2,xzr
02c60238  bl 0x057dfa70
02c6023c  tbz w0,#0x0,0x02c6025c
02c60240  ldr x0,[x20, #0x20]
02c60244  cbz x0,0x02c6026c
02c60248  mov x1,x19
02c6024c  ldp x20,x19,[sp, #0x20]
02c60250  ldp x22,x21,[sp, #0x10]
02c60254  ldr x30,[sp], #0x30
02c60258  b 0x02c5f93c
02c6025c  ldp x20,x19,[sp, #0x20]
02c60260  ldp x22,x21,[sp, #0x10]
02c60264  ldr x30,[sp], #0x30
02c60268  ret
02c6026c  bl 0x029f5cfc
