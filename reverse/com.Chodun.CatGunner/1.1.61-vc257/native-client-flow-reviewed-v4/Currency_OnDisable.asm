02c26788  stp x30,x23,[sp, #-0x30]!
02c2678c  stp x22,x21,[sp, #0x10]
02c26790  stp x20,x19,[sp, #0x20]
02c26794  adrp x20,0x625b000
02c26798  adrp x22,0x5e59000
02c2679c  adrp x21,0x5e62000
02c267a0  adrp x23,0x5e5d000
02c267a4  ldr x22,[x22, #0x288]
02c267a8  ldrb w8,[x20, #0xfac]
02c267ac  ldr x21,[x21, #0xd18]
02c267b0  ldr x23,[x23, #0x338]
02c267b4  mov x19,x0
02c267b8  tbnz w8,#0x0,0x02c267e8
02c267bc  adrp x0,0x5e59000
02c267c0  ldr x0,[x0, #0x288]
02c267c4  bl 0x029f5a50
02c267c8  adrp x0,0x5e62000
02c267cc  ldr x0,[x0, #0xd18]
02c267d0  bl 0x029f5a50
02c267d4  adrp x0,0x5e5d000
02c267d8  ldr x0,[x0, #0x338]
02c267dc  bl 0x029f5a50
02c267e0  mov w8,#0x1
02c267e4  strb w8,[x20, #0xfac]
02c267e8  ldr x0,[x22]
02c267ec  bl 0x029f5cec
02c267f0  ldr x2,[x21]
02c267f4  mov x1,x19
02c267f8  mov x3,xzr
02c267fc  mov x20,x0
02c26800  bl 0x047b3618
02c26804  ldr x0,[x23]
02c26808  ldr w8,[x0, #0xe4]
02c2680c  cbnz w8,0x02c26814
02c26810  bl 0x029f5bd0
02c26814  mov x0,x20
02c26818  mov x1,xzr
02c2681c  bl 0x02b7add8
02c26820  ldr x0,[x22]
02c26824  bl 0x029f5cec
02c26828  ldr x2,[x21]
02c2682c  mov x1,x19
02c26830  mov x3,xzr
02c26834  mov x20,x0
02c26838  bl 0x047b3618
02c2683c  mov x0,x20
02c26840  ldp x20,x19,[sp, #0x20]
02c26844  ldp x22,x21,[sp, #0x10]
02c26848  mov x1,xzr
02c2684c  ldp x30,x23,[sp], #0x30
02c26850  b 0x02b7af90
