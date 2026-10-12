02c6c7f4  stp x30,x21,[sp, #-0x20]!
02c6c7f8  stp x20,x19,[sp, #0x10]
02c6c7fc  adrp x20,0x625c000
02c6c800  adrp x21,0x5e5d000
02c6c804  mov x19,x0
02c6c808  ldrb w8,[x20, #0x29a]
02c6c80c  ldr x21,[x21, #0x790]
02c6c810  tbnz w8,#0x0,0x02c6c828
02c6c814  adrp x0,0x5e5d000
02c6c818  ldr x0,[x0, #0x790]
02c6c81c  bl 0x029f5a50
02c6c820  mov w8,#0x1
02c6c824  strb w8,[x20, #0x29a]
02c6c828  ldr x0,[x21]
02c6c82c  mov w1,#0x10
02c6c830  bl 0x029f5b40
02c6c834  mov x1,x0
02c6c838  mov x0,x19
02c6c83c  str x1,[x0, #0x20]!
02c6c840  bl 0x029f59f4
02c6c844  mov x0,x19
02c6c848  ldp x20,x19,[sp, #0x10]
02c6c84c  mov x1,xzr
02c6c850  ldp x30,x21,[sp], #0x20
02c6c854  b 0x057e2ee0
