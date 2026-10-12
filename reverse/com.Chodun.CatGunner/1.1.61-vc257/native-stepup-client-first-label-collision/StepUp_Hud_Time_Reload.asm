02ca3ffc  stp x30,x21,[sp, #-0x20]!
02ca4000  stp x20,x19,[sp, #0x10]
02ca4004  adrp x21,0x625c000
02ca4008  adrp x20,0x5e5e000
02ca400c  mov x19,x0
02ca4010  ldrb w8,[x21, #0x4aa]
02ca4014  ldr x20,[x20, #0x4b8]
02ca4018  tbnz w8,#0x0,0x02ca4030
02ca401c  adrp x0,0x5e5e000
02ca4020  ldr x0,[x0, #0x4b8]
02ca4024  bl 0x029f5a50
02ca4028  mov w8,#0x1
02ca402c  strb w8,[x21, #0x4aa]
02ca4030  ldr x0,[x20]
02ca4034  ldr w8,[x0, #0xe4]
02ca4038  cbnz w8,0x02ca4044
02ca403c  bl 0x029f5bd0
02ca4040  ldr x0,[x20]
02ca4044  ldr x8,[x0, #0xb8]
02ca4048  ldr x8,[x8]
02ca404c  cbz x8,0x02ca410c
02ca4050  ldr x8,[x8, #0x38]
02ca4054  cbz x8,0x02ca410c
02ca4058  ldr w9,[x8, #0x18]
02ca405c  cbz w9,0x02ca4110
02ca4060  ldr x0,[x19, #0x20]
02ca4064  cbz x0,0x02ca410c
02ca4068  ldrb w21,[x8, #0x20]
02ca406c  mov x1,xzr
02ca4070  bl 0x057dc1c8
02ca4074  cbz x0,0x02ca410c
02ca4078  cmp w21,#0x0
02ca407c  mov x2,xzr
02ca4080  cset w1,ne
02ca4084  bl 0x057dff3c
02ca4088  ldr x0,[x19, #0x28]
02ca408c  cbz x0,0x02ca410c
02ca4090  mov x1,xzr
02ca4094  bl 0x057e0dc0
02ca4098  cbz x0,0x02ca410c
02ca409c  cmp w21,#0x0
02ca40a0  mov x2,xzr
02ca40a4  cset w1,eq
02ca40a8  bl 0x057dff3c
02ca40ac  cbz w21,0x02ca4100
02ca40b0  ldr x0,[x20]
02ca40b4  ldr x19,[x19, #0x20]
02ca40b8  ldr w8,[x0, #0xe4]
02ca40bc  cbnz w8,0x02ca40c8
02ca40c0  bl 0x029f5bd0
02ca40c4  ldr x0,[x20]
02ca40c8  ldr x8,[x0, #0xb8]
02ca40cc  ldr x0,[x8]
02ca40d0  cbz x0,0x02ca410c
02ca40d4  bl 0x02ca28c8
02ca40d8  bl 0x02ca41a8
02ca40dc  cbz x19,0x02ca410c
02ca40e0  ldr x8,[x19]
02ca40e4  mov x1,x0
02ca40e8  mov x0,x19
02ca40ec  ldp x20,x19,[sp, #0x10]
02ca40f0  ldr x2,[x8, #0x560]
02ca40f4  ldr x3,[x8, #0x558]
02ca40f8  ldp x30,x21,[sp], #0x20
02ca40fc  br x3
02ca4100  ldp x20,x19,[sp, #0x10]
02ca4104  ldp x30,x21,[sp], #0x20
02ca4108  ret
02ca410c  bl 0x029f5cfc
02ca4110  bl 0x029f5d04
