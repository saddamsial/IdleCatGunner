02ca0604  stp x30,x23,[sp, #-0x30]!
02ca0608  stp x22,x21,[sp, #0x10]
02ca060c  stp x20,x19,[sp, #0x20]
02ca0610  adrp x20,0x625c000
02ca0614  adrp x22,0x5e5e000
02ca0618  mov x19,x0
02ca061c  ldrb w8,[x20, #0x479]
02ca0620  ldr x22,[x22, #0x3e0]
02ca0624  tbnz w8,#0x0,0x02ca0648
02ca0628  adrp x0,0x5e59000
02ca062c  ldr x0,[x0, #0x288]
02ca0630  bl 0x029f5a50
02ca0634  adrp x0,0x5e5e000
02ca0638  ldr x0,[x0, #0x3e0]
02ca063c  bl 0x029f5a50
02ca0640  mov w8,#0x1
02ca0644  strb w8,[x20, #0x479]
02ca0648  ldr x0,[x22]
02ca064c  ldr w8,[x0, #0xe4]
02ca0650  cbnz w8,0x02ca065c
02ca0654  bl 0x029f5bd0
02ca0658  ldr x0,[x22]
02ca065c  ldr x8,[x0, #0xb8]
02ca0660  adrp x23,0x5e59000
02ca0664  ldr x23,[x23, #0x288]
02ca0668  ldr x20,[x8, #0x18]
02ca066c  mov x0,x20
02ca0670  mov x1,x19
02ca0674  mov x2,xzr
02ca0678  bl 0x04896870
02ca067c  mov x21,x0
02ca0680  cbz x0,0x02ca0694
02ca0684  ldr x1,[x23]
02ca0688  ldr x8,[x21]
02ca068c  cmp x8,x1
02ca0690  b.ne 0x02ca06d8
02ca0694  ldr x0,[x22]
02ca0698  ldr w8,[x0, #0xe4]
02ca069c  cbnz w8,0x02ca06a8
02ca06a0  bl 0x029f5bd0
02ca06a4  ldr x0,[x22]
02ca06a8  ldr x8,[x0, #0xb8]
02ca06ac  mov x1,x21
02ca06b0  mov x2,x20
02ca06b4  add x0,x8,#0x18
02ca06b8  bl 0x02a2e558
02ca06bc  cmp x0,x20
02ca06c0  mov x20,x0
02ca06c4  b.ne 0x02ca066c
02ca06c8  ldp x20,x19,[sp, #0x20]
02ca06cc  ldp x22,x21,[sp, #0x10]
02ca06d0  ldp x30,x23,[sp], #0x30
02ca06d4  ret
02ca06d8  mov x0,x21
02ca06dc  bl 0x029f607c
