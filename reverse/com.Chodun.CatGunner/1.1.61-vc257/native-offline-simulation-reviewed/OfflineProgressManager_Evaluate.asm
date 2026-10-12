02c068b8  stp d9,d8,[sp, #-0x40]!
02c068bc  str x30,[sp, #0x10]
02c068c0  stp x22,x21,[sp, #0x20]
02c068c4  stp x20,x19,[sp, #0x30]
02c068c8  adrp x22,0x625b000
02c068cc  adrp x21,0x5e61000
02c068d0  adrp x20,0x5e59000
02c068d4  ldrb w8,[x22, #0xe79]
02c068d8  ldr x21,[x21, #0xf78]
02c068dc  ldr x20,[x20, #0x1c0]
02c068e0  mov x19,x0
02c068e4  tbnz w8,#0x0,0x02c06914
02c068e8  adrp x0,0x5e59000
02c068ec  ldr x0,[x0, #0x1c0]
02c068f0  bl 0x029f5a50
02c068f4  adrp x0,0x5e61000
02c068f8  ldr x0,[x0, #0xf78]
02c068fc  bl 0x029f5a50
02c06900  adrp x0,0x5e62000
02c06904  ldr x0,[x0, #0x40]
02c06908  bl 0x029f5a50
02c0690c  mov w8,#0x1
02c06910  strb w8,[x22, #0xe79]
02c06914  ldr x8,[x21]
02c06918  ldr x0,[x20]
02c0691c  str xzr,[sp, #0x18]
02c06920  ldr x8,[x8, #0xb8]
02c06924  ldr w9,[x0, #0xe4]
02c06928  ldr x20,[x8]
02c0692c  cbnz w9,0x02c06934
02c06930  bl 0x029f5bd0
02c06934  mov x0,x20
02c06938  mov x1,xzr
02c0693c  mov x2,xzr
02c06940  bl 0x057e14b4
02c06944  mov w8,w0
02c06948  mov x0,xzr
02c0694c  cbz x19,0x02c069fc
02c06950  tbnz w8,#0x0,0x02c069fc
02c06954  ldr x8,[x21]
02c06958  ldr x8,[x8, #0xb8]
02c0695c  ldr x0,[x8]
02c06960  cbz x0,0x02c06a10
02c06964  add x2,sp,#0x1c
02c06968  add x3,sp,#0x18
02c0696c  mov x1,x19
02c06970  bl 0x02c064c0
02c06974  tbz w0,#0x0,0x02c069f8
02c06978  ldr x8,[x21]
02c0697c  ldr x8,[x8, #0xb8]
02c06980  ldr x0,[x8]
02c06984  cbz x0,0x02c06a10
02c06988  mov x1,x19
02c0698c  str x19,[x0, #0x40]!
02c06990  bl 0x029f59f4
02c06994  adrp x8,0x5e62000
02c06998  ldr x8,[x8, #0x40]
02c0699c  ldr x9,[x21]
02c069a0  ldp s9,s8,[sp, #0x18]
02c069a4  ldr x0,[x8]
02c069a8  ldr x8,[x9, #0xb8]
02c069ac  ldr w9,[x0, #0xe4]
02c069b0  ldr x20,[x8]
02c069b4  cbnz w9,0x02c069bc
02c069b8  bl 0x029f5bd0
02c069bc  fmov s0,s8
02c069c0  fmov s1,s9
02c069c4  mov x0,x19
02c069c8  bl 0x02c06a14
02c069cc  cbz x20,0x02c06a10
02c069d0  mov x1,x0
02c069d4  str x0,[x20, #0x38]!
02c069d8  mov x0,x20
02c069dc  bl 0x029f59f4
02c069e0  ldr x8,[x21]
02c069e4  ldr x8,[x8, #0xb8]
02c069e8  ldr x8,[x8]
02c069ec  cbz x8,0x02c06a10
02c069f0  ldr x0,[x8, #0x38]
02c069f4  b 0x02c069fc
02c069f8  mov x0,xzr
02c069fc  ldp x20,x19,[sp, #0x30]
02c06a00  ldr x30,[sp, #0x10]
02c06a04  ldp x22,x21,[sp, #0x20]
02c06a08  ldp d9,d8,[sp], #0x40
02c06a0c  ret
02c06a10  bl 0x029f5cfc
