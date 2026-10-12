02b9e864  str x30,[sp, #-0x20]!
02b9e868  stp x20,x19,[sp, #0x10]
02b9e86c  adrp x19,0x625b000
02b9e870  adrp x20,0x5e5e000
02b9e874  ldrb w8,[x19, #0x9ed]
02b9e878  ldr x20,[x20, #0x4d0]
02b9e87c  tbnz w8,#0x0,0x02b9e8a0
02b9e880  adrp x0,0x5e5d000
02b9e884  ldr x0,[x0, #0xd30]
02b9e888  bl 0x029f5a50
02b9e88c  adrp x0,0x5e5e000
02b9e890  ldr x0,[x0, #0x4d0]
02b9e894  bl 0x029f5a50
02b9e898  mov w8,#0x1
02b9e89c  strb w8,[x19, #0x9ed]
02b9e8a0  ldr x0,[x20]
02b9e8a4  ldr w8,[x0, #0xe4]
02b9e8a8  cbnz w8,0x02b9e8b0
02b9e8ac  bl 0x029f5bd0
02b9e8b0  mov w0,#0x3
02b9e8b4  bl 0x02b9e588
02b9e8b8  tbz w0,#0x0,0x02b9e8fc
02b9e8bc  adrp x19,0x5e5d000
02b9e8c0  ldr x19,[x19, #0xd30]
02b9e8c4  ldr x0,[x19]
02b9e8c8  ldr w8,[x0, #0xe4]
02b9e8cc  cbnz w8,0x02b9e8d8
02b9e8d0  bl 0x029f5bd0
02b9e8d4  ldr x0,[x19]
02b9e8d8  ldr x8,[x0, #0xb8]
02b9e8dc  ldr x8,[x8, #0x8]
02b9e8e0  cbz x8,0x02b9e908
02b9e8e4  ldr x0,[x8, #0x38]
02b9e8e8  cbz x0,0x02b9e908
02b9e8ec  ldp x20,x19,[sp, #0x10]
02b9e8f0  mov x1,xzr
02b9e8f4  ldr x30,[sp], #0x20
02b9e8f8  b 0x02c4742c
02b9e8fc  ldp x20,x19,[sp, #0x10]
02b9e900  ldr x30,[sp], #0x20
02b9e904  ret
02b9e908  bl 0x029f5cfc
