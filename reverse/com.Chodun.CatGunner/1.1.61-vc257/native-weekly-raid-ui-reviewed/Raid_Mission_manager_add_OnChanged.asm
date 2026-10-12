02c5254c  str x30,[sp, #-0x30]!
02c52550  stp x22,x21,[sp, #0x10]
02c52554  stp x20,x19,[sp, #0x20]
02c52558  adrp x20,0x625c000
02c5255c  adrp x21,0x5e5e000
02c52560  mov x19,x0
02c52564  ldrb w8,[x20, #0x16c]
02c52568  ldr x21,[x21, #0x68]
02c5256c  tbnz w8,#0x0,0x02c52590
02c52570  adrp x0,0x5e59000
02c52574  ldr x0,[x0, #0x288]
02c52578  bl 0x029f5a50
02c5257c  adrp x0,0x5e5e000
02c52580  ldr x0,[x0, #0x68]
02c52584  bl 0x029f5a50
02c52588  mov w8,#0x1
02c5258c  strb w8,[x20, #0x16c]
02c52590  ldr x8,[x21]
02c52594  adrp x22,0x5e59000
02c52598  ldr x8,[x8, #0xb8]
02c5259c  ldr x22,[x22, #0x288]
02c525a0  ldr x20,[x8, #0x8]
02c525a4  mov x0,x20
02c525a8  mov x1,x19
02c525ac  mov x2,xzr
02c525b0  bl 0x04896684
02c525b4  mov x8,x0
02c525b8  cbz x0,0x02c525cc
02c525bc  ldr x1,[x22]
02c525c0  ldr x9,[x8]
02c525c4  cmp x9,x1
02c525c8  b.ne 0x02c52600
02c525cc  ldr x9,[x21]
02c525d0  mov x1,x8
02c525d4  mov x2,x20
02c525d8  ldr x9,[x9, #0xb8]
02c525dc  add x0,x9,#0x8
02c525e0  bl 0x02a2e558
02c525e4  cmp x0,x20
02c525e8  mov x20,x0
02c525ec  b.ne 0x02c525a4
02c525f0  ldp x20,x19,[sp, #0x20]
02c525f4  ldp x22,x21,[sp, #0x10]
02c525f8  ldr x30,[sp], #0x30
02c525fc  ret
02c52600  mov x0,x8
02c52604  bl 0x029f607c
