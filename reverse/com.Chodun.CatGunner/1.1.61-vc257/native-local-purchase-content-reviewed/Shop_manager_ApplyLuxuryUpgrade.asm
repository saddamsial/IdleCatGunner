02c97ff8  stp x30,x21,[sp, #-0x20]!
02c97ffc  stp x20,x19,[sp, #0x10]
02c98000  adrp x19,0x625c000
02c98004  adrp x20,0x5e5d000
02c98008  ldrb w8,[x19, #0x44e]
02c9800c  ldr x20,[x20, #0xd50]
02c98010  tbnz w8,#0x0,0x02c9804c
02c98014  adrp x0,0x5e5d000
02c98018  ldr x0,[x0, #0x338]
02c9801c  bl 0x029f5a50
02c98020  adrp x0,0x5e5d000
02c98024  ldr x0,[x0, #0xd50]
02c98028  bl 0x029f5a50
02c9802c  adrp x0,0x5e59000
02c98030  ldr x0,[x0, #0x1c0]
02c98034  bl 0x029f5a50
02c98038  adrp x0,0x5e5d000
02c9803c  ldr x0,[x0, #0x920]
02c98040  bl 0x029f5a50
02c98044  mov w8,#0x1
02c98048  strb w8,[x19, #0x44e]
02c9804c  ldr x0,[x20]
02c98050  adrp x21,0x5e59000
02c98054  ldr w8,[x0, #0xe4]
02c98058  ldr x21,[x21, #0x1c0]
02c9805c  cbnz w8,0x02c98068
02c98060  bl 0x029f5bd0
02c98064  ldr x0,[x20]
02c98068  ldr x8,[x0, #0xb8]
02c9806c  mov w9,#0x101
02c98070  strh w9,[x8]
02c98074  ldr x19,[x8, #0x8]
02c98078  ldr x0,[x21]
02c9807c  ldr w9,[x0, #0xe4]
02c98080  cbnz w9,0x02c98088
02c98084  bl 0x029f5bd0
02c98088  mov x0,x19
02c9808c  mov x1,xzr
02c98090  mov x2,xzr
02c98094  bl 0x057dfa70
02c98098  tbz w0,#0x0,0x02c980c4
02c9809c  ldr x0,[x20]
02c980a0  ldr w8,[x0, #0xe4]
02c980a4  cbnz w8,0x02c980b0
02c980a8  bl 0x029f5bd0
02c980ac  ldr x0,[x20]
02c980b0  ldr x8,[x0, #0xb8]
02c980b4  ldr x0,[x8, #0x8]
02c980b8  cbz x0,0x02c981a0
02c980bc  mov x1,xzr
02c980c0  bl 0x02ba4028
02c980c4  adrp x8,0x5e5d000
02c980c8  ldr x8,[x8, #0x338]
02c980cc  ldr x0,[x8]
02c980d0  ldr w8,[x0, #0xe4]
02c980d4  cbnz w8,0x02c980dc
02c980d8  bl 0x029f5bd0
02c980dc  mov w0,#0x3e8
02c980e0  mov x1,xzr
02c980e4  bl 0x02b7ed10
02c980e8  ldr x0,[x20]
02c980ec  ldr w8,[x0, #0xe4]
02c980f0  cbnz w8,0x02c980fc
02c980f4  bl 0x029f5bd0
02c980f8  ldr x0,[x20]
02c980fc  ldr x8,[x21]
02c98100  ldr x9,[x0, #0xb8]
02c98104  ldr w10,[x8, #0xe4]
02c98108  ldr x19,[x9, #0x8]
02c9810c  cbnz w10,0x02c98118
02c98110  mov x0,x8
02c98114  bl 0x029f5bd0
02c98118  mov x0,x19
02c9811c  mov x1,xzr
02c98120  mov x2,xzr
02c98124  bl 0x057dfa70
02c98128  tbz w0,#0x0,0x02c98158
02c9812c  ldr x0,[x20]
02c98130  ldr w8,[x0, #0xe4]
02c98134  cbnz w8,0x02c98140
02c98138  bl 0x029f5bd0
02c9813c  ldr x0,[x20]
02c98140  ldr x8,[x0, #0xb8]
02c98144  ldr x0,[x8, #0x8]
02c98148  cbz x0,0x02c981a0
02c9814c  mov w1,#0x12c
02c98150  mov x2,xzr
02c98154  bl 0x02b9d264
02c98158  adrp x19,0x5e5d000
02c9815c  ldr x19,[x19, #0x920]
02c98160  ldr x0,[x19]
02c98164  ldr w8,[x0, #0xe4]
02c98168  cbnz w8,0x02c98174
02c9816c  bl 0x029f5bd0
02c98170  ldr x0,[x19]
02c98174  ldr x8,[x0, #0xb8]
02c98178  ldr x8,[x8, #0x50]
02c9817c  cbz x8,0x02c98190
02c98180  ldr x9,[x8, #0x18]
02c98184  ldr x0,[x8, #0x40]
02c98188  ldr x1,[x8, #0x28]
02c9818c  blr x9
02c98190  ldp x20,x19,[sp, #0x10]
02c98194  mov x0,xzr
02c98198  ldp x30,x21,[sp], #0x20
02c9819c  b 0x02c0faf8
02c981a0  bl 0x029f5cfc
