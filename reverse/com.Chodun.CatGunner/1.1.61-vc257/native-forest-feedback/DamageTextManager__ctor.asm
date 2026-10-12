02b83344  str x30,[sp, #-0x30]!
02b83348  stp x22,x21,[sp, #0x10]
02b8334c  stp x20,x19,[sp, #0x20]
02b83350  adrp x21,0x625b000
02b83354  adrp x22,0x5e5d000
02b83358  adrp x20,0x5e5d000
02b8335c  ldrb w8,[x21, #0x8e2]
02b83360  ldr x22,[x22, #0x720]
02b83364  ldr x20,[x20, #0x728]
02b83368  mov x19,x0
02b8336c  tbnz w8,#0x0,0x02b83390
02b83370  adrp x0,0x5e5d000
02b83374  ldr x0,[x0, #0x728]
02b83378  bl 0x029f5a50
02b8337c  adrp x0,0x5e5d000
02b83380  ldr x0,[x0, #0x720]
02b83384  bl 0x029f5a50
02b83388  mov w8,#0x1
02b8338c  strb w8,[x21, #0x8e2]
02b83390  ldr x0,[x22]
02b83394  bl 0x029f5cec
02b83398  ldr x1,[x20]
02b8339c  mov x20,x0
02b833a0  bl 0x03e3f490
02b833a4  mov x21,x19
02b833a8  mov x1,x20
02b833ac  str x20,[x21, #0x30]!
02b833b0  mov x0,x21
02b833b4  bl 0x029f59f4
02b833b8  adrp x20,0x625b000
02b833bc  mov w9,#0xffffffff
02b833c0  ldrb w8,[x20, #0x95b]
02b833c4  str w9,[x21, #0xc]
02b833c8  cbnz w8,0x02b833e0
02b833cc  adrp x0,0x5e58000
02b833d0  ldr x0,[x0, #0xbf8]
02b833d4  bl 0x029f5a50
02b833d8  mov w8,#0x1
02b833dc  strb w8,[x20, #0x95b]
02b833e0  adrp x20,0x5e58000
02b833e4  adrp x21,0x625b000
02b833e8  ldr x20,[x20, #0xbf8]
02b833ec  ldrb w10,[x21, #0x61d]
02b833f0  ldr x8,[x20]
02b833f4  ldr x9,[x8, #0xb8]
02b833f8  ldur d0,[x9, #0x3c]
02b833fc  ldr s1,[x9, #0x44]
02b83400  str d0,[x19, #0x40]
02b83404  str s1,[x19, #0x48]
02b83408  cbnz w10,0x02b83420
02b8340c  mov x0,x20
02b83410  bl 0x029f5a50
02b83414  ldr x8,[x20]
02b83418  mov w9,#0x1
02b8341c  strb w9,[x21, #0x61d]
02b83420  ldr x8,[x8, #0xb8]
02b83424  mov x0,x19
02b83428  mov x1,xzr
02b8342c  ldp x22,x21,[sp, #0x10]
02b83430  ldr d0,[x8, #0x18]
02b83434  ldr s1,[x8, #0x20]
02b83438  stur d0,[x19, #0x4c]
02b8343c  str s1,[x19, #0x54]
02b83440  ldp x20,x19,[sp, #0x20]
02b83444  ldr x30,[sp], #0x30
02b83448  b 0x04893238
