02c4c350  str x30,[sp, #-0x20]!
02c4c354  stp x20,x19,[sp, #0x10]
02c4c358  adrp x20,0x625c000
02c4c35c  mov x19,x1
02c4c360  ldrb w8,[x20, #0x12c]
02c4c364  tbnz w8,#0x0,0x02c4c388
02c4c368  adrp x0,0x5e5d000
02c4c36c  ldr x0,[x0, #0x560]
02c4c370  bl 0x029f5a50
02c4c374  adrp x0,0x5e63000
02c4c378  ldr x0,[x0, #0x480]
02c4c37c  bl 0x029f5a50
02c4c380  mov w8,#0x1
02c4c384  strb w8,[x20, #0x12c]
02c4c388  cbz x19,0x02c4c3cc
02c4c38c  adrp x8,0x5e5d000
02c4c390  mov x0,x19
02c4c394  ldr x8,[x8, #0x560]
02c4c398  ldr x1,[x8]
02c4c39c  bl 0x02fe5f2c
02c4c3a0  cbz x0,0x02c4c3cc
02c4c3a4  ldr x0,[x0, #0x20]
02c4c3a8  cbz x0,0x02c4c3cc
02c4c3ac  adrp x8,0x5e63000
02c4c3b0  ldr x8,[x8, #0x480]
02c4c3b4  ldr x1,[x8]
02c4c3b8  bl 0x02fe5f2c
02c4c3bc  cbz x0,0x02c4c3cc
02c4c3c0  ldp x20,x19,[sp, #0x10]
02c4c3c4  ldr x30,[sp], #0x20
02c4c3c8  b 0x02c4c3d0
02c4c3cc  bl 0x029f5cfc
