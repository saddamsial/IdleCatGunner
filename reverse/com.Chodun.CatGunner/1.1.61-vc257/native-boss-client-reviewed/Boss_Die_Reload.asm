02c44df0  stp x30,x21,[sp, #-0x20]!
02c44df4  stp x20,x19,[sp, #0x10]
02c44df8  adrp x20,0x625c000
02c44dfc  mov x19,x0
02c44e00  ldrb w8,[x20, #0xd0]
02c44e04  tbnz w8,#0x0,0x02c44e28
02c44e08  adrp x0,0x5e5d000
02c44e0c  ldr x0,[x0, #0xd30]
02c44e10  bl 0x029f5a50
02c44e14  adrp x0,0x5e63000
02c44e18  ldr x0,[x0, #0x2e8]
02c44e1c  bl 0x029f5a50
02c44e20  mov w8,#0x1
02c44e24  strb w8,[x20, #0xd0]
02c44e28  ldr x8,[x19, #0x48]
02c44e2c  cbz x8,0x02c44f4c
02c44e30  ldrsw x9,[x19, #0x28]
02c44e34  ldr w10,[x8, #0x18]
02c44e38  cmp w9,w10
02c44e3c  b.cs 0x02c44f50
02c44e40  adrp x21,0x5e5d000
02c44e44  add x8,x8,x9, LSL #0x3
02c44e48  ldr x21,[x21, #0xd30]
02c44e4c  ldr x20,[x8, #0x20]
02c44e50  ldr x0,[x21]
02c44e54  ldr w9,[x0, #0xe4]
02c44e58  cbnz w9,0x02c44e64
02c44e5c  bl 0x029f5bd0
02c44e60  ldr x0,[x21]
02c44e64  ldr x8,[x0, #0xb8]
02c44e68  ldr x8,[x8, #0x8]
02c44e6c  cbz x8,0x02c44f4c
02c44e70  ldr x8,[x8, #0x60]
02c44e74  cbz x8,0x02c44f4c
02c44e78  ldrsw x9,[x19, #0x28]
02c44e7c  ldr w10,[x8, #0x18]
02c44e80  cmp w9,w10
02c44e84  b.cs 0x02c44f50
02c44e88  cbz x20,0x02c44f4c
02c44e8c  add x8,x8,x9, LSL #0x3
02c44e90  mov x0,x20
02c44e94  mov x2,xzr
02c44e98  ldr x1,[x8, #0x20]
02c44e9c  bl 0x0578eb10
02c44ea0  ldr x8,[x21]
02c44ea4  ldr x8,[x8, #0xb8]
02c44ea8  ldr x0,[x8, #0x8]
02c44eac  cbz x0,0x02c44f4c
02c44eb0  bl 0x02c44f54
02c44eb4  ldr x0,[x19, #0x38]
02c44eb8  cbz x0,0x02c44f4c
02c44ebc  adrp x8,0x5e63000
02c44ec0  mov x2,xzr
02c44ec4  ldr x8,[x8, #0x2e8]
02c44ec8  ldr x1,[x8]
02c44ecc  bl 0x05784f34
02c44ed0  mov x20,x19
02c44ed4  ldr x1,[x20, #0x70]!
02c44ed8  cbz x1,0x02c44ef8
02c44edc  mov x0,x19
02c44ee0  mov x2,xzr
02c44ee4  bl 0x057e237c
02c44ee8  mov x0,x20
02c44eec  mov x1,xzr
02c44ef0  str xzr,[x19, #0x70]
02c44ef4  bl 0x029f59f4
02c44ef8  adrp x20,0x625b000
02c44efc  ldr x19,[x19, #0x40]
02c44f00  ldrb w8,[x20, #0x26f]
02c44f04  cbnz w8,0x02c44f1c
02c44f08  adrp x0,0x5e58000
02c44f0c  ldr x0,[x0, #0xbf8]
02c44f10  bl 0x029f5a50
02c44f14  mov w8,#0x1
02c44f18  strb w8,[x20, #0x26f]
02c44f1c  cbz x19,0x02c44f4c
02c44f20  adrp x8,0x5e58000
02c44f24  mov x0,x19
02c44f28  mov x1,xzr
02c44f2c  ldr x8,[x8, #0xbf8]
02c44f30  ldp x20,x19,[sp, #0x10]
02c44f34  ldr x8,[x8]
02c44f38  ldr x8,[x8, #0xb8]
02c44f3c  ldp s0,s1,[x8]
02c44f40  ldr s2,[x8, #0x8]
02c44f44  ldp x30,x21,[sp], #0x20
02c44f48  b 0x0586b344
02c44f4c  bl 0x029f5cfc
02c44f50  bl 0x029f5d04
