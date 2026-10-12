02c4171c  str x30,[sp, #-0x30]!
02c41720  stp x22,x21,[sp, #0x10]
02c41724  stp x20,x19,[sp, #0x20]
02c41728  adrp x21,0x625c000
02c4172c  adrp x22,0x5e59000
02c41730  mov x20,x1
02c41734  ldrb w8,[x21, #0xad]
02c41738  ldr x22,[x22, #0x1c0]
02c4173c  mov x19,x0
02c41740  tbnz w8,#0x0,0x02c41758
02c41744  adrp x0,0x5e59000
02c41748  ldr x0,[x0, #0x1c0]
02c4174c  bl 0x029f5a50
02c41750  mov w8,#0x1
02c41754  strb w8,[x21, #0xad]
02c41758  ldr x0,[x22]
02c4175c  ldr w8,[x0, #0xe4]
02c41760  cbnz w8,0x02c41768
02c41764  bl 0x029f5bd0
02c41768  mov x0,x20
02c4176c  mov x1,xzr
02c41770  mov x2,xzr
02c41774  bl 0x057dfa70
02c41778  tbz w0,#0x0,0x02c417d0
02c4177c  cbz x20,0x02c417e4
02c41780  mov x0,x20
02c41784  mov x1,xzr
02c41788  bl 0x057dc1c8
02c4178c  cbz x0,0x02c417e4
02c41790  mov x1,xzr
02c41794  bl 0x057e00b4
02c41798  tbz w0,#0x0,0x02c417d0
02c4179c  mov x0,x20
02c417a0  mov x1,xzr
02c417a4  bl 0x057dc0f8
02c417a8  cbz x0,0x02c417e4
02c417ac  mov x1,xzr
02c417b0  bl 0x057eed98
02c417b4  adrp x8,0x116c000
02c417b8  mov x0,x19
02c417bc  ldp x20,x19,[sp, #0x20]
02c417c0  ldr s3,[x8, #0x1b0]
02c417c4  ldp x22,x21,[sp, #0x10]
02c417c8  ldr x30,[sp], #0x30
02c417cc  b 0x02c38de0
02c417d0  ldp x20,x19,[sp, #0x20]
02c417d4  mov w0,wzr
02c417d8  ldp x22,x21,[sp, #0x10]
02c417dc  ldr x30,[sp], #0x30
02c417e0  ret
02c417e4  bl 0x029f5cfc
