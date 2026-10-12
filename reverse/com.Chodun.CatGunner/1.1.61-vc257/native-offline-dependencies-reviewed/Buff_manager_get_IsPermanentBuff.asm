02c3740c  str x30,[sp, #-0x20]!
02c37410  stp x20,x19,[sp, #0x10]
02c37414  adrp x20,0x625c000
02c37418  adrp x19,0x5e5d000
02c3741c  ldrb w8,[x20, #0x74]
02c37420  ldr x19,[x19, #0x920]
02c37424  tbnz w8,#0x0,0x02c3743c
02c37428  adrp x0,0x5e5d000
02c3742c  ldr x0,[x0, #0x920]
02c37430  bl 0x029f5a50
02c37434  mov w8,#0x1
02c37438  strb w8,[x20, #0x74]
02c3743c  ldr x0,[x19]
02c37440  ldr w8,[x0, #0xe4]
02c37444  cbnz w8,0x02c37450
02c37448  bl 0x029f5bd0
02c3744c  ldr x0,[x19]
02c37450  ldr x8,[x0, #0xb8]
02c37454  ldp x20,x19,[sp, #0x10]
02c37458  ldrb w0,[x8, #0xb]
02c3745c  ldr x30,[sp], #0x20
02c37460  ret
