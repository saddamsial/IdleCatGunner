02c62104  stp d9,d8,[sp, #-0x40]!
02c62108  str x30,[sp, #0x10]
02c6210c  stp x22,x21,[sp, #0x20]
02c62110  stp x20,x19,[sp, #0x30]
02c62114  adrp x22,0x625c000
02c62118  adrp x21,0x5e59000
02c6211c  mov x19,x1
02c62120  ldrb w8,[x22, #0x22e]
02c62124  ldr x21,[x21, #0x1c0]
02c62128  mov x20,x0
02c6212c  tbnz w8,#0x0,0x02c62150
02c62130  adrp x0,0x5e59000
02c62134  ldr x0,[x0, #0x1c0]
02c62138  bl 0x029f5a50
02c6213c  adrp x0,0x5e5c000
02c62140  ldr x0,[x0, #0xf00]
02c62144  bl 0x029f5a50
02c62148  mov w8,#0x1
02c6214c  strb w8,[x22, #0x22e]
02c62150  ldr x0,[x21]
02c62154  ldr x21,[x20, #0x70]
02c62158  str xzr,[sp, #0x18]
02c6215c  ldr w8,[x0, #0xe4]
02c62160  cbnz w8,0x02c62168
02c62164  bl 0x029f5bd0
02c62168  mov x0,x21
02c6216c  mov x1,xzr
02c62170  mov x2,xzr
02c62174  bl 0x057e14b4
02c62178  tbz w0,#0x0,0x02c621b0
02c6217c  adrp x19,0x625b000
02c62180  ldrb w8,[x19, #0x271]
02c62184  cbnz w8,0x02c6219c
02c62188  adrp x0,0x5e59000
02c6218c  ldr x0,[x0, #0x608]
02c62190  bl 0x029f5a50
02c62194  mov w8,#0x1
02c62198  strb w8,[x19, #0x271]
02c6219c  adrp x8,0x5e59000
02c621a0  ldr x8,[x8, #0x608]
02c621a4  ldr x8,[x8]
02c621a8  ldr x19,[x8, #0xb8]
02c621ac  b 0x02c62218
02c621b0  ldr x0,[x20, #0x70]
02c621b4  cbz x0,0x02c62230
02c621b8  bl 0x02c628ec
02c621bc  cbz x19,0x02c62230
02c621c0  mov x20,x0
02c621c4  ldr s8,[x19, #0x104]
02c621c8  ldr s9,[x19, #0x108]
02c621cc  mov x0,x19
02c621d0  mov x1,xzr
02c621d4  bl 0x05acda38
02c621d8  adrp x8,0x5e5c000
02c621dc  mov x19,x0
02c621e0  ldr x8,[x8, #0xf00]
02c621e4  ldr x8,[x8]
02c621e8  ldr w9,[x8, #0xe4]
02c621ec  cbnz w9,0x02c621f8
02c621f0  mov x0,x8
02c621f4  bl 0x029f5bd0
02c621f8  fmov s0,s8
02c621fc  fmov s1,s9
02c62200  add x2,sp,#0x18
02c62204  mov x0,x20
02c62208  mov x1,x19
02c6220c  mov x3,xzr
02c62210  add x19,sp,#0x18
02c62214  bl 0x05aa15c0
02c62218  ldp s0,s1,[x19]
02c6221c  ldr x30,[sp, #0x10]
02c62220  ldp x20,x19,[sp, #0x30]
02c62224  ldp x22,x21,[sp, #0x20]
02c62228  ldp d9,d8,[sp], #0x40
02c6222c  ret
02c62230  bl 0x029f5cfc
