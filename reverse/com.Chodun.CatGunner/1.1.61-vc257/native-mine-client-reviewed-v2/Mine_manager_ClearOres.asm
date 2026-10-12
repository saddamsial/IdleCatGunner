02c4a824  stp x30,x23,[sp, #-0x30]!
02c4a828  stp x22,x21,[sp, #0x10]
02c4a82c  stp x20,x19,[sp, #0x20]
02c4a830  adrp x20,0x625c000
02c4a834  mov x19,x0
02c4a838  ldrb w8,[x20, #0x11b]
02c4a83c  tbnz w8,#0x0,0x02c4a86c
02c4a840  adrp x0,0x5e58000
02c4a844  ldr x0,[x0, #0xf08]
02c4a848  bl 0x029f5a50
02c4a84c  adrp x0,0x5e59000
02c4a850  ldr x0,[x0, #0x1c0]
02c4a854  bl 0x029f5a50
02c4a858  adrp x0,0x5e63000
02c4a85c  ldr x0,[x0, #0x3d0]
02c4a860  bl 0x029f5a50
02c4a864  mov w8,#0x1
02c4a868  strb w8,[x20, #0x11b]
02c4a86c  ldr x20,[x19, #0x20]
02c4a870  cbz x20,0x02c4a92c
02c4a874  ldr x8,[x20, #0x18]
02c4a878  cmp w8,#0x1
02c4a87c  b.lt 0x02c4a8f4
02c4a880  adrp x22,0x5e59000
02c4a884  mov x21,xzr
02c4a888  and x8,x8,#0xffffffff
02c4a88c  ldr x22,[x22, #0x1c0]
02c4a890  add x23,x20,#0x20
02c4a894  cmp x21,w8, UXTW 
02c4a898  b.cs 0x02c4a940
02c4a89c  ldr x0,[x22]
02c4a8a0  ldr x19,[x23, x21, LSL #0x3]
02c4a8a4  ldr w8,[x0, #0xe4]
02c4a8a8  cbnz w8,0x02c4a8b0
02c4a8ac  bl 0x029f5bd0
02c4a8b0  mov x0,x19
02c4a8b4  mov x1,xzr
02c4a8b8  mov x2,xzr
02c4a8bc  bl 0x057dfa70
02c4a8c0  tbz w0,#0x0,0x02c4a8e4
02c4a8c4  cbz x19,0x02c4a93c
02c4a8c8  mov x0,x19
02c4a8cc  mov x1,xzr
02c4a8d0  bl 0x057dc1c8
02c4a8d4  cbz x0,0x02c4a93c
02c4a8d8  mov w1,wzr
02c4a8dc  mov x2,xzr
02c4a8e0  bl 0x057dff3c
02c4a8e4  ldr w8,[x20, #0x18]
02c4a8e8  add x21,x21,#0x1
02c4a8ec  cmp x21,w8, SXTW 
02c4a8f0  b.lt 0x02c4a894
02c4a8f4  adrp x8,0x5e58000
02c4a8f8  adrp x19,0x5e63000
02c4a8fc  ldr x8,[x8, #0xf08]
02c4a900  ldr x0,[x8]
02c4a904  ldr w8,[x0, #0xe4]
02c4a908  ldr x19,[x19, #0x3d0]
02c4a90c  cbnz w8,0x02c4a914
02c4a910  bl 0x029f5bd0
02c4a914  ldr x0,[x19]
02c4a918  ldp x20,x19,[sp, #0x20]
02c4a91c  ldp x22,x21,[sp, #0x10]
02c4a920  mov x1,xzr
02c4a924  ldp x30,x23,[sp], #0x30
02c4a928  b 0x05799e30
02c4a92c  ldp x20,x19,[sp, #0x20]
02c4a930  ldp x22,x21,[sp, #0x10]
02c4a934  ldp x30,x23,[sp], #0x30
02c4a938  ret
02c4a93c  bl 0x029f5cfc
02c4a940  bl 0x029f5d04
