02c8d808  stp x30,x23,[sp, #-0x30]!
02c8d80c  stp x22,x21,[sp, #0x10]
02c8d810  stp x20,x19,[sp, #0x20]
02c8d814  adrp x23,0x625c000
02c8d818  adrp x22,0x5e59000
02c8d81c  adrp x20,0x5e63000
02c8d820  adrp x21,0x5e5d000
02c8d824  ldr x22,[x22, #0x288]
02c8d828  ldrb w8,[x23, #0x3bf]
02c8d82c  ldr x20,[x20, #0xf68]
02c8d830  ldr x21,[x21, #0x920]
02c8d834  mov x19,x0
02c8d838  tbnz w8,#0x0,0x02c8d868
02c8d83c  adrp x0,0x5e59000
02c8d840  ldr x0,[x0, #0x288]
02c8d844  bl 0x029f5a50
02c8d848  adrp x0,0x5e63000
02c8d84c  ldr x0,[x0, #0xf68]
02c8d850  bl 0x029f5a50
02c8d854  adrp x0,0x5e5d000
02c8d858  ldr x0,[x0, #0x920]
02c8d85c  bl 0x029f5a50
02c8d860  mov w8,#0x1
02c8d864  strb w8,[x23, #0x3bf]
02c8d868  mov x0,x19
02c8d86c  bl 0x02c8cfd8
02c8d870  ldr x0,[x22]
02c8d874  bl 0x029f5cec
02c8d878  ldr x2,[x20]
02c8d87c  mov x1,x19
02c8d880  mov x3,xzr
02c8d884  mov x20,x0
02c8d888  bl 0x047b3618
02c8d88c  ldr x0,[x21]
02c8d890  ldr w8,[x0, #0xe4]
02c8d894  cbnz w8,0x02c8d89c
02c8d898  bl 0x029f5bd0
02c8d89c  mov x0,x20
02c8d8a0  ldp x20,x19,[sp, #0x20]
02c8d8a4  ldp x22,x21,[sp, #0x10]
02c8d8a8  ldp x30,x23,[sp], #0x30
02c8d8ac  b 0x02c8d8b0
