02c8d98c  stp x30,x23,[sp, #-0x30]!
02c8d990  stp x22,x21,[sp, #0x10]
02c8d994  stp x20,x19,[sp, #0x20]
02c8d998  adrp x22,0x625c000
02c8d99c  adrp x23,0x5e59000
02c8d9a0  adrp x20,0x5e63000
02c8d9a4  adrp x21,0x5e5d000
02c8d9a8  ldr x23,[x23, #0x288]
02c8d9ac  ldrb w8,[x22, #0x3c0]
02c8d9b0  ldr x20,[x20, #0xf68]
02c8d9b4  ldr x21,[x21, #0x920]
02c8d9b8  mov x19,x0
02c8d9bc  tbnz w8,#0x0,0x02c8d9ec
02c8d9c0  adrp x0,0x5e59000
02c8d9c4  ldr x0,[x0, #0x288]
02c8d9c8  bl 0x029f5a50
02c8d9cc  adrp x0,0x5e63000
02c8d9d0  ldr x0,[x0, #0xf68]
02c8d9d4  bl 0x029f5a50
02c8d9d8  adrp x0,0x5e5d000
02c8d9dc  ldr x0,[x0, #0x920]
02c8d9e0  bl 0x029f5a50
02c8d9e4  mov w8,#0x1
02c8d9e8  strb w8,[x22, #0x3c0]
02c8d9ec  ldr x0,[x23]
02c8d9f0  bl 0x029f5cec
02c8d9f4  ldr x2,[x20]
02c8d9f8  mov x1,x19
02c8d9fc  mov x3,xzr
02c8da00  mov x20,x0
02c8da04  bl 0x047b3618
02c8da08  ldr x0,[x21]
02c8da0c  ldr w8,[x0, #0xe4]
02c8da10  cbnz w8,0x02c8da18
02c8da14  bl 0x029f5bd0
02c8da18  mov x0,x20
02c8da1c  ldp x20,x19,[sp, #0x20]
02c8da20  ldp x22,x21,[sp, #0x10]
02c8da24  ldp x30,x23,[sp], #0x30
02c8da28  b 0x02c8da2c
