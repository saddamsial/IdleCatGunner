02c4d7a4  stp x30,x21,[sp, #-0x20]!
02c4d7a8  stp x20,x19,[sp, #0x10]
02c4d7ac  adrp x21,0x625c000
02c4d7b0  adrp x20,0x5e5d000
02c4d7b4  mov x19,x0
02c4d7b8  ldrb w8,[x21, #0x138]
02c4d7bc  ldr x20,[x20, #0x338]
02c4d7c0  tbnz w8,#0x0,0x02c4d814
02c4d7c4  adrp x0,0x5e5d000
02c4d7c8  ldr x0,[x0, #0x5b0]
02c4d7cc  bl 0x029f5a50
02c4d7d0  adrp x0,0x5e5d000
02c4d7d4  ldr x0,[x0, #0x338]
02c4d7d8  bl 0x029f5a50
02c4d7dc  adrp x0,0x5e62000
02c4d7e0  ldr x0,[x0, #0x670]
02c4d7e4  bl 0x029f5a50
02c4d7e8  adrp x0,0x5e5d000
02c4d7ec  ldr x0,[x0, #0xc20]
02c4d7f0  bl 0x029f5a50
02c4d7f4  adrp x0,0x5e5d000
02c4d7f8  ldr x0,[x0, #0x368]
02c4d7fc  bl 0x029f5a50
02c4d800  adrp x0,0x5e5e000
02c4d804  ldr x0,[x0, #0x48]
02c4d808  bl 0x029f5a50
02c4d80c  mov w8,#0x1
02c4d810  strb w8,[x21, #0x138]
02c4d814  ldr x0,[x20]
02c4d818  adrp x21,0x5e5d000
02c4d81c  ldr w8,[x0, #0xe4]
02c4d820  ldr x21,[x21, #0xc20]
02c4d824  cbnz w8,0x02c4d830
02c4d828  bl 0x029f5bd0
02c4d82c  ldr x0,[x20]
02c4d830  ldr x8,[x21]
02c4d834  ldr x9,[x0, #0xb8]
02c4d838  ldr w10,[x8, #0xe4]
02c4d83c  strb wzr,[x9]
02c4d840  cbnz w10,0x02c4d850
02c4d844  mov x0,x8
02c4d848  bl 0x029f5bd0
02c4d84c  ldr x8,[x21]
02c4d850  ldr x8,[x8, #0xb8]
02c4d854  ldr x0,[x8, #0x10]
02c4d858  cbz x0,0x02c4d9f4
02c4d85c  adrp x20,0x5e62000
02c4d860  mov x1,xzr
02c4d864  ldr x20,[x20, #0x670]
02c4d868  bl 0x02ca8b2c
02c4d86c  ldr x8,[x20]
02c4d870  ldr x8,[x8, #0xb8]
02c4d874  ldr x0,[x8, #0x8]
02c4d878  cbz x0,0x02c4d9f4
02c4d87c  mov x1,xzr
02c4d880  bl 0x02c21688
02c4d884  ldr x0,[x19, #0x40]
02c4d888  cbz x0,0x02c4d9f4
02c4d88c  mov w1,wzr
02c4d890  mov x2,xzr
02c4d894  bl 0x057dff3c
02c4d898  ldr x0,[x19, #0x48]
02c4d89c  cbz x0,0x02c4d9f4
02c4d8a0  mov w1,#0x1
02c4d8a4  mov x2,xzr
02c4d8a8  bl 0x057dff3c
02c4d8ac  ldr w8,[x19, #0xc0]
02c4d8b0  ldr x0,[x19, #0xc8]
02c4d8b4  strh wzr,[x19, #0xb8]
02c4d8b8  strb wzr,[x19, #0xba]
02c4d8bc  str w8,[x19, #0xbc]
02c4d8c0  cbz x0,0x02c4d9f4
02c4d8c4  mov w8,#0x43b40000
02c4d8c8  mov x1,xzr
02c4d8cc  fmov s0,w8
02c4d8d0  bl 0x04b58204
02c4d8d4  ldr x0,[x19, #0x140]
02c4d8d8  str wzr,[x19, #0x13c]
02c4d8dc  cbz x0,0x02c4d9f4
02c4d8e0  adrp x8,0x5e5e000
02c4d8e4  ldr x8,[x8, #0x48]
02c4d8e8  ldr x9,[x0]
02c4d8ec  ldr x1,[x8]
02c4d8f0  ldr x8,[x9, #0x558]
02c4d8f4  ldr x2,[x9, #0x560]
02c4d8f8  blr x8
02c4d8fc  ldr x0,[x19, #0x180]
02c4d900  cbz x0,0x02c4d9f4
02c4d904  adrp x20,0x5e5d000
02c4d908  mov w1,#0x1
02c4d90c  mov x2,xzr
02c4d910  ldr x20,[x20, #0x368]
02c4d914  bl 0x057dff3c
02c4d918  ldr x8,[x20]
02c4d91c  ldr x8,[x8, #0xb8]
02c4d920  ldr x0,[x8]
02c4d924  cbz x0,0x02c4d9f4
02c4d928  adrp x20,0x5e5d000
02c4d92c  mov w1,#0x4
02c4d930  mov x2,xzr
02c4d934  ldr x20,[x20, #0x5b0]
02c4d938  bl 0x02c2a560
02c4d93c  ldr x8,[x20]
02c4d940  ldr x8,[x8, #0xb8]
02c4d944  ldr x0,[x8, #0x8]
02c4d948  cbz x0,0x02c4d9f4
02c4d94c  ldp s1,s2,[x19, #0xec]
02c4d950  ldr s0,[x19, #0xe8]
02c4d954  bl 0x02c44748
02c4d958  ldr x8,[x20]
02c4d95c  ldr x8,[x8, #0xb8]
02c4d960  ldr x0,[x8, #0x8]
02c4d964  cbz x0,0x02c4d9f4
02c4d968  bl 0x02c43744
02c4d96c  mov x0,xzr
02c4d970  bl 0x05797adc
02c4d974  cbz x0,0x02c4d9f4
02c4d978  mov w8,#0x42340000
02c4d97c  mov x1,xzr
02c4d980  fmov s0,w8
02c4d984  bl 0x05795494
02c4d988  adrp x20,0x625b000
02c4d98c  ldrb w8,[x20, #0xa57]
02c4d990  cbnz w8,0x02c4d9a8
02c4d994  adrp x0,0x5e5d000
02c4d998  ldr x0,[x0, #0xd70]
02c4d99c  bl 0x029f5a50
02c4d9a0  mov w8,#0x1
02c4d9a4  strb w8,[x20, #0xa57]
02c4d9a8  adrp x8,0x5e5d000
02c4d9ac  ldr x8,[x8, #0xd70]
02c4d9b0  ldr x8,[x8]
02c4d9b4  ldr x8,[x8, #0xb8]
02c4d9b8  ldr x0,[x8]
02c4d9bc  cbz x0,0x02c4d9f4
02c4d9c0  fmov s0,0x3f800000
02c4d9c4  mov w1,#0xa
02c4d9c8  mov x2,xzr
02c4d9cc  mov x3,xzr
02c4d9d0  bl 0x02c1f10c
02c4d9d4  mov x0,x19
02c4d9d8  bl 0x02c4d9f8
02c4d9dc  mov x1,x0
02c4d9e0  mov x0,x19
02c4d9e4  mov x2,xzr
02c4d9e8  ldp x20,x19,[sp, #0x10]
02c4d9ec  ldp x30,x21,[sp], #0x20
02c4d9f0  b 0x057e2120
02c4d9f4  bl 0x029f5cfc
