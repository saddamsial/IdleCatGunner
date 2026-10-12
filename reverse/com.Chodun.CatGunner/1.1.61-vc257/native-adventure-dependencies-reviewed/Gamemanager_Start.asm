02b7b6dc  str x30,[sp, #-0x30]!
02b7b6e0  stp x22,x21,[sp, #0x10]
02b7b6e4  stp x20,x19,[sp, #0x20]
02b7b6e8  adrp x21,0x625b000
02b7b6ec  adrp x22,0x5e59000
02b7b6f0  adrp x20,0x5e5d000
02b7b6f4  ldrb w8,[x21, #0x89a]
02b7b6f8  ldr x22,[x22, #0x288]
02b7b6fc  ldr x20,[x20, #0x340]
02b7b700  mov x19,x0
02b7b704  tbnz w8,#0x0,0x02b7b734
02b7b708  adrp x0,0x5e59000
02b7b70c  ldr x0,[x0, #0x288]
02b7b710  bl 0x029f5a50
02b7b714  adrp x0,0x5e5d000
02b7b718  ldr x0,[x0, #0x340]
02b7b71c  bl 0x029f5a50
02b7b720  adrp x0,0x5e5d000
02b7b724  ldr x0,[x0, #0x348]
02b7b728  bl 0x029f5a50
02b7b72c  mov w8,#0x1
02b7b730  strb w8,[x21, #0x89a]
02b7b734  ldr x0,[x22]
02b7b738  bl 0x029f5cec
02b7b73c  ldr x2,[x20]
02b7b740  mov x1,x19
02b7b744  mov x3,xzr
02b7b748  mov x20,x0
02b7b74c  bl 0x047b3618
02b7b750  mov x0,x20
02b7b754  mov x1,xzr
02b7b758  bl 0x02b343f8
02b7b75c  mov x0,xzr
02b7b760  bl 0x02c17190
02b7b764  cbz x0,0x02b7b774
02b7b768  mov x1,xzr
02b7b76c  bl 0x02c12318
02b7b770  b 0x02b7b77c
02b7b774  mov x1,xzr
02b7b778  bl 0x02c12318
02b7b77c  adrp x20,0x5e5d000
02b7b780  mov x0,xzr
02b7b784  ldr x20,[x20, #0x348]
02b7b788  bl 0x057e85b4
02b7b78c  str s0,[x19, #0x30]
02b7b790  bl 0x02b7ba18
02b7b794  mov x1,x0
02b7b798  mov x0,x19
02b7b79c  mov x2,xzr
02b7b7a0  bl 0x057e2120
02b7b7a4  bl 0x02b7ba70
02b7b7a8  mov x1,x0
02b7b7ac  mov x0,x19
02b7b7b0  mov x2,xzr
02b7b7b4  bl 0x057e2120
02b7b7b8  mov x0,x19
02b7b7bc  bl 0x02b7bac8
02b7b7c0  mov x0,x19
02b7b7c4  bl 0x02b7bd14
02b7b7c8  mov x1,x0
02b7b7cc  mov x0,x19
02b7b7d0  mov x2,xzr
02b7b7d4  bl 0x057e2120
02b7b7d8  mov x0,x19
02b7b7dc  bl 0x02b7bd80
02b7b7e0  mov x1,x0
02b7b7e4  mov x0,x19
02b7b7e8  mov x2,xzr
02b7b7ec  bl 0x057e2120
02b7b7f0  ldr x8,[x20]
02b7b7f4  ldr x8,[x8, #0xb8]
02b7b7f8  ldr x0,[x8]
02b7b7fc  cbz x0,0x02b7b9b4
02b7b800  ldp x20,x19,[sp, #0x20]
02b7b804  mov x1,xzr
02b7b808  ldp x22,x21,[sp, #0x10]
02b7b80c  ldr x30,[sp], #0x30
02b7b810  b 0x02c0536c
02b7b9b4  ldp x20,x19,[sp, #0x20]
02b7b9b8  ldp x22,x21,[sp, #0x10]
02b7b9bc  ldr x30,[sp], #0x30
02b7b9c0  ret
