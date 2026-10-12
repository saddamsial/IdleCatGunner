02c7a85c  str x30,[sp, #-0x30]!
02c7a860  stp x22,x21,[sp, #0x10]
02c7a864  stp x20,x19,[sp, #0x20]
02c7a868  adrp x22,0x625c000
02c7a86c  adrp x21,0x5e59000
02c7a870  mov x19,x1
02c7a874  ldrb w8,[x22, #0x313]
02c7a878  ldr x21,[x21, #0x1c0]
02c7a87c  mov x20,x0
02c7a880  tbnz w8,#0x0,0x02c7a898
02c7a884  adrp x0,0x5e59000
02c7a888  ldr x0,[x0, #0x1c0]
02c7a88c  bl 0x029f5a50
02c7a890  mov w8,#0x1
02c7a894  strb w8,[x22, #0x313]
02c7a898  ldr x0,[x21]
02c7a89c  ldr x21,[x20, #0x38]
02c7a8a0  ldr w8,[x0, #0xe4]
02c7a8a4  cbnz w8,0x02c7a8ac
02c7a8a8  bl 0x029f5bd0
02c7a8ac  mov x0,x21
02c7a8b0  mov x1,xzr
02c7a8b4  mov x2,xzr
02c7a8b8  bl 0x057e14b4
02c7a8bc  tbnz w0,#0x0,0x02c7a8d8
02c7a8c0  mov x21,x20
02c7a8c4  mov x1,x19
02c7a8c8  mov x2,xzr
02c7a8cc  ldr x0,[x21, #0x68]!
02c7a8d0  bl 0x046b2ddc
02c7a8d4  tbz w0,#0x0,0x02c7a8e8
02c7a8d8  ldp x20,x19,[sp, #0x20]
02c7a8dc  ldp x22,x21,[sp, #0x10]
02c7a8e0  ldr x30,[sp], #0x30
02c7a8e4  ret
02c7a8e8  mov x0,x21
02c7a8ec  mov x1,x19
02c7a8f0  str x19,[x20, #0x68]
02c7a8f4  bl 0x029f59f4
02c7a8f8  ldr x0,[x20, #0x38]
02c7a8fc  cbz x0,0x02c7a918
02c7a900  mov x1,x19
02c7a904  ldp x20,x19,[sp, #0x20]
02c7a908  ldp x22,x21,[sp, #0x10]
02c7a90c  mov x2,xzr
02c7a910  ldr x30,[sp], #0x30
02c7a914  b 0x04bcf784
02c7a918  bl 0x029f5cfc
