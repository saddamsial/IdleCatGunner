02c5808c  str x30,[sp, #-0x30]!
02c58090  stp x22,x21,[sp, #0x10]
02c58094  stp x20,x19,[sp, #0x20]
02c58098  adrp x20,0x625c000
02c5809c  mov w19,w0
02c580a0  ldrb w8,[x20, #0x1aa]
02c580a4  tbnz w8,#0x0,0x02c580d4
02c580a8  adrp x0,0x5e5d000
02c580ac  ldr x0,[x0, #0xd40]
02c580b0  bl 0x029f5a50
02c580b4  adrp x0,0x5e59000
02c580b8  ldr x0,[x0, #0x1c0]
02c580bc  bl 0x029f5a50
02c580c0  adrp x0,0x5e62000
02c580c4  ldr x0,[x0, #0x648]
02c580c8  bl 0x029f5a50
02c580cc  mov w8,#0x1
02c580d0  strb w8,[x20, #0x1aa]
02c580d4  tbnz w19,#0x1f,0x02c58118
02c580d8  adrp x8,0x5e5d000
02c580dc  adrp x22,0x5e59000
02c580e0  ldr x8,[x8, #0xd40]
02c580e4  ldr x22,[x22, #0x1c0]
02c580e8  ldr x8,[x8]
02c580ec  ldr x0,[x22]
02c580f0  ldr x8,[x8, #0xb8]
02c580f4  ldr w9,[x0, #0xe4]
02c580f8  ldr x20,[x8]
02c580fc  cbnz w9,0x02c58104
02c58100  bl 0x029f5bd0
02c58104  mov x0,x20
02c58108  mov x1,xzr
02c5810c  mov x2,xzr
02c58110  bl 0x057e14b4
02c58114  tbz w0,#0x0,0x02c5812c
02c58118  mov w0,#0xffffffff
02c5811c  ldp x20,x19,[sp, #0x20]
02c58120  ldp x22,x21,[sp, #0x10]
02c58124  ldr x30,[sp], #0x30
02c58128  ret
02c5812c  cmp w19,#0x2
02c58130  b.ls 0x02c5815c
02c58134  cbz x20,0x02c581ec
02c58138  ldr x8,[x20, #0x40]
02c5813c  cbz x8,0x02c581ec
02c58140  ldr w9,[x8, #0x18]
02c58144  sub w21,w19,#0x3
02c58148  cmp w21,w9
02c5814c  b.ge 0x02c58180
02c58150  b.cs 0x02c581f0
02c58154  add x8,x8,w21, UXTW  #0x2
02c58158  b 0x02c58178
02c5815c  cbz x20,0x02c581ec
02c58160  ldr x8,[x20, #0x28]
02c58164  cbz x8,0x02c581ec
02c58168  ldr w9,[x8, #0x18]
02c5816c  cmp w9,w19
02c58170  b.le 0x02c58118
02c58174  add x8,x8,w19, UXTW  #0x2
02c58178  ldr w0,[x8, #0x20]!
02c5817c  b 0x02c5811c
02c58180  adrp x8,0x5e62000
02c58184  ldr x8,[x8, #0x648]
02c58188  ldr x0,[x22]
02c5818c  ldr x8,[x8]
02c58190  ldr w9,[x0, #0xe4]
02c58194  ldr x8,[x8, #0xb8]
02c58198  ldr x19,[x8]
02c5819c  cbnz w9,0x02c581a4
02c581a0  bl 0x029f5bd0
02c581a4  mov x0,x19
02c581a8  mov x1,xzr
02c581ac  mov x2,xzr
02c581b0  bl 0x057e14b4
02c581b4  tbnz w0,#0x0,0x02c58118
02c581b8  ldr x9,[x20, #0x40]
02c581bc  cbz x9,0x02c581ec
02c581c0  cbz x19,0x02c581ec
02c581c4  ldr x8,[x19, #0x20]
02c581c8  cbz x8,0x02c581ec
02c581cc  ldr w9,[x9, #0x18]
02c581d0  ldr w10,[x8, #0x18]
02c581d4  sub w9,w21,w9
02c581d8  cmp w9,w10
02c581dc  b.ge 0x02c58118
02c581e0  b.cs 0x02c581f0
02c581e4  add x8,x8,w9, SXTW  #0x2
02c581e8  b 0x02c58178
02c581ec  bl 0x029f5cfc
02c581f0  bl 0x029f5d04
