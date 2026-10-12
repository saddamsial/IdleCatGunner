02c54600  stp x30,x19,[sp, #-0x10]!
02c54604  mov x19,x0
02c54608  bl 0x02c53c8c
02c5460c  ldr x10,[x19, #0x30]
02c54610  cbz x10,0x02c5464c
02c54614  ldr x9,[x10, #0x18]
02c54618  mov x8,xzr
02c5461c  mov w0,wzr
02c54620  add x10,x10,#0x20
02c54624  and x9,x9,#0xfffffff8
02c54628  cbz x9,0x02c54648
02c5462c  ldrb w11,[x10, x8, LSL ]
02c54630  add x8,x8,#0x1
02c54634  cmp x8,#0x8
02c54638  add w0,w0,w11
02c5463c  b.ne 0x02c54628
02c54640  ldp x30,x19,[sp], #0x10
02c54644  ret
02c54648  bl 0x029f5d04
02c5464c  bl 0x029f5cfc
