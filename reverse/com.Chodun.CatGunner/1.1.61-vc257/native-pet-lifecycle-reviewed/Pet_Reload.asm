02c7a740  str x30,[sp, #-0x30]!
02c7a744  stp x22,x21,[sp, #0x10]
02c7a748  stp x20,x19,[sp, #0x20]
02c7a74c  adrp x21,0x625c000
02c7a750  mov w20,w1
02c7a754  mov x19,x0
02c7a758  ldrb w8,[x21, #0x312]
02c7a75c  tbnz w8,#0x0,0x02c7a780
02c7a760  adrp x0,0x5e63000
02c7a764  ldr x0,[x0, #0xd18]
02c7a768  bl 0x029f5a50
02c7a76c  adrp x0,0x5e61000
02c7a770  ldr x0,[x0, #0x890]
02c7a774  bl 0x029f5a50
02c7a778  mov w8,#0x1
02c7a77c  strb w8,[x21, #0x312]
02c7a780  ldr x8,[x19, #0x30]
02c7a784  str w20,[x19, #0x20]
02c7a788  cbz x8,0x02c7a81c
02c7a78c  ldr w9,[x8, #0x18]
02c7a790  cmp w9,w20
02c7a794  b.ls 0x02c7a858
02c7a798  add x8,x8,w20, SXTW  #0x3
02c7a79c  ldr x0,[x8, #0x20]
02c7a7a0  cbz x0,0x02c7a81c
02c7a7a4  adrp x8,0x5e63000
02c7a7a8  ldr x8,[x8, #0xd18]
02c7a7ac  ldr x1,[x8]
02c7a7b0  bl 0x030a02b4
02c7a7b4  mov x21,x19
02c7a7b8  mov x1,x0
02c7a7bc  str x0,[x21, #0x38]!
02c7a7c0  mov x0,x21
02c7a7c4  bl 0x029f59f4
02c7a7c8  ldur x8,[x21, #-0x8]
02c7a7cc  cbz x8,0x02c7a81c
02c7a7d0  adrp x21,0x5e61000
02c7a7d4  mov x22,xzr
02c7a7d8  mov w20,w20
02c7a7dc  ldr x21,[x21, #0x890]
02c7a7e0  ldr w9,[x8, #0x18]
02c7a7e4  cmp w22,w9
02c7a7e8  b.ge 0x02c7a820
02c7a7ec  cmp w22,w9
02c7a7f0  b.cs 0x02c7a858
02c7a7f4  add x8,x8,x22, LSL #0x3
02c7a7f8  ldr x0,[x8, #0x20]
02c7a7fc  cbz x0,0x02c7a81c
02c7a800  cmp w20,w22
02c7a804  mov x2,xzr
02c7a808  cset w1,eq
02c7a80c  bl 0x057dff3c
02c7a810  ldr x8,[x19, #0x30]
02c7a814  add x22,x22,#0x1
02c7a818  cbnz x8,0x02c7a7e0
02c7a81c  bl 0x029f5cfc
02c7a820  adrp x8,0x5e58000
02c7a824  mov x0,x19
02c7a828  ldr x8,[x8, #0xa10]
02c7a82c  ldr x8,[x8, #0x90]
02c7a830  ldr x8,[x8, #0xb8]
02c7a834  ldr x1,[x8]
02c7a838  str x1,[x0, #0x68]!
02c7a83c  bl 0x029f59f4
02c7a840  ldr x1,[x21]
02c7a844  mov x0,x19
02c7a848  ldp x20,x19,[sp, #0x20]
02c7a84c  ldp x22,x21,[sp, #0x10]
02c7a850  ldr x30,[sp], #0x30
02c7a854  b 0x02c7a85c
02c7a858  bl 0x029f5d04
