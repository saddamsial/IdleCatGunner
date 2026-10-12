02c5b7a4  stp x30,x23,[sp, #-0x30]!
02c5b7a8  stp x22,x21,[sp, #0x10]
02c5b7ac  stp x20,x19,[sp, #0x20]
02c5b7b0  adrp x20,0x625c000
02c5b7b4  mov x19,x0
02c5b7b8  ldrb w8,[x20, #0x1e2]
02c5b7bc  tbnz w8,#0x0,0x02c5b7e0
02c5b7c0  adrp x0,0x5e59000
02c5b7c4  ldr x0,[x0, #0x1c0]
02c5b7c8  bl 0x029f5a50
02c5b7cc  adrp x0,0x5e5e000
02c5b7d0  ldr x0,[x0, #0x70]
02c5b7d4  bl 0x029f5a50
02c5b7d8  mov w8,#0x1
02c5b7dc  strb w8,[x20, #0x1e2]
02c5b7e0  ldr x20,[x19, #0x28]
02c5b7e4  cbz x20,0x02c5b854
02c5b7e8  ldr x8,[x20, #0x18]
02c5b7ec  cmp w8,#0x1
02c5b7f0  b.lt 0x02c5b854
02c5b7f4  adrp x22,0x5e59000
02c5b7f8  mov x21,xzr
02c5b7fc  and x8,x8,#0xffffffff
02c5b800  ldr x22,[x22, #0x1c0]
02c5b804  add x23,x20,#0x20
02c5b808  cmp x21,w8, UXTW 
02c5b80c  b.cs 0x02c5b890
02c5b810  ldr x0,[x22]
02c5b814  ldr x19,[x23, x21, LSL #0x3]
02c5b818  ldr w8,[x0, #0xe4]
02c5b81c  cbnz w8,0x02c5b824
02c5b820  bl 0x029f5bd0
02c5b824  mov x0,x19
02c5b828  mov x1,xzr
02c5b82c  mov x2,xzr
02c5b830  bl 0x057dfa70
02c5b834  tbz w0,#0x0,0x02c5b844
02c5b838  cbz x19,0x02c5b894
02c5b83c  mov x0,x19
02c5b840  bl 0x02c5ac40
02c5b844  ldr w8,[x20, #0x18]
02c5b848  add x21,x21,#0x1
02c5b84c  cmp x21,w8, SXTW 
02c5b850  b.lt 0x02c5b808
02c5b854  adrp x19,0x5e5e000
02c5b858  ldr x19,[x19, #0x70]
02c5b85c  ldr x0,[x19]
02c5b860  ldr w8,[x0, #0xe4]
02c5b864  cbnz w8,0x02c5b870
02c5b868  bl 0x029f5bd0
02c5b86c  ldr x0,[x19]
02c5b870  ldr x8,[x0, #0xb8]
02c5b874  ldr x0,[x8]
02c5b878  cbz x0,0x02c5b894
02c5b87c  ldp x20,x19,[sp, #0x20]
02c5b880  mov x1,xzr
02c5b884  ldp x22,x21,[sp, #0x10]
02c5b888  ldp x30,x23,[sp], #0x30
02c5b88c  b 0x02c574f8
02c5b890  bl 0x029f5d04
02c5b894  bl 0x029f5cfc
