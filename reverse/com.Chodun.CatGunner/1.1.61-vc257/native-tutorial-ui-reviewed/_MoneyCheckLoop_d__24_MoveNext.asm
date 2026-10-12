02cb0598  sub sp,sp,#0x40
02cb059c  stp x30,x21,[sp, #0x20]
02cb05a0  stp x20,x19,[sp, #0x30]
02cb05a4  adrp x20,0x625c000
02cb05a8  mov x19,x0
02cb05ac  ldrb w8,[x20, #0x544]
02cb05b0  tbnz w8,#0x0,0x02cb05e0
02cb05b4  adrp x0,0x5e5d000
02cb05b8  ldr x0,[x0, #0x338]
02cb05bc  bl 0x029f5a50
02cb05c0  adrp x0,0x5e5d000
02cb05c4  ldr x0,[x0, #0x4e8]
02cb05c8  bl 0x029f5a50
02cb05cc  adrp x0,0x5e5a000
02cb05d0  ldr x0,[x0, #0x710]
02cb05d4  bl 0x029f5a50
02cb05d8  mov w8,#0x1
02cb05dc  strb w8,[x20, #0x544]
02cb05e0  movi v0.2D,#0x0
02cb05e4  ldr w8,[x19, #0x10]
02cb05e8  cmp w8,#0x2
02cb05ec  stp q0,q0,[sp]
02cb05f0  b.cs 0x02cb0654
02cb05f4  ldr x20,[x19, #0x20]
02cb05f8  mov w8,#0xffffffff
02cb05fc  str w8,[x19, #0x10]
02cb0600  cbz x20,0x02cb070c
02cb0604  ldr w8,[x20, #0x60]
02cb0608  cbnz w8,0x02cb0654
02cb060c  adrp x21,0x5e5d000
02cb0610  ldr x21,[x21, #0x4e8]
02cb0614  ldr x0,[x21]
02cb0618  ldr w8,[x0, #0xe4]
02cb061c  cbnz w8,0x02cb0624
02cb0620  bl 0x029f5bd0
02cb0624  mov w0,wzr
02cb0628  bl 0x02caf208
02cb062c  cmp w0,#0x1
02cb0630  b.lt 0x02cb0668
02cb0634  ldr x0,[x20, #0x28]
02cb0638  cbz x0,0x02cb070c
02cb063c  mov w1,wzr
02cb0640  mov x2,xzr
02cb0644  bl 0x057dff3c
02cb0648  mov x0,x20
02cb064c  mov w1,#0x1
02cb0650  bl 0x02caf65c
02cb0654  mov w0,wzr
02cb0658  ldp x20,x19,[sp, #0x30]
02cb065c  ldp x30,x21,[sp, #0x20]
02cb0660  add sp,sp,#0x40
02cb0664  ret
02cb0668  ldr x0,[x21]
02cb066c  ldr w8,[x0, #0xe4]
02cb0670  cbnz w8,0x02cb0678
02cb0674  bl 0x029f5bd0
02cb0678  mov x8,sp
02cb067c  mov w0,wzr
02cb0680  bl 0x02cb0710
02cb0684  adrp x21,0x5e5d000
02cb0688  ldr x21,[x21, #0x338]
02cb068c  ldr x0,[x21]
02cb0690  ldr w8,[x0, #0xe4]
02cb0694  cbnz w8,0x02cb06a0
02cb0698  bl 0x029f5bd0
02cb069c  ldr x0,[x21]
02cb06a0  ldr x8,[x0, #0xb8]
02cb06a4  mov x1,sp
02cb06a8  mov x2,xzr
02cb06ac  add x0,x8,#0x30
02cb06b0  bl 0x04654530
02cb06b4  ldr x8,[x20, #0x28]
02cb06b8  cbz x8,0x02cb070c
02cb06bc  and w1,w0,#0x1
02cb06c0  mov x0,x8
02cb06c4  mov x2,xzr
02cb06c8  bl 0x057dff3c
02cb06cc  adrp x8,0x5e5a000
02cb06d0  ldr x8,[x8, #0x710]
02cb06d4  ldr x0,[x8]
02cb06d8  bl 0x029f5cec
02cb06dc  adrp x8,0x116c000
02cb06e0  mov x1,xzr
02cb06e4  mov x20,x0
02cb06e8  ldr s0,[x8, #0x60]
02cb06ec  bl 0x057e84e0
02cb06f0  str x20,[x19, #0x18]!
02cb06f4  mov x0,x19
02cb06f8  mov x1,x20
02cb06fc  bl 0x029f59f4
02cb0700  mov w0,#0x1
02cb0704  stur w0,[x19, #-0x8]
02cb0708  b 0x02cb0658
02cb070c  bl 0x029f5cfc
