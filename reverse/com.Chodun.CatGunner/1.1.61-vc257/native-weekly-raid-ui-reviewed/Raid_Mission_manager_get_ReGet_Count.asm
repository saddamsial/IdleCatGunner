02c54650  str x30,[sp, #-0x10]!
02c54654  ldr x10,[x0, #0x40]
02c54658  cbz x10,0x02c54694
02c5465c  ldr x9,[x10, #0x18]
02c54660  mov x8,xzr
02c54664  mov w0,wzr
02c54668  add x10,x10,#0x20
02c5466c  and x9,x9,#0xfffffff8
02c54670  cbz x9,0x02c54690
02c54674  ldrb w11,[x10, x8, LSL ]
02c54678  add x8,x8,#0x1
02c5467c  cmp x8,#0x8
02c54680  add w0,w0,w11
02c54684  b.ne 0x02c54670
02c54688  ldr x30,[sp], #0x10
02c5468c  ret
02c54690  bl 0x029f5d04
02c54694  bl 0x029f5cfc
