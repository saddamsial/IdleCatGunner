02c6a7b4  str d8,[sp, #-0x30]!
02c6a7b8  stp x30,x21,[sp, #0x10]
02c6a7bc  stp x20,x19,[sp, #0x20]
02c6a7c0  fmov s8,s0
02c6a7c4  adrp x20,0x625c000
02c6a7c8  mov w21,w1
02c6a7cc  ldrb w8,[x20, #0x280]
02c6a7d0  mov x19,x0
02c6a7d4  tbnz w8,#0x0,0x02c6a7f8
02c6a7d8  adrp x0,0x5e59000
02c6a7dc  ldr x0,[x0, #0x7d0]
02c6a7e0  bl 0x029f5a50
02c6a7e4  adrp x0,0x5e59000
02c6a7e8  ldr x0,[x0, #0x1c0]
02c6a7ec  bl 0x029f5a50
02c6a7f0  mov w8,#0x1
02c6a7f4  strb w8,[x20, #0x280]
02c6a7f8  ldr w8,[x19, #0xc0]
02c6a7fc  str xzr,[sp, #0x8]
02c6a800  cmn w8,#0x1
02c6a804  b.eq 0x02c6a820
02c6a808  mov w20,#0xffffffff
02c6a80c  mov w0,w20
02c6a810  ldp x20,x19,[sp, #0x20]
02c6a814  ldp x30,x21,[sp, #0x10]
02c6a818  ldr d8,[sp], #0x30
02c6a81c  ret
02c6a820  mov x0,x19
02c6a824  bl 0x02c67de0
02c6a828  mov w20,w0
02c6a82c  cmn w0,#0x1
02c6a830  b.eq 0x02c6a80c
02c6a834  ldr x8,[x19, #0x40]
02c6a838  cbz x8,0x02c6a908
02c6a83c  ldr w9,[x8, #0x18]
02c6a840  cmp w20,w9
02c6a844  b.cs 0x02c6a90c
02c6a848  add x8,x8,w20, SXTW  #0x2
02c6a84c  mov x0,x19
02c6a850  mov w1,w20
02c6a854  mov w2,wzr
02c6a858  str w21,[x8, #0x20]
02c6a85c  bl 0x02c6802c
02c6a860  adrp x8,0x5e59000
02c6a864  ldr x8,[x8, #0x7d0]
02c6a868  stp w20,w21,[x19, #0xc0]
02c6a86c  ldr x0,[x8]
02c6a870  ldr w8,[x0, #0xe4]
02c6a874  cbnz w8,0x02c6a87c
02c6a878  bl 0x029f5bd0
02c6a87c  mov x0,xzr
02c6a880  bl 0x048312a4
02c6a884  fcvt d0,s8
02c6a888  str x0,[sp, #0x8]
02c6a88c  add x0,sp,#0x8
02c6a890  mov x1,xzr
02c6a894  bl 0x0483004c
02c6a898  str x0,[sp, #0x8]
02c6a89c  add x0,sp,#0x8
02c6a8a0  mov x1,xzr
02c6a8a4  bl 0x0482f35c
02c6a8a8  adrp x9,0x5e59000
02c6a8ac  mov x8,x0
02c6a8b0  ldr x9,[x9, #0x1c0]
02c6a8b4  ldr x21,[x19, #0x58]
02c6a8b8  str x8,[x19, #0xc8]
02c6a8bc  ldr x0,[x9]
02c6a8c0  ldr w9,[x0, #0xe4]
02c6a8c4  cbnz w9,0x02c6a8cc
02c6a8c8  bl 0x029f5bd0
02c6a8cc  mov x0,x21
02c6a8d0  mov x1,xzr
02c6a8d4  mov x2,xzr
02c6a8d8  bl 0x057dfa70
02c6a8dc  tbz w0,#0x0,0x02c6a80c
02c6a8e0  ldr x0,[x19, #0x58]
02c6a8e4  cbz x0,0x02c6a908
02c6a8e8  mov x1,xzr
02c6a8ec  bl 0x02c73c20
02c6a8f0  ldr x0,[x19, #0x58]
02c6a8f4  cbz x0,0x02c6a908
02c6a8f8  mov w1,w20
02c6a8fc  mov x2,xzr
02c6a900  bl 0x02c761fc
02c6a904  b 0x02c6a80c
02c6a908  bl 0x029f5cfc
02c6a90c  bl 0x029f5d04
