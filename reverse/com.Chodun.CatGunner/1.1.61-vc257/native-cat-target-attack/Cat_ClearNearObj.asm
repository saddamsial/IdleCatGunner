02c3aeb4  stp x30,x21,[sp, #-0x20]!
02c3aeb8  stp x20,x19,[sp, #0x10]
02c3aebc  adrp x21,0x625c000
02c3aec0  adrp x20,0x5e59000
02c3aec4  mov x19,x0
02c3aec8  ldrb w8,[x21, #0xab]
02c3aecc  ldr x20,[x20, #0x1c0]
02c3aed0  tbnz w8,#0x0,0x02c3aee8
02c3aed4  adrp x0,0x5e59000
02c3aed8  ldr x0,[x0, #0x1c0]
02c3aedc  bl 0x029f5a50
02c3aee0  mov w8,#0x1
02c3aee4  strb w8,[x21, #0xab]
02c3aee8  add x0,x19,#0x1e0
02c3aeec  mov x1,xzr
02c3aef0  str xzr,[x19, #0x1e0]
02c3aef4  bl 0x029f59f4
02c3aef8  add x0,x19,#0x180
02c3aefc  mov x1,xzr
02c3af00  str xzr,[x19, #0x180]
02c3af04  bl 0x029f59f4
02c3af08  ldr x0,[x20]
02c3af0c  ldr x20,[x19, #0x110]
02c3af10  ldr w8,[x0, #0xe4]
02c3af14  cbnz w8,0x02c3af1c
02c3af18  bl 0x029f5bd0
02c3af1c  mov x0,x20
02c3af20  mov x1,xzr
02c3af24  mov x2,xzr
02c3af28  bl 0x057dfa70
02c3af2c  tbz w0,#0x0,0x02c3af60
02c3af30  ldr x0,[x19, #0x110]
02c3af34  cbz x0,0x02c3af6c
02c3af38  mov x1,xzr
02c3af3c  bl 0x057e0000
02c3af40  tbz w0,#0x0,0x02c3af60
02c3af44  ldr x0,[x19, #0x110]
02c3af48  cbz x0,0x02c3af6c
02c3af4c  ldp x20,x19,[sp, #0x10]
02c3af50  mov w1,wzr
02c3af54  mov x2,xzr
02c3af58  ldp x30,x21,[sp], #0x20
02c3af5c  b 0x057dff3c
02c3af60  ldp x20,x19,[sp, #0x10]
02c3af64  ldp x30,x21,[sp], #0x20
02c3af68  ret
02c3af6c  bl 0x029f5cfc
