02ca3518  stp x30,x19,[sp, #-0x10]!
02ca351c  cbz x1,0x02ca35ac
02ca3520  ldr x12,[x1, #0x3d0]
02ca3524  mov x19,x0
02ca3528  cbz x12,0x02ca3584
02ca352c  ldr x11,[x12, #0x18]
02ca3530  cmp w11,#0x1
02ca3534  b.lt 0x02ca3584
02ca3538  ldr x9,[x19, #0x38]
02ca353c  cmp w11,#0x5
02ca3540  mov w13,#0x5
02ca3544  mov x8,xzr
02ca3548  and x10,x11,#0xffffffff
02ca354c  csel w11,w11,w13,lt
02ca3550  add x12,x12,#0x20
02ca3554  add x13,x9,#0x20
02ca3558  cmp x10,x8
02ca355c  b.eq 0x02ca35b4
02ca3560  cbz x9,0x02ca35b8
02ca3564  ldr w14,[x9, #0x18]
02ca3568  cmp x8,x14
02ca356c  b.cs 0x02ca35b4
02ca3570  ldrb w14,[x12, x8, LSL ]
02ca3574  strb w14,[x13, x8, LSL ]
02ca3578  add x8,x8,#0x1
02ca357c  cmp x11,x8
02ca3580  b.ne 0x02ca3558
02ca3584  ldr x0,[x1, #0x3d8]
02ca3588  mov x1,xzr
02ca358c  mov x2,xzr
02ca3590  mov x3,xzr
02ca3594  bl 0x02c06754
02ca3598  mov x8,x0
02ca359c  mov x0,x19
02ca35a0  str x8,[x19, #0x40]
02ca35a4  ldp x30,x19,[sp], #0x10
02ca35a8  b 0x02ca2d18
02ca35ac  ldp x30,x19,[sp], #0x10
02ca35b0  ret
02ca35b4  bl 0x029f5d04
02ca35b8  bl 0x029f5cfc
