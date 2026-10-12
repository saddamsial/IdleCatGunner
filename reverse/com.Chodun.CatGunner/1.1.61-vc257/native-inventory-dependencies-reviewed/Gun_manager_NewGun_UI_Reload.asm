02c68918  stp x30,x21,[sp, #-0x20]!
02c6891c  stp x20,x19,[sp, #0x10]
02c68920  adrp x21,0x625c000
02c68924  mov w19,w1
02c68928  mov x20,x0
02c6892c  ldrb w8,[x21, #0x270]
02c68930  tbnz w8,#0x0,0x02c6896c
02c68934  adrp x0,0x5e62000
02c68938  ldr x0,[x0, #0x660]
02c6893c  bl 0x029f5a50
02c68940  adrp x0,0x5e59000
02c68944  ldr x0,[x0, #0x1c0]
02c68948  bl 0x029f5a50
02c6894c  adrp x0,0x5e5e000
02c68950  ldr x0,[x0, #0x4b8]
02c68954  bl 0x029f5a50
02c68958  adrp x0,0x5e63000
02c6895c  ldr x0,[x0, #0x828]
02c68960  bl 0x029f5a50
02c68964  mov w8,#0x1
02c68968  strb w8,[x21, #0x270]
02c6896c  ldr x8,[x20, #0x30]
02c68970  cbz x8,0x02c68ac0
02c68974  ldr w9,[x8, #0x18]
02c68978  cmp w9,w19
02c6897c  b.ls 0x02c68ac4
02c68980  add x8,x8,w19, SXTW 
02c68984  ldrb w9,[x8, #0x20]!
02c68988  cbz w9,0x02c68998
02c6898c  ldp x20,x19,[sp, #0x10]
02c68990  ldp x30,x21,[sp], #0x20
02c68994  ret
02c68998  ldr x0,[x20, #0xa8]
02c6899c  mov w9,#0x1
02c689a0  strb w9,[x8]
02c689a4  cbz x0,0x02c68ac0
02c689a8  mov w1,w19
02c689ac  mov x2,xzr
02c689b0  bl 0x02c7a184
02c689b4  cmp w19,#0xf
02c689b8  b.ge 0x02c689c8
02c689bc  cmp w19,#0xa
02c689c0  b.lt 0x02c6898c
02c689c4  b 0x02c68a3c
02c689c8  adrp x19,0x5e62000
02c689cc  ldr x19,[x19, #0x660]
02c689d0  ldr x0,[x19]
02c689d4  ldr w8,[x0, #0xe4]
02c689d8  cbnz w8,0x02c689e4
02c689dc  bl 0x029f5bd0
02c689e0  ldr x0,[x19]
02c689e4  adrp x8,0x5e59000
02c689e8  ldr x8,[x8, #0x1c0]
02c689ec  ldr x9,[x0, #0xb8]
02c689f0  ldr x8,[x8]
02c689f4  ldr x19,[x9]
02c689f8  ldr w10,[x8, #0xe4]
02c689fc  cbnz w10,0x02c68a08
02c68a00  mov x0,x8
02c68a04  bl 0x029f5bd0
02c68a08  mov x0,x19
02c68a0c  mov x1,xzr
02c68a10  mov x2,xzr
02c68a14  bl 0x057dfa70
02c68a18  tbz w0,#0x0,0x02c68a3c
02c68a1c  adrp x8,0x5e63000
02c68a20  ldr x8,[x8, #0x828]
02c68a24  ldr x8,[x8]
02c68a28  ldr x8,[x8, #0xb8]
02c68a2c  ldr x0,[x8]
02c68a30  cbz x0,0x02c68ac0
02c68a34  mov x1,xzr
02c68a38  bl 0x02ca6f08
02c68a3c  adrp x20,0x5e5e000
02c68a40  ldr x20,[x20, #0x4b8]
02c68a44  ldr x0,[x20]
02c68a48  ldr w8,[x0, #0xe4]
02c68a4c  cbnz w8,0x02c68a58
02c68a50  bl 0x029f5bd0
02c68a54  ldr x0,[x20]
02c68a58  adrp x8,0x5e59000
02c68a5c  ldr x8,[x8, #0x1c0]
02c68a60  ldr x9,[x0, #0xb8]
02c68a64  ldr x8,[x8]
02c68a68  ldr x19,[x9]
02c68a6c  ldr w10,[x8, #0xe4]
02c68a70  cbnz w10,0x02c68a7c
02c68a74  mov x0,x8
02c68a78  bl 0x029f5bd0
02c68a7c  mov x0,x19
02c68a80  mov x1,xzr
02c68a84  mov x2,xzr
02c68a88  bl 0x057dfa70
02c68a8c  tbz w0,#0x0,0x02c6898c
02c68a90  ldr x0,[x20]
02c68a94  ldr w8,[x0, #0xe4]
02c68a98  cbnz w8,0x02c68aa4
02c68a9c  bl 0x029f5bd0
02c68aa0  ldr x0,[x20]
02c68aa4  ldr x8,[x0, #0xb8]
02c68aa8  ldr x0,[x8]
02c68aac  cbz x0,0x02c68ac0
02c68ab0  ldp x20,x19,[sp, #0x10]
02c68ab4  mov x1,xzr
02c68ab8  ldp x30,x21,[sp], #0x20
02c68abc  b 0x02ca2c5c
02c68ac0  bl 0x029f5cfc
02c68ac4  bl 0x029f5d04
