02c7df1c  str x30,[sp, #-0x20]!
02c7df20  stp x20,x19,[sp, #0x10]
02c7df24  adrp x19,0x625c000
02c7df28  adrp x20,0x5e5d000
02c7df2c  ldrb w8,[x19, #0x333]
02c7df30  ldr x20,[x20, #0xd58]
02c7df34  tbnz w8,#0x0,0x02c7df58
02c7df38  adrp x0,0x5e5d000
02c7df3c  ldr x0,[x0, #0xd58]
02c7df40  bl 0x029f5a50
02c7df44  adrp x0,0x5e59000
02c7df48  ldr x0,[x0, #0x1c0]
02c7df4c  bl 0x029f5a50
02c7df50  mov w8,#0x1
02c7df54  strb w8,[x19, #0x333]
02c7df58  ldr x0,[x20]
02c7df5c  adrp x19,0x5e59000
02c7df60  ldr w8,[x0, #0xe4]
02c7df64  ldr x19,[x19, #0x1c0]
02c7df68  cbnz w8,0x02c7df74
02c7df6c  bl 0x029f5bd0
02c7df70  ldr x0,[x20]
02c7df74  ldr x8,[x19]
02c7df78  ldr x9,[x0, #0xb8]
02c7df7c  ldr w10,[x8, #0xe4]
02c7df80  ldr x19,[x9, #0x8]
02c7df84  cbnz w10,0x02c7df90
02c7df88  mov x0,x8
02c7df8c  bl 0x029f5bd0
02c7df90  mov x0,x19
02c7df94  mov x1,xzr
02c7df98  mov x2,xzr
02c7df9c  bl 0x057dfa70
02c7dfa0  tbz w0,#0x0,0x02c7dfd8
02c7dfa4  ldr x0,[x20]
02c7dfa8  ldr w8,[x0, #0xe4]
02c7dfac  cbnz w8,0x02c7dfb8
02c7dfb0  bl 0x029f5bd0
02c7dfb4  ldr x0,[x20]
02c7dfb8  ldr x8,[x0, #0xb8]
02c7dfbc  ldr x8,[x8, #0x8]
02c7dfc0  cbz x8,0x02c7e014
02c7dfc4  ldr w9,[x8, #0x20]
02c7dfc8  cmp w9,#0x0
02c7dfcc  b.le 0x02c7dfe0
02c7dfd0  mov w0,#0x1
02c7dfd4  b 0x02c7e008
02c7dfd8  mov w0,wzr
02c7dfdc  b 0x02c7e008
02c7dfe0  ldr w9,[x0, #0xe4]
02c7dfe4  cbnz w9,0x02c7dffc
02c7dfe8  bl 0x029f5bd0
02c7dfec  ldr x8,[x20]
02c7dff0  ldr x8,[x8, #0xb8]
02c7dff4  ldr x8,[x8, #0x8]
02c7dff8  cbz x8,0x02c7e014
02c7dffc  ldr w8,[x8, #0x24]
02c7e000  cmp w8,#0x0
02c7e004  cset w0,gt
02c7e008  ldp x20,x19,[sp, #0x10]
02c7e00c  ldr x30,[sp], #0x20
02c7e010  ret
02c7e014  bl 0x029f5cfc
