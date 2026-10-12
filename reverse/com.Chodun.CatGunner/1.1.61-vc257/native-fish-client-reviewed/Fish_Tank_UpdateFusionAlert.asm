02c623b0  stp x30,x23,[sp, #-0x30]!
02c623b4  stp x22,x21,[sp, #0x10]
02c623b8  stp x20,x19,[sp, #0x20]
02c623bc  adrp x21,0x625c000
02c623c0  mov x20,x1
02c623c4  mov x19,x0
02c623c8  ldrb w8,[x21, #0x237]
02c623cc  tbnz w8,#0x0,0x02c623e4
02c623d0  adrp x0,0x5e59000
02c623d4  ldr x0,[x0, #0x1c0]
02c623d8  bl 0x029f5a50
02c623dc  mov w8,#0x1
02c623e0  strb w8,[x21, #0x237]
02c623e4  cbz x20,0x02c624e4
02c623e8  ldrb w8,[x20, #0x48]
02c623ec  cbz w8,0x02c624d4
02c623f0  adrp x22,0x5e59000
02c623f4  mov x0,x19
02c623f8  mov x1,x20
02c623fc  ldr x22,[x22, #0x1c0]
02c62400  bl 0x02c636c4
02c62404  ldr x8,[x22]
02c62408  mov x21,x0
02c6240c  ldr w9,[x8, #0xe4]
02c62410  cbnz w9,0x02c6241c
02c62414  mov x0,x8
02c62418  bl 0x029f5bd0
02c6241c  mov x0,x21
02c62420  mov x1,xzr
02c62424  mov x2,xzr
02c62428  bl 0x057dfa70
02c6242c  mov w8,w0
02c62430  ldr x0,[x22]
02c62434  mov x22,x19
02c62438  ldr x23,[x22, #0x40]!
02c6243c  ldr w9,[x0, #0xe4]
02c62440  tbz w8,#0x0,0x02c624a4
02c62444  cbnz w9,0x02c6244c
02c62448  bl 0x029f5bd0
02c6244c  mov x0,x23
02c62450  mov x1,x21
02c62454  mov x2,xzr
02c62458  bl 0x057e14b4
02c6245c  tbnz w0,#0x0,0x02c624d4
02c62460  mov x0,x19
02c62464  bl 0x02c61910
02c62468  mov x0,x22
02c6246c  mov x1,x21
02c62470  str x21,[x19, #0x40]
02c62474  bl 0x029f59f4
02c62478  mov x0,x20
02c6247c  bl 0x02c61ba8
02c62480  cbz x21,0x02c624e4
02c62484  mov x0,x21
02c62488  bl 0x02c61ba8
02c6248c  ldp x20,x19,[sp, #0x20]
02c62490  mov w0,#0x1e
02c62494  ldp x22,x21,[sp, #0x10]
02c62498  mov x1,xzr
02c6249c  ldp x30,x23,[sp], #0x30
02c624a0  b 0x02c17f8c
02c624a4  cbnz w9,0x02c624ac
02c624a8  bl 0x029f5bd0
02c624ac  mov x0,x23
02c624b0  mov x1,xzr
02c624b4  mov x2,xzr
02c624b8  bl 0x057dfa70
02c624bc  tbz w0,#0x0,0x02c624d4
02c624c0  mov x0,x19
02c624c4  ldp x20,x19,[sp, #0x20]
02c624c8  ldp x22,x21,[sp, #0x10]
02c624cc  ldp x30,x23,[sp], #0x30
02c624d0  b 0x02c61910
02c624d4  ldp x20,x19,[sp, #0x20]
02c624d8  ldp x22,x21,[sp, #0x10]
02c624dc  ldp x30,x23,[sp], #0x30
02c624e0  ret
02c624e4  bl 0x029f5cfc
