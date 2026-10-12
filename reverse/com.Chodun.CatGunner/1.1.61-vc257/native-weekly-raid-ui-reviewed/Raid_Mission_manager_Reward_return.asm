02c52dc4  str x30,[sp, #-0x10]!
02c52dc8  cmp w1,#0x7
02c52dcc  b.hi 0x02c52df8
02c52dd0  ldr x8,[x0, #0x20]
02c52dd4  cbz x8,0x02c52e04
02c52dd8  ldr w9,[x8, #0x18]
02c52ddc  cmp w9,w1
02c52de0  b.ls 0x02c52e08
02c52de4  add x8,x8,w1, UXTW  #0x3
02c52de8  ldr x8,[x8, #0x20]
02c52dec  cbz x8,0x02c52e04
02c52df0  ldr w0,[x8, #0x18]
02c52df4  b 0x02c52dfc
02c52df8  mov w0,wzr
02c52dfc  ldr x30,[sp], #0x10
02c52e00  ret
02c52e04  bl 0x029f5cfc
02c52e08  bl 0x029f5d04
