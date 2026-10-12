02c378dc  str x30,[sp, #-0x30]!
02c378e0  stp x22,x21,[sp, #0x10]
02c378e4  stp x20,x19,[sp, #0x20]
02c378e8  adrp x20,0x625c000
02c378ec  adrp x22,0x5e59000
02c378f0  mov x19,x0
02c378f4  ldrb w8,[x20, #0x7a]
02c378f8  ldr x22,[x22, #0x1c0]
02c378fc  tbnz w8,#0x0,0x02c37914
02c37900  adrp x0,0x5e59000
02c37904  ldr x0,[x0, #0x1c0]
02c37908  bl 0x029f5a50
02c3790c  mov w8,#0x1
02c37910  strb w8,[x20, #0x7a]
02c37914  ldr x0,[x22]
02c37918  ldr x20,[x19, #0x20]
02c3791c  ldr w8,[x0, #0xe4]
02c37920  cbnz w8,0x02c37928
02c37924  bl 0x029f5bd0
02c37928  mov x0,x20
02c3792c  mov x1,xzr
02c37930  mov x2,xzr
02c37934  bl 0x057dfa70
02c37938  tbz w0,#0x0,0x02c37948
02c3793c  ldr x0,[x19, #0x20]
02c37940  cbz x0,0x02c379f0
02c37944  bl 0x02c37ce4
02c37948  mov x0,x19
02c3794c  bl 0x02c375b8
02c37950  ldr x8,[x22]
02c37954  ldr x21,[x19, #0x28]
02c37958  mov w20,w0
02c3795c  ldr w9,[x8, #0xe4]
02c37960  cbnz w9,0x02c3796c
02c37964  mov x0,x8
02c37968  bl 0x029f5bd0
02c3796c  mov x0,x21
02c37970  mov x1,xzr
02c37974  mov x2,xzr
02c37978  bl 0x057dfa70
02c3797c  tbz w0,#0x0,0x02c37994
02c37980  ldr x0,[x19, #0x28]
02c37984  cbz x0,0x02c379f0
02c37988  and w1,w20,#0x1
02c3798c  mov x2,xzr
02c37990  bl 0x057dff3c
02c37994  ldr x0,[x22]
02c37998  ldr x21,[x19, #0x30]
02c3799c  ldr w8,[x0, #0xe4]
02c379a0  cbnz w8,0x02c379a8
02c379a4  bl 0x029f5bd0
02c379a8  mov x0,x21
02c379ac  mov x1,xzr
02c379b0  mov x2,xzr
02c379b4  bl 0x057dfa70
02c379b8  tbz w0,#0x0,0x02c379e0
02c379bc  ldr x0,[x19, #0x30]
02c379c0  cbz x0,0x02c379f0
02c379c4  mov w8,#0x1
02c379c8  ldp x22,x21,[sp, #0x10]
02c379cc  bic w1,w8,w20
02c379d0  ldp x20,x19,[sp, #0x20]
02c379d4  mov x2,xzr
02c379d8  ldr x30,[sp], #0x30
02c379dc  b 0x057dff3c
02c379e0  ldp x20,x19,[sp, #0x20]
02c379e4  ldp x22,x21,[sp, #0x10]
02c379e8  ldr x30,[sp], #0x30
02c379ec  ret
02c379f0  bl 0x029f5cfc
