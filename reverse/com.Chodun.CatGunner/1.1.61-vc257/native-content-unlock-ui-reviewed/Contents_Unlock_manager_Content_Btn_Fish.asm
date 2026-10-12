02b9e7b0  str x30,[sp, #-0x20]!
02b9e7b4  stp x20,x19,[sp, #0x10]
02b9e7b8  adrp x19,0x625b000
02b9e7bc  adrp x20,0x5e5e000
02b9e7c0  ldrb w8,[x19, #0x9ec]
02b9e7c4  ldr x20,[x20, #0x4d0]
02b9e7c8  tbnz w8,#0x0,0x02b9e7ec
02b9e7cc  adrp x0,0x5e5e000
02b9e7d0  ldr x0,[x0, #0x4d0]
02b9e7d4  bl 0x029f5a50
02b9e7d8  adrp x0,0x5e5d000
02b9e7dc  ldr x0,[x0, #0xd38]
02b9e7e0  bl 0x029f5a50
02b9e7e4  mov w8,#0x1
02b9e7e8  strb w8,[x19, #0x9ec]
02b9e7ec  ldr x0,[x20]
02b9e7f0  ldr w8,[x0, #0xe4]
02b9e7f4  cbnz w8,0x02b9e7fc
02b9e7f8  bl 0x029f5bd0
02b9e7fc  mov w0,#0x2
02b9e800  bl 0x02b9e588
02b9e804  tbz w0,#0x0,0x02b9e854
02b9e808  adrp x19,0x5e5d000
02b9e80c  ldr x19,[x19, #0xd38]
02b9e810  ldr x8,[x19]
02b9e814  ldr x8,[x8, #0xb8]
02b9e818  ldr x8,[x8]
02b9e81c  cbz x8,0x02b9e860
02b9e820  ldr x0,[x8, #0x48]
02b9e824  cbz x0,0x02b9e860
02b9e828  mov w1,#0x1
02b9e82c  mov x2,xzr
02b9e830  bl 0x057dff3c
02b9e834  ldr x8,[x19]
02b9e838  ldr x8,[x8, #0xb8]
02b9e83c  ldr x0,[x8]
02b9e840  cbz x0,0x02b9e860
02b9e844  ldp x20,x19,[sp, #0x10]
02b9e848  mov x1,xzr
02b9e84c  ldr x30,[sp], #0x20
02b9e850  b 0x02c5d5a0
02b9e854  ldp x20,x19,[sp, #0x10]
02b9e858  ldr x30,[sp], #0x20
02b9e85c  ret
02b9e860  bl 0x029f5cfc
