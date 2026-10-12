02c36128  str x30,[sp, #-0x20]!
02c3612c  stp x20,x19,[sp, #0x10]
02c36130  adrp x20,0x625c000
02c36134  mov x19,x0
02c36138  ldrb w8,[x20, #0x69]
02c3613c  tbnz w8,#0x0,0x02c36154
02c36140  adrp x0,0x5e59000
02c36144  ldr x0,[x0, #0x1c0]
02c36148  bl 0x029f5a50
02c3614c  mov w8,#0x1
02c36150  strb w8,[x20, #0x69]
02c36154  ldrb w8,[x19, #0x48]
02c36158  cbz w8,0x02c361ac
02c3615c  ldrb w8,[x19, #0x49]
02c36160  cbz w8,0x02c361ac
02c36164  adrp x8,0x5e59000
02c36168  ldr x8,[x8, #0x1c0]
02c3616c  ldr x20,[x19, #0x38]
02c36170  ldr x0,[x8]
02c36174  ldr w8,[x0, #0xe4]
02c36178  cbnz w8,0x02c36180
02c3617c  bl 0x029f5bd0
02c36180  mov x0,x20
02c36184  mov x1,xzr
02c36188  mov x2,xzr
02c3618c  bl 0x057dfa70
02c36190  tbz w0,#0x0,0x02c361ac
02c36194  ldr x0,[x19, #0x38]
02c36198  cbz x0,0x02c361b8
02c3619c  ldr x1,[x19, #0x40]
02c361a0  ldp x20,x19,[sp, #0x10]
02c361a4  ldr x30,[sp], #0x20
02c361a8  b 0x02c36080
02c361ac  ldp x20,x19,[sp, #0x10]
02c361b0  ldr x30,[sp], #0x20
02c361b4  ret
02c361b8  bl 0x029f5cfc
