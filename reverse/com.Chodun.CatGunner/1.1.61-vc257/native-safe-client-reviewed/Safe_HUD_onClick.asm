02c6b804  stp x30,x21,[sp, #-0x20]!
02c6b808  stp x20,x19,[sp, #0x10]
02c6b80c  adrp x21,0x625c000
02c6b810  adrp x20,0x5e62000
02c6b814  adrp x19,0x5e59000
02c6b818  ldrb w8,[x21, #0x28e]
02c6b81c  ldr x20,[x20, #0x648]
02c6b820  ldr x19,[x19, #0x1c0]
02c6b824  tbnz w8,#0x0,0x02c6b848
02c6b828  adrp x0,0x5e59000
02c6b82c  ldr x0,[x0, #0x1c0]
02c6b830  bl 0x029f5a50
02c6b834  adrp x0,0x5e62000
02c6b838  ldr x0,[x0, #0x648]
02c6b83c  bl 0x029f5a50
02c6b840  mov w8,#0x1
02c6b844  strb w8,[x21, #0x28e]
02c6b848  ldr x8,[x20]
02c6b84c  ldr x0,[x19]
02c6b850  ldr x8,[x8, #0xb8]
02c6b854  ldr w9,[x0, #0xe4]
02c6b858  ldr x19,[x8]
02c6b85c  cbnz w9,0x02c6b864
02c6b860  bl 0x029f5bd0
02c6b864  mov x0,x19
02c6b868  mov x1,xzr
02c6b86c  mov x2,xzr
02c6b870  bl 0x057e14b4
02c6b874  tbz w0,#0x0,0x02c6b884
02c6b878  ldp x20,x19,[sp, #0x10]
02c6b87c  ldp x30,x21,[sp], #0x20
02c6b880  ret
02c6b884  ldr x8,[x20]
02c6b888  ldr x8,[x8, #0xb8]
02c6b88c  ldr x0,[x8]
02c6b890  cbz x0,0x02c6b8a0
02c6b894  ldp x20,x19,[sp, #0x10]
02c6b898  ldp x30,x21,[sp], #0x20
02c6b89c  b 0x02c6b8a4
02c6b8a0  bl 0x029f5cfc
