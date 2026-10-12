02c434c0  sub sp,sp,#0x60
02c434c4  str d8,[sp, #0x10]
02c434c8  str x30,[sp, #0x18]
02c434cc  stp x26,x25,[sp, #0x20]
02c434d0  stp x24,x23,[sp, #0x30]
02c434d4  stp x22,x21,[sp, #0x40]
02c434d8  stp x20,x19,[sp, #0x50]
02c434dc  adrp x20,0x625c000
02c434e0  adrp x22,0x5e59000
02c434e4  mov x19,x0
02c434e8  ldrb w8,[x20, #0xc4]
02c434ec  ldr x22,[x22, #0x1c0]
02c434f0  tbnz w8,#0x0,0x02c43544
02c434f4  adrp x0,0x5e63000
02c434f8  ldr x0,[x0, #0x288]
02c434fc  bl 0x029f5a50
02c43500  adrp x0,0x5e63000
02c43504  ldr x0,[x0, #0x290]
02c43508  bl 0x029f5a50
02c4350c  adrp x0,0x5e63000
02c43510  ldr x0,[x0, #0x298]
02c43514  bl 0x029f5a50
02c43518  adrp x0,0x5e63000
02c4351c  ldr x0,[x0, #0x2a0]
02c43520  bl 0x029f5a50
02c43524  adrp x0,0x5e63000
02c43528  ldr x0,[x0, #0x2a8]
02c4352c  bl 0x029f5a50
02c43530  adrp x0,0x5e59000
02c43534  ldr x0,[x0, #0x1c0]
02c43538  bl 0x029f5a50
02c4353c  mov w8,#0x1
02c43540  strb w8,[x20, #0xc4]
02c43544  ldr x0,[x22]
02c43548  ldr x20,[x19, #0x28]
02c4354c  ldr w8,[x0, #0xe4]
02c43550  cbnz w8,0x02c43558
02c43554  bl 0x029f5bd0
02c43558  mov x0,x20
02c4355c  mov x1,xzr
02c43560  mov x2,xzr
02c43564  bl 0x057dfa70
02c43568  tbz w0,#0x0,0x02c43588
02c4356c  ldr x8,[x19, #0x28]
02c43570  cbz x8,0x02c43690
02c43574  ldr w9,[x19, #0x38]
02c43578  ldr x10,[x19, #0x30]
02c4357c  add x11,x8,#0x1c4
02c43580  str w9,[x8, #0x1cc]
02c43584  str x10,[x11]
02c43588  adrp x8,0x5e63000
02c4358c  adrp x20,0x5e63000
02c43590  ldr x8,[x8, #0x2a8]
02c43594  ldr x20,[x20, #0x290]
02c43598  ldr x0,[x8]
02c4359c  bl 0x029f5cec
02c435a0  ldr x1,[x20]
02c435a4  mov x20,x0
02c435a8  bl 0x0452c340
02c435ac  ldr x8,[x19, #0x20]
02c435b0  cbz x8,0x02c43690
02c435b4  adrp x24,0x5e63000
02c435b8  adrp x23,0x5e63000
02c435bc  mov w25,#0x5
02c435c0  ldr x24,[x24, #0x288]
02c435c4  ldr x23,[x23, #0x2a0]
02c435c8  ldr w9,[x8, #0x18]
02c435cc  sub x26,x25,#0x4
02c435d0  cmp x26,w9, SXTW 
02c435d4  b.ge 0x02c43694
02c435d8  cmp x26,x9
02c435dc  b.cs 0x02c4373c
02c435e0  ldr x0,[x22]
02c435e4  ldr x21,[x8, x25, LSL #0x3]
02c435e8  ldr w9,[x0, #0xe4]
02c435ec  cbnz w9,0x02c435f4
02c435f0  bl 0x029f5bd0
02c435f4  mov x0,x21
02c435f8  mov x1,xzr
02c435fc  mov x2,xzr
02c43600  bl 0x057dfa70
02c43604  tbz w0,#0x0,0x02c43684
02c43608  ldr x8,[x19, #0x20]
02c4360c  cbz x8,0x02c43690
02c43610  ldr w9,[x8, #0x18]
02c43614  cmp x26,x9
02c43618  b.cs 0x02c4373c
02c4361c  ldr x1,[x8, x25, LSL #0x3]
02c43620  cbz x1,0x02c43690
02c43624  ldrb w8,[x1, #0x1b0]
02c43628  cbz w8,0x02c43684
02c4362c  cbz x20,0x02c43690
02c43630  ldr w10,[x20, #0x1c]
02c43634  ldr x8,[x20, #0x10]
02c43638  ldr x9,[x24]
02c4363c  add w10,w10,#0x1
02c43640  str w10,[x20, #0x1c]
02c43644  cbz x8,0x02c43690
02c43648  ldrsw x10,[x20, #0x18]
02c4364c  ldr w11,[x8, #0x18]
02c43650  cmp w10,w11
02c43654  b.cs 0x02c43670
02c43658  add x0,x8,x10, LSL #0x3
02c4365c  add w9,w10,#0x1
02c43660  str w9,[x20, #0x18]
02c43664  str x1,[x0, #0x20]!
02c43668  bl 0x029f59f4
02c4366c  b 0x02c43684
02c43670  ldr x8,[x9, #0x20]
02c43674  mov x0,x20
02c43678  ldr x8,[x8, #0xc0]
02c4367c  ldr x2,[x8, #0x70]
02c43680  bl 0x0452cba8
02c43684  ldr x8,[x19, #0x20]
02c43688  add x25,x25,#0x1
02c4368c  cbnz x8,0x02c435c8
02c43690  bl 0x029f5cfc
02c43694  cbz x20,0x02c43690
02c43698  ldr w25,[x20, #0x18]
02c4369c  cmp w25,#0x1
02c436a0  b.lt 0x02c4371c
02c436a4  adrp x8,0x116c000
02c436a8  mov w21,wzr
02c436ac  mov w24,#0x43b40000
02c436b0  ldr s8,[x8, #0x26c]
02c436b4  ldr x2,[x23]
02c436b8  mov x0,x20
02c436bc  mov w1,w21
02c436c0  bl 0x0452c8d8
02c436c4  cbz x0,0x02c43690
02c436c8  scvtf s0,w25
02c436cc  fmov s1,w24
02c436d0  mov x22,x0
02c436d4  add x0,sp,#0xc
02c436d8  add x1,sp,#0x8
02c436dc  fdiv s0,s1,s0
02c436e0  scvtf s1,w21
02c436e4  fmul s0,s0,s1
02c436e8  fmul s0,s0,s8
02c436ec  bl 0x05afb270
02c436f0  ldp s2,s0,[sp, #0x8]
02c436f4  add w21,w21,#0x1
02c436f8  ldr s1,[x19, #0x3c]
02c436fc  str wzr,[x22, #0x1c8]
02c43700  fmul s0,s0,s1
02c43704  fmul s1,s2,s1
02c43708  str s0,[x22, #0x1c4]
02c4370c  str s1,[x22, #0x1cc]
02c43710  ldr w25,[x20, #0x18]
02c43714  cmp w21,w25
02c43718  b.lt 0x02c436b4
02c4371c  ldp x20,x19,[sp, #0x50]
02c43720  ldr x30,[sp, #0x18]
02c43724  ldp x22,x21,[sp, #0x40]
02c43728  ldr d8,[sp, #0x10]
02c4372c  ldp x24,x23,[sp, #0x30]
02c43730  ldp x26,x25,[sp, #0x20]
02c43734  add sp,sp,#0x60
02c43738  ret
02c4373c  bl 0x029f5d04
