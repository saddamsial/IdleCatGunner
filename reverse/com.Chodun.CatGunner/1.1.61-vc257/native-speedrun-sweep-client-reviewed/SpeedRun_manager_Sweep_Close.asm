02ca9fbc  str x30,[sp, #-0x20]!
02ca9fc0  stp x20,x19,[sp, #0x10]
02ca9fc4  adrp x20,0x625c000
02ca9fc8  mov x19,x0
02ca9fcc  ldrb w8,[x20, #0x500]
02ca9fd0  tbnz w8,#0x0,0x02caa000
02ca9fd4  adrp x0,0x5e5d000
02ca9fd8  ldr x0,[x0, #0x910]
02ca9fdc  bl 0x029f5a50
02ca9fe0  adrp x0,0x5e59000
02ca9fe4  ldr x0,[x0, #0x1c0]
02ca9fe8  bl 0x029f5a50
02ca9fec  adrp x0,0x5e5d000
02ca9ff0  ldr x0,[x0, #0x920]
02ca9ff4  bl 0x029f5a50
02ca9ff8  mov w8,#0x1
02ca9ffc  strb w8,[x20, #0x500]
02caa000  ldr x0,[x19, #0xa8]
02caa004  strb wzr,[x19, #0xc8]
02caa008  cbz x0,0x02caa0b8
02caa00c  mov w1,wzr
02caa010  mov x2,xzr
02caa014  bl 0x057dff3c
02caa018  ldrb w8,[x19, #0x56]
02caa01c  cbnz w8,0x02caa0ac
02caa020  adrp x8,0x5e5d000
02caa024  ldr x8,[x8, #0x920]
02caa028  ldr x0,[x8]
02caa02c  ldr w8,[x0, #0xe4]
02caa030  cbnz w8,0x02caa038
02caa034  bl 0x029f5bd0
02caa038  mov x0,xzr
02caa03c  bl 0x02c92704
02caa040  tbnz w0,#0x0,0x02caa0ac
02caa044  adrp x20,0x5e5d000
02caa048  adrp x8,0x5e59000
02caa04c  ldr x20,[x20, #0x910]
02caa050  ldr x8,[x8, #0x1c0]
02caa054  ldr x9,[x20]
02caa058  ldr x0,[x8]
02caa05c  ldr x8,[x9, #0xb8]
02caa060  ldr w9,[x0, #0xe4]
02caa064  ldr x19,[x8]
02caa068  cbnz w9,0x02caa070
02caa06c  bl 0x029f5bd0
02caa070  mov x0,x19
02caa074  mov x1,xzr
02caa078  mov x2,xzr
02caa07c  bl 0x057dfa70
02caa080  tbz w0,#0x0,0x02caa0ac
02caa084  ldr x8,[x20]
02caa088  ldr x8,[x8, #0xb8]
02caa08c  ldr x0,[x8]
02caa090  cbz x0,0x02caa0b8
02caa094  ldp x20,x19,[sp, #0x10]
02caa098  mov w1,#0x2
02caa09c  mov x2,xzr
02caa0a0  mov x3,xzr
02caa0a4  ldr x30,[sp], #0x20
02caa0a8  b 0x02b8ddb4
02caa0ac  ldp x20,x19,[sp, #0x10]
02caa0b0  ldr x30,[sp], #0x20
02caa0b4  ret
02caa0b8  bl 0x029f5cfc
