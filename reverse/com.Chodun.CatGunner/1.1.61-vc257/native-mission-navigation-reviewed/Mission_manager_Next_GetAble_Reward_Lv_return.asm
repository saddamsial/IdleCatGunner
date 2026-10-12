02ba6930  str x30,[sp, #-0x30]!
02ba6934  stp x22,x21,[sp, #0x10]
02ba6938  stp x20,x19,[sp, #0x20]
02ba693c  adrp x20,0x625b000
02ba6940  mov x19,x0
02ba6944  ldrb w8,[x20, #0xa54]
02ba6948  tbnz w8,#0x0,0x02ba6960
02ba694c  adrp x0,0x5e5d000
02ba6950  ldr x0,[x0, #0xd50]
02ba6954  bl 0x029f5a50
02ba6958  mov w8,#0x1
02ba695c  strb w8,[x20, #0xa54]
02ba6960  ldr x8,[x19, #0x38]
02ba6964  cbz x8,0x02ba69ec
02ba6968  adrp x21,0x5e5d000
02ba696c  mov x20,xzr
02ba6970  ldr x21,[x21, #0xd50]
02ba6974  ldr w9,[x8, #0x18]
02ba6978  cmp x20,w9, SXTW 
02ba697c  b.ge 0x02ba69f0
02ba6980  cmp x20,x9
02ba6984  b.cs 0x02ba6a14
02ba6988  ldr x0,[x21]
02ba698c  add x8,x8,x20
02ba6990  ldrb w22,[x8, #0x20]
02ba6994  ldr w9,[x0, #0xe4]
02ba6998  cbnz w9,0x02ba69a4
02ba699c  bl 0x029f5bd0
02ba69a0  ldr x0,[x21]
02ba69a4  ldr x8,[x0, #0xb8]
02ba69a8  ldrb w8,[x8]
02ba69ac  cbz w8,0x02ba69d8
02ba69b0  cbz w22,0x02ba69d8
02ba69b4  ldr x8,[x19, #0x40]
02ba69b8  cbz x8,0x02ba69ec
02ba69bc  ldr w9,[x8, #0x18]
02ba69c0  cmp x20,x9
02ba69c4  b.cs 0x02ba6a14
02ba69c8  add x8,x8,x20
02ba69cc  ldrb w8,[x8, #0x20]
02ba69d0  cbnz w8,0x02ba69e0
02ba69d4  b 0x02ba69f8
02ba69d8  cbz w22,0x02ba69f8
02ba69dc  cbnz w8,0x02ba69f8
02ba69e0  ldr x8,[x19, #0x38]
02ba69e4  add x20,x20,#0x1
02ba69e8  cbnz x8,0x02ba6974
02ba69ec  bl 0x029f5cfc
02ba69f0  mov w0,#0xffffffff
02ba69f4  b 0x02ba6a04
02ba69f8  ldr w8,[x19, #0x48]
02ba69fc  cmp w8,w20
02ba6a00  csinv w0,w20,wzr,gt
02ba6a04  ldp x20,x19,[sp, #0x20]
02ba6a08  ldp x22,x21,[sp, #0x10]
02ba6a0c  ldr x30,[sp], #0x30
02ba6a10  ret
02ba6a14  bl 0x029f5d04
