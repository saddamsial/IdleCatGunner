02c6bc30  str x30,[sp, #-0x20]!
02c6bc34  stp x20,x19,[sp, #0x10]
02c6bc38  adrp x20,0x625c000
02c6bc3c  mov x19,x0
02c6bc40  ldrb w8,[x20, #0x290]
02c6bc44  tbnz w8,#0x0,0x02c6bc5c
02c6bc48  adrp x0,0x5e5d000
02c6bc4c  ldr x0,[x0, #0x790]
02c6bc50  bl 0x029f5a50
02c6bc54  mov w8,#0x1
02c6bc58  strb w8,[x20, #0x290]
02c6bc5c  ldr x9,[x19, #0x20]!
02c6bc60  cbz x9,0x02c6bc70
02c6bc64  ldr w8,[x9, #0x18]
02c6bc68  cmp w8,#0x10
02c6bc6c  b.eq 0x02c6bc9c
02c6bc70  adrp x8,0x5e5d000
02c6bc74  mov w1,#0x10
02c6bc78  ldr x8,[x8, #0x790]
02c6bc7c  ldr x0,[x8]
02c6bc80  bl 0x029f5b40
02c6bc84  mov x1,x0
02c6bc88  str x0,[x19]
02c6bc8c  mov x0,x19
02c6bc90  bl 0x029f59f4
02c6bc94  ldr x9,[x19]
02c6bc98  cbz x9,0x02c6bcd8
02c6bc9c  ldr w10,[x9, #0x18]
02c6bca0  mov x8,xzr
02c6bca4  add x9,x9,#0x20
02c6bca8  mov w11,#0xffffffff
02c6bcac  lsl x10,x10,#0x2
02c6bcb0  cmp x10,x8
02c6bcb4  b.eq 0x02c6bcd4
02c6bcb8  str w11,[x9, x8, LSL #0x0]
02c6bcbc  add x8,x8,#0x4
02c6bcc0  cmp x8,#0x40
02c6bcc4  b.ne 0x02c6bcb0
02c6bcc8  ldp x20,x19,[sp, #0x10]
02c6bccc  ldr x30,[sp], #0x20
02c6bcd0  ret
02c6bcd4  bl 0x029f5d04
02c6bcd8  bl 0x029f5cfc
