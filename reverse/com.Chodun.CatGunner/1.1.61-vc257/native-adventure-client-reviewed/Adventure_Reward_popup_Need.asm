02c3621c  stp x30,x21,[sp, #-0x20]!
02c36220  stp x20,x19,[sp, #0x10]
02c36224  adrp x21,0x625c000
02c36228  adrp x20,0x5e5d000
02c3622c  mov w19,w1
02c36230  ldrb w8,[x21, #0x6f]
02c36234  ldr x20,[x20, #0xd28]
02c36238  tbnz w8,#0x0,0x02c36250
02c3623c  adrp x0,0x5e5d000
02c36240  ldr x0,[x0, #0xd28]
02c36244  bl 0x029f5a50
02c36248  mov w8,#0x1
02c3624c  strb w8,[x21, #0x6f]
02c36250  ldr x0,[x20]
02c36254  ldr w8,[x0, #0xe4]
02c36258  cbnz w8,0x02c36264
02c3625c  bl 0x029f5bd0
02c36260  ldr x0,[x20]
02c36264  ldr x8,[x0, #0xb8]
02c36268  ldr x8,[x8, #0x10]
02c3626c  cbz x8,0x02c362ac
02c36270  tbnz w19,#0x1f,0x02c3629c
02c36274  ldr x8,[x8, #0x38]
02c36278  cbz x8,0x02c3629c
02c3627c  ldr w9,[x8, #0x18]
02c36280  cmp w9,w19
02c36284  b.le 0x02c3629c
02c36288  add x8,x8,w19, UXTW  #0x2
02c3628c  ldr w8,[x8, #0x20]
02c36290  cmp w8,#0x1
02c36294  csinc w0,w8,wzr,gt
02c36298  b 0x02c362a0
02c3629c  mov w0,#0x1
02c362a0  ldp x20,x19,[sp, #0x10]
02c362a4  ldp x30,x21,[sp], #0x20
02c362a8  ret
02c362ac  bl 0x029f5cfc
