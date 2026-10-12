02c5d820  sub sp,sp,#0x150
02c5d824  stp x29,x30,[sp, #0x120]
02c5d828  stp x22,x21,[sp, #0x130]
02c5d82c  stp x20,x19,[sp, #0x140]
02c5d830  adrp x20,0x625c000
02c5d834  mov x19,x0
02c5d838  ldrb w8,[x20, #0x20b]
02c5d83c  tbnz w8,#0x0,0x02c5d884
02c5d840  adrp x0,0x5e5d000
02c5d844  ldr x0,[x0, #0x4c8]
02c5d848  bl 0x029f5a50
02c5d84c  adrp x0,0x5e62000
02c5d850  ldr x0,[x0, #0xb8]
02c5d854  bl 0x029f5a50
02c5d858  adrp x0,0x5e59000
02c5d85c  ldr x0,[x0, #0x1c0]
02c5d860  bl 0x029f5a50
02c5d864  adrp x0,0x5e63000
02c5d868  ldr x0,[x0, #0x338]
02c5d86c  bl 0x029f5a50
02c5d870  adrp x0,0x5e63000
02c5d874  ldr x0,[x0, #0x810]
02c5d878  bl 0x029f5a50
02c5d87c  mov w8,#0x1
02c5d880  strb w8,[x20, #0x20b]
02c5d884  movi v0.2D,#0x0
02c5d888  mov w8,#0x1
02c5d88c  mov x0,x19
02c5d890  strb w8,[x19, #0x88]
02c5d894  stp q0,q0,[sp, #0x80]
02c5d898  stp q0,q0,[sp, #0xa0]
02c5d89c  stp q0,q0,[sp, #0xc0]
02c5d8a0  stp q0,q0,[sp, #0xe0]
02c5d8a4  stp q0,q0,[sp, #0x100]
02c5d8a8  bl 0x02c5f404
02c5d8ac  ldr w0,[x19, #0x7c]
02c5d8b0  add x8,sp,#0x60
02c5d8b4  mov x1,xzr
02c5d8b8  bl 0x046544b8
02c5d8bc  ldp q0,q1,[sp, #0x60]
02c5d8c0  ldrb w8,[x19, #0x88]
02c5d8c4  stp q0,q1,[sp, #0x100]
02c5d8c8  cbz w8,0x02c5d8d4
02c5d8cc  mov x0,x19
02c5d8d0  bl 0x02c5f404
02c5d8d4  adrp x21,0x5e59000
02c5d8d8  add x8,sp,#0x40
02c5d8dc  mov x1,xzr
02c5d8e0  ldr x21,[x21, #0x1c0]
02c5d8e4  ldr w0,[x19, #0x80]
02c5d8e8  bl 0x046544b8
02c5d8ec  ldp q0,q1,[sp, #0x40]
02c5d8f0  ldrb w8,[x19, #0x88]
02c5d8f4  stp q0,q1,[sp, #0xe0]
02c5d8f8  cbz w8,0x02c5d904
02c5d8fc  mov x0,x19
02c5d900  bl 0x02c5f404
02c5d904  ldr w0,[x19, #0x84]
02c5d908  add x8,sp,#0x20
02c5d90c  mov x1,xzr
02c5d910  bl 0x046544b8
02c5d914  ldr x0,[x21]
02c5d918  ldp q0,q1,[sp, #0x20]
02c5d91c  ldr x20,[x19, #0x58]
02c5d920  ldr w8,[x0, #0xe4]
02c5d924  stp q0,q1,[sp, #0xc0]
02c5d928  cbnz w8,0x02c5d930
02c5d92c  bl 0x029f5bd0
02c5d930  mov x0,x20
02c5d934  mov x1,xzr
02c5d938  mov x2,xzr
02c5d93c  bl 0x057dfa70
02c5d940  tbz w0,#0x0,0x02c5d98c
02c5d944  adrp x22,0x5e63000
02c5d948  add x0,sp,#0x100
02c5d94c  mov x1,xzr
02c5d950  ldr x22,[x22, #0x810]
02c5d954  ldr x20,[x19, #0x58]
02c5d958  bl 0x0465bddc
02c5d95c  ldr x8,[x22]
02c5d960  mov x1,x0
02c5d964  mov x2,xzr
02c5d968  mov x0,x8
02c5d96c  bl 0x046b6c0c
02c5d970  cbz x20,0x02c5db24
02c5d974  ldr x8,[x20]
02c5d978  mov x1,x0
02c5d97c  mov x0,x20
02c5d980  ldr x9,[x8, #0x558]
02c5d984  ldr x2,[x8, #0x560]
02c5d988  blr x9
02c5d98c  ldr x0,[x21]
02c5d990  ldr x20,[x19, #0x60]
02c5d994  ldr w8,[x0, #0xe4]
02c5d998  cbnz w8,0x02c5d9a0
02c5d99c  bl 0x029f5bd0
02c5d9a0  mov x0,x20
02c5d9a4  mov x1,xzr
02c5d9a8  mov x2,xzr
02c5d9ac  bl 0x057dfa70
02c5d9b0  tbz w0,#0x0,0x02c5da6c
02c5d9b4  ldr x20,[x19, #0x60]
02c5d9b8  add x8,sp,#0x60
02c5d9bc  mov w0,wzr
02c5d9c0  mov x1,xzr
02c5d9c4  bl 0x046544b8
02c5d9c8  ldp q0,q1,[sp, #0x60]
02c5d9cc  add x8,sp,#0x40
02c5d9d0  mov w0,#0x64
02c5d9d4  mov x1,xzr
02c5d9d8  stp q0,q1,[sp, #0xa0]
02c5d9dc  bl 0x046544b8
02c5d9e0  adrp x8,0x5e62000
02c5d9e4  ldr x8,[x8, #0xb8]
02c5d9e8  ldp q0,q1,[sp, #0x40]
02c5d9ec  ldr x0,[x8]
02c5d9f0  stp q0,q1,[sp, #0x80]
02c5d9f4  ldr w8,[x0, #0xe4]
02c5d9f8  cbnz w8,0x02c5da00
02c5d9fc  bl 0x029f5bd0
02c5da00  add x8,sp,#0x20
02c5da04  add x0,sp,#0xe0
02c5da08  add x1,sp,#0xa0
02c5da0c  add x2,sp,#0x80
02c5da10  mov x3,xzr
02c5da14  bl 0x0465db68
02c5da18  adrp x8,0x5e5d000
02c5da1c  mov x1,sp
02c5da20  ldr x8,[x8, #0x4c8]
02c5da24  ldp q0,q1,[sp, #0x20]
02c5da28  ldr x0,[x8]
02c5da2c  stp q0,q1,[sp]
02c5da30  bl 0x029f5bd8
02c5da34  adrp x8,0x5e63000
02c5da38  mov x1,x0
02c5da3c  mov x2,xzr
02c5da40  ldr x8,[x8, #0x338]
02c5da44  ldr x8,[x8]
02c5da48  mov x0,x8
02c5da4c  bl 0x046b6c0c
02c5da50  cbz x20,0x02c5db24
02c5da54  ldr x8,[x20]
02c5da58  mov x1,x0
02c5da5c  mov x0,x20
02c5da60  ldr x9,[x8, #0x558]
02c5da64  ldr x2,[x8, #0x560]
02c5da68  blr x9
02c5da6c  ldr x0,[x21]
02c5da70  ldr x20,[x19, #0x68]
02c5da74  ldr w8,[x0, #0xe4]
02c5da78  cbnz w8,0x02c5da80
02c5da7c  bl 0x029f5bd0
02c5da80  mov x0,x20
02c5da84  mov x1,xzr
02c5da88  mov x2,xzr
02c5da8c  bl 0x057dfa70
02c5da90  tbz w0,#0x0,0x02c5db10
02c5da94  ldr x19,[x19, #0x68]
02c5da98  add x8,sp,#0x60
02c5da9c  mov w0,#0x7d
02c5daa0  mov x1,xzr
02c5daa4  bl 0x046544b8
02c5daa8  ldp q0,q1,[sp, #0x60]
02c5daac  add x8,sp,#0x40
02c5dab0  add x0,sp,#0xc0
02c5dab4  add x1,sp,#0xa0
02c5dab8  mov x2,xzr
02c5dabc  stp q0,q1,[sp, #0xa0]
02c5dac0  bl 0x04658020
02c5dac4  ldp q0,q1,[sp, #0x40]
02c5dac8  add x0,sp,#0x80
02c5dacc  mov x1,xzr
02c5dad0  stp q0,q1,[sp, #0x80]
02c5dad4  bl 0x0465bddc
02c5dad8  adrp x8,0x5e63000
02c5dadc  mov x1,x0
02c5dae0  mov x2,xzr
02c5dae4  ldr x8,[x8, #0x338]
02c5dae8  ldr x8,[x8]
02c5daec  mov x0,x8
02c5daf0  bl 0x046b6c0c
02c5daf4  cbz x19,0x02c5db24
02c5daf8  ldr x8,[x19]
02c5dafc  mov x1,x0
02c5db00  mov x0,x19
02c5db04  ldr x9,[x8, #0x558]
02c5db08  ldr x2,[x8, #0x560]
02c5db0c  blr x9
02c5db10  ldp x20,x19,[sp, #0x140]
02c5db14  ldp x22,x21,[sp, #0x130]
02c5db18  ldp x29,x30,[sp, #0x120]
02c5db1c  add sp,sp,#0x150
02c5db20  ret
02c5db24  bl 0x029f5cfc
