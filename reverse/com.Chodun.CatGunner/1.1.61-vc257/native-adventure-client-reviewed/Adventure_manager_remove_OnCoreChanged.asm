02c2c7e4  stp x30,x23,[sp, #-0x30]!
02c2c7e8  stp x22,x21,[sp, #0x10]
02c2c7ec  stp x20,x19,[sp, #0x20]
02c2c7f0  adrp x20,0x625b000
02c2c7f4  adrp x22,0x5e5d000
02c2c7f8  mov x19,x0
02c2c7fc  ldrb w8,[x20, #0xff6]
02c2c800  ldr x22,[x22, #0xd28]
02c2c804  tbnz w8,#0x0,0x02c2c828
02c2c808  adrp x0,0x5e59000
02c2c80c  ldr x0,[x0, #0x288]
02c2c810  bl 0x029f5a50
02c2c814  adrp x0,0x5e5d000
02c2c818  ldr x0,[x0, #0xd28]
02c2c81c  bl 0x029f5a50
02c2c820  mov w8,#0x1
02c2c824  strb w8,[x20, #0xff6]
02c2c828  ldr x0,[x22]
02c2c82c  ldr w8,[x0, #0xe4]
02c2c830  cbnz w8,0x02c2c83c
02c2c834  bl 0x029f5bd0
02c2c838  ldr x0,[x22]
02c2c83c  ldr x8,[x0, #0xb8]
02c2c840  adrp x23,0x5e59000
02c2c844  ldr x23,[x23, #0x288]
02c2c848  ldr x20,[x8]
02c2c84c  mov x0,x20
02c2c850  mov x1,x19
02c2c854  mov x2,xzr
02c2c858  bl 0x04896870
02c2c85c  mov x21,x0
02c2c860  cbz x0,0x02c2c874
02c2c864  ldr x1,[x23]
02c2c868  ldr x8,[x21]
02c2c86c  cmp x8,x1
02c2c870  b.ne 0x02c2c8b4
02c2c874  ldr x0,[x22]
02c2c878  ldr w8,[x0, #0xe4]
02c2c87c  cbnz w8,0x02c2c888
02c2c880  bl 0x029f5bd0
02c2c884  ldr x0,[x22]
02c2c888  ldr x0,[x0, #0xb8]
02c2c88c  mov x1,x21
02c2c890  mov x2,x20
02c2c894  bl 0x02a2e558
02c2c898  cmp x0,x20
02c2c89c  mov x20,x0
02c2c8a0  b.ne 0x02c2c84c
02c2c8a4  ldp x20,x19,[sp, #0x20]
02c2c8a8  ldp x22,x21,[sp, #0x10]
02c2c8ac  ldp x30,x23,[sp], #0x30
02c2c8b0  ret
02c2c8b4  mov x0,x21
02c2c8b8  bl 0x029f607c
