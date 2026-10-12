02c6d01c  str x30,[sp, #-0x20]!
02c6d020  stp x20,x19,[sp, #0x10]
02c6d024  adrp x20,0x625b000
02c6d028  mov x19,x0
02c6d02c  ldrb w8,[x20, #0xa57]
02c6d030  cbnz w8,0x02c6d048
02c6d034  adrp x0,0x5e5d000
02c6d038  ldr x0,[x0, #0xd70]
02c6d03c  bl 0x029f5a50
02c6d040  mov w8,#0x1
02c6d044  strb w8,[x20, #0xa57]
02c6d048  adrp x8,0x5e5d000
02c6d04c  ldr x8,[x8, #0xd70]
02c6d050  ldr x8,[x8]
02c6d054  ldr x8,[x8, #0xb8]
02c6d058  ldr x0,[x8]
02c6d05c  cbz x0,0x02c6d098
02c6d060  fmov s0,0x3f800000
02c6d064  mov w1,#0x1
02c6d068  mov x2,xzr
02c6d06c  mov x3,xzr
02c6d070  bl 0x02c1f10c
02c6d074  mov x0,x19
02c6d078  mov x1,xzr
02c6d07c  bl 0x057dc1c8
02c6d080  cbz x0,0x02c6d098
02c6d084  ldp x20,x19,[sp, #0x10]
02c6d088  mov w1,wzr
02c6d08c  mov x2,xzr
02c6d090  ldr x30,[sp], #0x20
02c6d094  b 0x057dff3c
02c6d098  bl 0x029f5cfc
