02c2e86c  str x30,[sp, #-0x50]!
02c2e870  stp x26,x25,[sp, #0x10]
02c2e874  stp x24,x23,[sp, #0x20]
02c2e878  stp x22,x21,[sp, #0x30]
02c2e87c  stp x20,x19,[sp, #0x40]
02c2e880  adrp x20,0x625c000
02c2e884  mov x19,x0
02c2e888  ldrb w8,[x20, #0xf]
02c2e88c  tbnz w8,#0x0,0x02c2e8b0
02c2e890  adrp x0,0x5e59000
02c2e894  ldr x0,[x0, #0x7d0]
02c2e898  bl 0x029f5a50
02c2e89c  adrp x0,0x5e5d000
02c2e8a0  ldr x0,[x0, #0x3c0]
02c2e8a4  bl 0x029f5a50
02c2e8a8  mov w8,#0x1
02c2e8ac  strb w8,[x20, #0xf]
02c2e8b0  ldr x8,[x19, #0x20]
02c2e8b4  cbz x8,0x02c2e99c
02c2e8b8  adrp x8,0x5e5d000
02c2e8bc  ldr x8,[x8, #0x3c0]
02c2e8c0  ldr x0,[x8]
02c2e8c4  ldr w8,[x0, #0xe4]
02c2e8c8  cbnz w8,0x02c2e8d0
02c2e8cc  bl 0x029f5bd0
02c2e8d0  bl 0x02c25b48
02c2e8d4  ldr x8,[x19, #0x20]
02c2e8d8  cbz x8,0x02c2e990
02c2e8dc  adrp x23,0x5e59000
02c2e8e0  mov x20,x0
02c2e8e4  mov w24,wzr
02c2e8e8  ldr x23,[x23, #0x7d0]
02c2e8ec  ldr w9,[x8, #0x18]
02c2e8f0  cmp w24,w9
02c2e8f4  b.ge 0x02c2e99c
02c2e8f8  b.cs 0x02c2e9b8
02c2e8fc  add x9,x8,w24, SXTW  #0x3
02c2e900  ldr x9,[x9, #0x20]
02c2e904  cbz x9,0x02c2e990
02c2e908  ldr x25,[x9, #0x18]
02c2e90c  cbz x25,0x02c2e988
02c2e910  ldr x9,[x25, #0x18]
02c2e914  cmp w9,#0x1
02c2e918  b.lt 0x02c2e988
02c2e91c  mov x21,xzr
02c2e920  add x26,x25,#0x20
02c2e924  cmp w21,w9
02c2e928  b.cs 0x02c2e9b8
02c2e92c  ldr x1,[x26, x21, LSL #0x3]
02c2e930  cbz x1,0x02c2e990
02c2e934  ldrb w8,[x1, #0x10]
02c2e938  cbz w8,0x02c2e978
02c2e93c  mov x0,x19
02c2e940  mov w2,w21
02c2e944  bl 0x02c2cb98
02c2e948  ldr x8,[x23]
02c2e94c  mov x22,x0
02c2e950  ldr w9,[x8, #0xe4]
02c2e954  cbnz w9,0x02c2e960
02c2e958  mov x0,x8
02c2e95c  bl 0x029f5bd0
02c2e960  mov x0,x22
02c2e964  mov x1,x20
02c2e968  mov x2,xzr
02c2e96c  bl 0x04833274
02c2e970  tbnz w0,#0x0,0x02c2e994
02c2e974  ldr x9,[x25, #0x18]
02c2e978  add x21,x21,#0x1
02c2e97c  cmp w21,w9
02c2e980  b.lt 0x02c2e924
02c2e984  ldr x8,[x19, #0x20]
02c2e988  add w24,w24,#0x1
02c2e98c  cbnz x8,0x02c2e8ec
02c2e990  bl 0x029f5cfc
02c2e994  mov w0,#0x1
02c2e998  b 0x02c2e9a0
02c2e99c  mov w0,wzr
02c2e9a0  ldp x20,x19,[sp, #0x40]
02c2e9a4  ldp x22,x21,[sp, #0x30]
02c2e9a8  ldp x24,x23,[sp, #0x20]
02c2e9ac  ldp x26,x25,[sp, #0x10]
02c2e9b0  ldr x30,[sp], #0x50
02c2e9b4  ret
02c2e9b8  bl 0x029f5d04
