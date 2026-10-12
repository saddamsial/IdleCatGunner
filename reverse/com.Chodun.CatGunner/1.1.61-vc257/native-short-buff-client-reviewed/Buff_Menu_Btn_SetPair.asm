02c38568  stp x30,x23,[sp, #-0x30]!
02c3856c  stp x22,x21,[sp, #0x10]
02c38570  stp x20,x19,[sp, #0x20]
02c38574  adrp x23,0x625c000
02c38578  adrp x22,0x5e59000
02c3857c  mov w20,w2
02c38580  ldrb w8,[x23, #0x81]
02c38584  ldr x22,[x22, #0x1c0]
02c38588  mov x19,x1
02c3858c  mov x21,x0
02c38590  tbnz w8,#0x0,0x02c385a8
02c38594  adrp x0,0x5e59000
02c38598  ldr x0,[x0, #0x1c0]
02c3859c  bl 0x029f5a50
02c385a0  mov w8,#0x1
02c385a4  strb w8,[x23, #0x81]
02c385a8  ldr x0,[x22]
02c385ac  ldr w8,[x0, #0xe4]
02c385b0  cbnz w8,0x02c385b8
02c385b4  bl 0x029f5bd0
02c385b8  mov x0,x21
02c385bc  mov x1,xzr
02c385c0  mov x2,xzr
02c385c4  bl 0x057dfa70
02c385c8  tbz w0,#0x0,0x02c385e0
02c385cc  cbz x21,0x02c38638
02c385d0  and w1,w20,#0x1
02c385d4  mov x0,x21
02c385d8  mov x2,xzr
02c385dc  bl 0x057dff3c
02c385e0  ldr x0,[x22]
02c385e4  ldr w8,[x0, #0xe4]
02c385e8  cbnz w8,0x02c385f0
02c385ec  bl 0x029f5bd0
02c385f0  mov x0,x19
02c385f4  mov x1,xzr
02c385f8  mov x2,xzr
02c385fc  bl 0x057dfa70
02c38600  tbz w0,#0x0,0x02c38628
02c38604  cbz x19,0x02c38638
02c38608  mov w8,#0x1
02c3860c  mov x0,x19
02c38610  mov x2,xzr
02c38614  bic w1,w8,w20
02c38618  ldp x20,x19,[sp, #0x20]
02c3861c  ldp x22,x21,[sp, #0x10]
02c38620  ldp x30,x23,[sp], #0x30
02c38624  b 0x057dff3c
02c38628  ldp x20,x19,[sp, #0x20]
02c3862c  ldp x22,x21,[sp, #0x10]
02c38630  ldp x30,x23,[sp], #0x30
02c38634  ret
02c38638  bl 0x029f5cfc
