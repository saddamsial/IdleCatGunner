02c8339c  stp x30,x27,[sp, #-0x50]!
02c833a0  stp x26,x25,[sp, #0x10]
02c833a4  stp x24,x23,[sp, #0x20]
02c833a8  stp x22,x21,[sp, #0x30]
02c833ac  stp x20,x19,[sp, #0x40]
02c833b0  adrp x22,0x625c000
02c833b4  mov x20,x2
02c833b8  mov x21,x1
02c833bc  ldrb w8,[x22, #0x365]
02c833c0  mov x19,x0
02c833c4  tbnz w8,#0x0,0x02c833e8
02c833c8  adrp x0,0x5e59000
02c833cc  ldr x0,[x0, #0x1c0]
02c833d0  bl 0x029f5a50
02c833d4  adrp x0,0x5e5d000
02c833d8  ldr x0,[x0, #0x4d0]
02c833dc  bl 0x029f5a50
02c833e0  mov w8,#0x1
02c833e4  strb w8,[x22, #0x365]
02c833e8  cbz x21,0x02c83630
02c833ec  cbz x20,0x02c83630
02c833f0  adrp x23,0x5e5d000
02c833f4  ldr x23,[x23, #0x4d0]
02c833f8  ldr w22,[x21, #0x64]
02c833fc  ldrsw x24,[x20, #0x20]
02c83400  ldr x0,[x23]
02c83404  ldr w8,[x0, #0xe4]
02c83408  cbnz w8,0x02c83414
02c8340c  bl 0x029f5bd0
02c83410  ldr x0,[x23]
02c83414  ldr x8,[x0, #0xb8]
02c83418  ldr x11,[x8, #0x28]
02c8341c  cbz x11,0x02c83630
02c83420  ldr x9,[x11, #0x30]
02c83424  cbz x9,0x02c83630
02c83428  ldr w8,[x9, #0x18]
02c8342c  cmp w24,w8
02c83430  b.cs 0x02c8362c
02c83434  ldr x10,[x11, #0x48]
02c83438  cbz x10,0x02c83630
02c8343c  ldr w8,[x10, #0x18]
02c83440  cmp w24,w8
02c83444  b.cs 0x02c8362c
02c83448  ldr x8,[x11, #0x40]
02c8344c  cbz x8,0x02c83630
02c83450  ldrsw x13,[x21, #0x68]
02c83454  ldr w12,[x8, #0x18]
02c83458  cmp w13,w12
02c8345c  b.cs 0x02c8362c
02c83460  add x9,x9,x24, LSL #0x2
02c83464  add x10,x10,x24, LSL #0x2
02c83468  add x16,x8,x13, LSL #0x2
02c8346c  ldr x15,[x11, #0x38]
02c83470  ldr w24,[x9, #0x20]!
02c83474  ldr w11,[x16, #0x20]
02c83478  ldr w14,[x10, #0x20]!
02c8347c  cmn w24,#0x1
02c83480  b.eq 0x02c834a0
02c83484  cbz x15,0x02c83630
02c83488  ldr w16,[x15, #0x18]
02c8348c  cmp w13,w16
02c83490  b.cs 0x02c8362c
02c83494  add x13,x15,x13, LSL #0x2
02c83498  str w24,[x13, #0x20]
02c8349c  b 0x02c834bc
02c834a0  cbz x15,0x02c83630
02c834a4  ldr w14,[x15, #0x18]
02c834a8  cmp w13,w14
02c834ac  b.cs 0x02c8362c
02c834b0  add x13,x15,x13, LSL #0x2
02c834b4  mov w14,#0xffffffff
02c834b8  str w14,[x13, #0x20]
02c834bc  ldr w13,[x21, #0x68]
02c834c0  cmp w13,w12
02c834c4  b.cs 0x02c8362c
02c834c8  add x8,x8,w13, SXTW  #0x2
02c834cc  mov x0,x20
02c834d0  str w14,[x8, #0x20]
02c834d4  str w22,[x9]
02c834d8  str w11,[x10]
02c834dc  bl 0x02c83634
02c834e0  mov x0,x19
02c834e4  bl 0x02c825a8
02c834e8  ldr x0,[x23]
02c834ec  ldr w8,[x0, #0xe4]
02c834f0  cbnz w8,0x02c834fc
02c834f4  bl 0x029f5bd0
02c834f8  ldr x0,[x23]
02c834fc  ldr x8,[x0, #0xb8]
02c83500  ldr x8,[x8, #0x28]
02c83504  cbz x8,0x02c83630
02c83508  ldr x21,[x8, #0x90]
02c8350c  cbz x21,0x02c83630
02c83510  ldr x8,[x21, #0x18]
02c83514  cmp w8,#0x1
02c83518  b.lt 0x02c8357c
02c8351c  adrp x26,0x5e59000
02c83520  mov x25,xzr
02c83524  and x8,x8,#0xffffffff
02c83528  ldr x26,[x26, #0x1c0]
02c8352c  add x27,x21,#0x20
02c83530  cmp x25,w8, UXTW 
02c83534  b.cs 0x02c8362c
02c83538  ldr x0,[x26]
02c8353c  ldr x20,[x27, x25, LSL #0x3]
02c83540  ldr w8,[x0, #0xe4]
02c83544  cbnz w8,0x02c8354c
02c83548  bl 0x029f5bd0
02c8354c  mov x0,x20
02c83550  mov x1,xzr
02c83554  mov x2,xzr
02c83558  bl 0x057dfa70
02c8355c  tbz w0,#0x0,0x02c8356c
02c83560  cbz x20,0x02c83630
02c83564  mov x0,x20
02c83568  bl 0x02c83634
02c8356c  ldr w8,[x21, #0x18]
02c83570  add x25,x25,#0x1
02c83574  cmp x25,w8, SXTW 
02c83578  b.lt 0x02c83530
02c8357c  ldr x0,[x23]
02c83580  ldr w8,[x0, #0xe4]
02c83584  cbnz w8,0x02c83590
02c83588  bl 0x029f5bd0
02c8358c  ldr x0,[x23]
02c83590  ldr x8,[x0, #0xb8]
02c83594  ldr x0,[x8, #0x28]
02c83598  cbz x0,0x02c83630
02c8359c  mov x1,xzr
02c835a0  bl 0x02c7c524
02c835a4  adrp x20,0x625b000
02c835a8  ldrb w8,[x20, #0xa57]
02c835ac  cbnz w8,0x02c835c4
02c835b0  adrp x0,0x5e5d000
02c835b4  ldr x0,[x0, #0xd70]
02c835b8  bl 0x029f5a50
02c835bc  mov w8,#0x1
02c835c0  strb w8,[x20, #0xa57]
02c835c4  adrp x8,0x5e5d000
02c835c8  ldr x8,[x8, #0xd70]
02c835cc  ldr x8,[x8]
02c835d0  ldr x8,[x8, #0xb8]
02c835d4  ldr x0,[x8]
02c835d8  cbz x0,0x02c83630
02c835dc  fmov s0,0x3f800000
02c835e0  mov w1,#0x9
02c835e4  mov x2,xzr
02c835e8  mov x3,xzr
02c835ec  bl 0x02c1f10c
02c835f0  cmn w24,#0x1
02c835f4  b.eq 0x02c83610
02c835f8  cmp w24,w22
02c835fc  b.ne 0x02c83610
02c83600  mov x0,xzr
02c83604  bl 0x02be0088
02c83608  mov x1,xzr
02c8360c  bl 0x02c1dd54
02c83610  mov x0,x19
02c83614  ldp x20,x19,[sp, #0x40]
02c83618  ldp x22,x21,[sp, #0x30]
02c8361c  ldp x24,x23,[sp, #0x20]
02c83620  ldp x26,x25,[sp, #0x10]
02c83624  ldp x30,x27,[sp], #0x50
02c83628  b 0x02c82428
02c8362c  bl 0x029f5d04
02c83630  bl 0x029f5cfc
