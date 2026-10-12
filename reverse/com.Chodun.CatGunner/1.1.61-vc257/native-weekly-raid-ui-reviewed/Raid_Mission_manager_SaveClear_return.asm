02c54e5c  str x30,[sp, #-0x20]!
02c54e60  stp x20,x19,[sp, #0x10]
02c54e64  adrp x20,0x625c000
02c54e68  mov x19,x0
02c54e6c  ldrb w8,[x20, #0x180]
02c54e70  tbnz w8,#0x0,0x02c54e88
02c54e74  adrp x0,0x5e62000
02c54e78  ldr x0,[x0, #0x6b0]
02c54e7c  bl 0x029f5a50
02c54e80  mov w8,#0x1
02c54e84  strb w8,[x20, #0x180]
02c54e88  ldr x0,[x19, #0x30]
02c54e8c  cbz x0,0x02c54ec4
02c54e90  mov x1,xzr
02c54e94  bl 0x04874260
02c54e98  cbz x0,0x02c54eb8
02c54e9c  adrp x8,0x5e62000
02c54ea0  mov x19,x0
02c54ea4  ldr x8,[x8, #0x6b0]
02c54ea8  ldr x20,[x8]
02c54eac  mov x1,x20
02c54eb0  bl 0x029f5bd4
02c54eb4  cbz x0,0x02c54ec8
02c54eb8  ldp x20,x19,[sp, #0x10]
02c54ebc  ldr x30,[sp], #0x20
02c54ec0  ret
02c54ec4  bl 0x029f5cfc
02c54ec8  mov x0,x19
02c54ecc  mov x1,x20
02c54ed0  bl 0x029f607c
