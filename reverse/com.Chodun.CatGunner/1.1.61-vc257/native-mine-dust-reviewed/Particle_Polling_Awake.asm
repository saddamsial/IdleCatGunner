02c0b798  str x30,[sp, #-0x20]!
02c0b79c  stp x20,x19,[sp, #0x10]
02c0b7a0  adrp x20,0x625b000
02c0b7a4  mov x19,x0
02c0b7a8  ldrb w8,[x20, #0xe9a]
02c0b7ac  tbnz w8,#0x0,0x02c0b7c4
02c0b7b0  adrp x0,0x5e62000
02c0b7b4  ldr x0,[x0, #0x148]
02c0b7b8  bl 0x029f5a50
02c0b7bc  mov w8,#0x1
02c0b7c0  strb w8,[x20, #0xe9a]
02c0b7c4  adrp x20,0x5e62000
02c0b7c8  ldr w8,[x19, #0x20]
02c0b7cc  ldr x20,[x20, #0x148]
02c0b7d0  cbnz w8,0x02c0b7f4
02c0b7d4  ldr x8,[x20]
02c0b7d8  mov x1,x19
02c0b7dc  ldr x8,[x8, #0xb8]
02c0b7e0  str x19,[x8]
02c0b7e4  ldr x8,[x20]
02c0b7e8  ldr x0,[x8, #0xb8]
02c0b7ec  bl 0x029f59f4
02c0b7f0  ldr w8,[x19, #0x20]
02c0b7f4  cmp w8,#0x1
02c0b7f8  b.ne 0x02c0b814
02c0b7fc  ldr x8,[x20]
02c0b800  mov x1,x19
02c0b804  ldr x0,[x8, #0xb8]
02c0b808  str x19,[x0, #0x8]!
02c0b80c  bl 0x029f59f4
02c0b810  ldr w8,[x19, #0x20]
02c0b814  cmp w8,#0x2
02c0b818  b.ne 0x02c0b838
02c0b81c  ldr x8,[x20]
02c0b820  mov x1,x19
02c0b824  ldr x0,[x8, #0xb8]
02c0b828  str x19,[x0, #0x10]!
02c0b82c  ldp x20,x19,[sp, #0x10]
02c0b830  ldr x30,[sp], #0x20
02c0b834  b 0x029f59f4
02c0b838  ldp x20,x19,[sp, #0x10]
02c0b83c  ldr x30,[sp], #0x20
02c0b840  ret
