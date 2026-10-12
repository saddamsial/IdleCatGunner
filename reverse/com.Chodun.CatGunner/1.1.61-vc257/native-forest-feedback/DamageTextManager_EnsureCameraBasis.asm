02b8344c  str x30,[sp, #-0x30]!
02b83450  stp x22,x21,[sp, #0x10]
02b83454  stp x20,x19,[sp, #0x20]
02b83458  adrp x20,0x625b000
02b8345c  mov x19,x0
02b83460  ldrb w8,[x20, #0x8e3]
02b83464  tbnz w8,#0x0,0x02b83488
02b83468  adrp x0,0x5e5d000
02b8346c  ldr x0,[x0, #0x6d8]
02b83470  bl 0x029f5a50
02b83474  adrp x0,0x5e59000
02b83478  ldr x0,[x0, #0x1c0]
02b8347c  bl 0x029f5a50
02b83480  mov w8,#0x1
02b83484  strb w8,[x20, #0x8e3]
02b83488  mov x0,xzr
02b8348c  bl 0x057d901c
02b83490  ldr w8,[x19, #0x3c]
02b83494  cmp w8,w0
02b83498  b.ne 0x02b834ac
02b8349c  ldrb w8,[x19, #0x58]
02b834a0  cmp w8,#0x0
02b834a4  cset w0,ne
02b834a8  b 0x02b835b0
02b834ac  adrp x22,0x5e5d000
02b834b0  adrp x21,0x5e59000
02b834b4  ldr x22,[x22, #0x6d8]
02b834b8  ldr x21,[x21, #0x1c0]
02b834bc  str w0,[x19, #0x3c]
02b834c0  ldr x9,[x22]
02b834c4  ldr x8,[x21]
02b834c8  ldr x9,[x9, #0xb8]
02b834cc  ldr w10,[x8, #0xe4]
02b834d0  ldr x20,[x9]
02b834d4  cbnz w10,0x02b834e0
02b834d8  mov x0,x8
02b834dc  bl 0x029f5bd0
02b834e0  mov x0,x20
02b834e4  mov x1,xzr
02b834e8  mov x2,xzr
02b834ec  bl 0x057dfa70
02b834f0  mov x20,xzr
02b834f4  tbz w0,#0x0,0x02b8350c
02b834f8  ldr x8,[x22]
02b834fc  ldr x8,[x8, #0xb8]
02b83500  ldr x8,[x8]
02b83504  cbz x8,0x02b835c0
02b83508  ldr x20,[x8, #0x28]
02b8350c  ldr x0,[x21]
02b83510  ldr w8,[x0, #0xe4]
02b83514  cbnz w8,0x02b8351c
02b83518  bl 0x029f5bd0
02b8351c  mov x0,x20
02b83520  mov x1,xzr
02b83524  mov x2,xzr
02b83528  bl 0x057e14b4
02b8352c  tbz w0,#0x0,0x02b8353c
02b83530  mov x0,xzr
02b83534  bl 0x05797adc
02b83538  mov x20,x0
02b8353c  ldr x0,[x21]
02b83540  ldr w8,[x0, #0xe4]
02b83544  cbnz w8,0x02b8354c
02b83548  bl 0x029f5bd0
02b8354c  mov x0,x20
02b83550  mov x1,xzr
02b83554  mov x2,xzr
02b83558  bl 0x057e14b4
02b8355c  tbz w0,#0x0,0x02b8356c
02b83560  mov w0,wzr
02b83564  strb wzr,[x19, #0x58]
02b83568  b 0x02b835b0
02b8356c  cbz x20,0x02b835c0
02b83570  mov x0,x20
02b83574  mov x1,xzr
02b83578  bl 0x057dc0f8
02b8357c  cbz x0,0x02b835c0
02b83580  mov x1,xzr
02b83584  mov x20,x0
02b83588  bl 0x057ef2d8
02b8358c  mov x0,x20
02b83590  mov x1,xzr
02b83594  stp s0,s1,[x19, #0x40]
02b83598  str s2,[x19, #0x48]
02b8359c  bl 0x057ef354
02b835a0  mov w0,#0x1
02b835a4  stp s0,s1,[x19, #0x4c]
02b835a8  str s2,[x19, #0x54]
02b835ac  strb w0,[x19, #0x58]
02b835b0  ldp x20,x19,[sp, #0x20]
02b835b4  ldp x22,x21,[sp, #0x10]
02b835b8  ldr x30,[sp], #0x30
02b835bc  ret
02b835c0  bl 0x029f5cfc
