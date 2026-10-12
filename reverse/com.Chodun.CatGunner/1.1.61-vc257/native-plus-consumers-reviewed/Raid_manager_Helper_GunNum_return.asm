02c44548  stp x30,x21,[sp, #-0x20]!
02c4454c  stp x20,x19,[sp, #0x10]
02c44550  adrp x21,0x625c000
02c44554  adrp x20,0x5e5d000
02c44558  adrp x19,0x5e59000
02c4455c  ldrb w8,[x21, #0x1c7]
02c44560  ldr x20,[x20, #0xd40]
02c44564  ldr x19,[x19, #0x1c0]
02c44568  tbnz w8,#0x0,0x02c445a4
02c4456c  adrp x0,0x5e63000
02c44570  ldr x0,[x0, #0x2d0]
02c44574  bl 0x029f5a50
02c44578  adrp x0,0x5e5d000
02c4457c  ldr x0,[x0, #0xd40]
02c44580  bl 0x029f5a50
02c44584  adrp x0,0x5e59000
02c44588  ldr x0,[x0, #0x1c0]
02c4458c  bl 0x029f5a50
02c44590  adrp x0,0x5e5e000
02c44594  ldr x0,[x0, #0x70]
02c44598  bl 0x029f5a50
02c4459c  mov w8,#0x1
02c445a0  strb w8,[x21, #0x1c7]
02c445a4  ldr x8,[x20]
02c445a8  ldr x0,[x19]
02c445ac  ldr x8,[x8, #0xb8]
02c445b0  ldr w9,[x0, #0xe4]
02c445b4  ldr x19,[x8]
02c445b8  cbnz w9,0x02c445c0
02c445bc  bl 0x029f5bd0
02c445c0  mov x0,x19
02c445c4  mov x1,xzr
02c445c8  mov x2,xzr
02c445cc  bl 0x057dfa70
02c445d0  tbz w0,#0x0,0x02c44698
02c445d4  ldr x8,[x20]
02c445d8  ldr x8,[x8, #0xb8]
02c445dc  ldr x8,[x8]
02c445e0  cbz x8,0x02c446b0
02c445e4  ldr x20,[x8, #0x20]
02c445e8  cbz x20,0x02c44698
02c445ec  adrp x8,0x5e5e000
02c445f0  ldr x8,[x8, #0x70]
02c445f4  ldr x0,[x8]
02c445f8  ldr w8,[x0, #0xe4]
02c445fc  cbnz w8,0x02c44604
02c44600  bl 0x029f5bd0
02c44604  bl 0x02c59868
02c44608  ldr w9,[x20, #0x18]
02c4460c  mov w10,#0x32
02c44610  mov w19,w0
02c44614  mov x8,xzr
02c44618  cmp w9,#0x32
02c4461c  csel w9,w9,w10,gt
02c44620  add x10,x20,#0x1b0
02c44624  sub w9,w9,#0x32
02c44628  cmp x9,x8
02c4462c  b.eq 0x02c44650
02c44630  ldr x11,[x10, x8, LSL #0x3]
02c44634  cbz x11,0x02c446b0
02c44638  ldr w11,[x11, #0x18]
02c4463c  cmp w11,w19
02c44640  b.eq 0x02c446a8
02c44644  add x8,x8,#0x1
02c44648  cmp x8,#0x5
02c4464c  b.ne 0x02c44628
02c44650  adrp x8,0x5e63000
02c44654  ldr x8,[x8, #0x2d0]
02c44658  ldr x0,[x8]
02c4465c  ldr w8,[x0, #0xe4]
02c44660  cbnz w8,0x02c44668
02c44664  bl 0x029f5bd0
02c44668  mov w0,w19
02c4466c  mov x1,xzr
02c44670  bl 0x02c6745c
02c44674  mov w8,#0x4
02c44678  cmp w0,#0x4
02c4467c  ldr w9,[x20, #0x18]
02c44680  csel w8,w0,w8,lt
02c44684  bic w8,w8,w8, ASR #0x1f
02c44688  add w8,w8,#0x32
02c4468c  cmp w8,w9
02c44690  csinv w0,w8,wzr,lt
02c44694  b 0x02c4469c
02c44698  mov w0,#0xffffffff
02c4469c  ldp x20,x19,[sp, #0x10]
02c446a0  ldp x30,x21,[sp], #0x20
02c446a4  ret
02c446a8  add w0,w8,#0x32
02c446ac  b 0x02c4469c
02c446b0  bl 0x029f5cfc
