02ca343c  stp x30,x21,[sp, #-0x20]!
02ca3440  stp x20,x19,[sp, #0x10]
02ca3444  adrp x21,0x625c000
02ca3448  mov w20,w1
02ca344c  mov x19,x0
02ca3450  ldrb w8,[x21, #0x49d]
02ca3454  tbnz w8,#0x0,0x02ca346c
02ca3458  adrp x0,0x5e59000
02ca345c  ldr x0,[x0, #0x1c0]
02ca3460  bl 0x029f5a50
02ca3464  mov w8,#0x1
02ca3468  strb w8,[x21, #0x49d]
02ca346c  cmp w20,#0x4
02ca3470  b.hi 0x02ca3504
02ca3474  ldr x8,[x19, #0x38]
02ca3478  cbz x8,0x02ca3510
02ca347c  ldr w9,[x8, #0x18]
02ca3480  cmp w9,w20
02ca3484  b.ls 0x02ca3514
02ca3488  add x8,x8,w20, UXTW 
02ca348c  mov w9,#0x1
02ca3490  mov x0,x19
02ca3494  strb w9,[x8, #0x20]
02ca3498  bl 0x02ca3178
02ca349c  mov x0,x19
02ca34a0  bl 0x02ca2d18
02ca34a4  adrp x8,0x5e59000
02ca34a8  ldr x8,[x8, #0x1c0]
02ca34ac  ldr x20,[x19, #0x20]
02ca34b0  ldr x0,[x8]
02ca34b4  ldr w8,[x0, #0xe4]
02ca34b8  cbnz w8,0x02ca34c0
02ca34bc  bl 0x029f5bd0
02ca34c0  mov x0,x20
02ca34c4  mov x1,xzr
02ca34c8  mov x2,xzr
02ca34cc  bl 0x057dfa70
02ca34d0  tbz w0,#0x0,0x02ca3504
02ca34d4  ldr x0,[x19, #0x20]
02ca34d8  cbz x0,0x02ca3510
02ca34dc  mov x1,xzr
02ca34e0  bl 0x057dc1c8
02ca34e4  cbz x0,0x02ca3510
02ca34e8  mov x1,xzr
02ca34ec  bl 0x057e00b4
02ca34f0  tbz w0,#0x0,0x02ca3504
02ca34f4  mov x0,x19
02ca34f8  ldp x20,x19,[sp, #0x10]
02ca34fc  ldp x30,x21,[sp], #0x20
02ca3500  b 0x02ca2c5c
02ca3504  ldp x20,x19,[sp, #0x10]
02ca3508  ldp x30,x21,[sp], #0x20
02ca350c  ret
02ca3510  bl 0x029f5cfc
02ca3514  bl 0x029f5d04
