02c8b80c  str x30,[sp, #-0x20]!
02c8b810  stp x20,x19,[sp, #0x10]
02c8b814  ldr x8,[x0, #0x20]
02c8b818  cbz x8,0x02c8b854
02c8b81c  mov x19,x0
02c8b820  mov x20,xzr
02c8b824  ldr w9,[x8, #0x18]
02c8b828  cmp x20,w9, SXTW 
02c8b82c  b.ge 0x02c8b858
02c8b830  cmp x20,x9
02c8b834  b.cs 0x02c8b864
02c8b838  add x9,x8,x20, LSL #0x3
02c8b83c  ldr x0,[x9, #0x20]
02c8b840  cbz x0,0x02c8b84c
02c8b844  bl 0x02c8bcd4
02c8b848  ldr x8,[x19, #0x20]
02c8b84c  add x20,x20,#0x1
02c8b850  cbnz x8,0x02c8b824
02c8b854  bl 0x029f5cfc
02c8b858  ldp x20,x19,[sp, #0x10]
02c8b85c  ldr x30,[sp], #0x20
02c8b860  ret
02c8b864  bl 0x029f5d04
