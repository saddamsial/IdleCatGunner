02c540a4  stp x30,x21,[sp, #-0x20]!
02c540a8  stp x20,x19,[sp, #0x10]
02c540ac  adrp x21,0x625c000
02c540b0  adrp x20,0x5e59000
02c540b4  mov x19,x0
02c540b8  ldrb w8,[x21, #0x174]
02c540bc  ldr x20,[x20, #0x1c0]
02c540c0  tbnz w8,#0x0,0x02c540d8
02c540c4  adrp x0,0x5e59000
02c540c8  ldr x0,[x0, #0x1c0]
02c540cc  bl 0x029f5a50
02c540d0  mov w8,#0x1
02c540d4  strb w8,[x21, #0x174]
02c540d8  ldr x0,[x20]
02c540dc  ldr x20,[x19, #0x58]
02c540e0  ldr w8,[x0, #0xe4]
02c540e4  cbnz w8,0x02c540ec
02c540e8  bl 0x029f5bd0
02c540ec  mov x0,x20
02c540f0  mov x1,xzr
02c540f4  mov x2,xzr
02c540f8  bl 0x057dfa70
02c540fc  tbz w0,#0x0,0x02c5411c
02c54100  ldr x0,[x19, #0x58]
02c54104  cbz x0,0x02c54128
02c54108  ldp x20,x19,[sp, #0x10]
02c5410c  mov w1,wzr
02c54110  mov x2,xzr
02c54114  ldp x30,x21,[sp], #0x20
02c54118  b 0x057dff3c
02c5411c  ldp x20,x19,[sp, #0x10]
02c54120  ldp x30,x21,[sp], #0x20
02c54124  ret
02c54128  bl 0x029f5cfc
