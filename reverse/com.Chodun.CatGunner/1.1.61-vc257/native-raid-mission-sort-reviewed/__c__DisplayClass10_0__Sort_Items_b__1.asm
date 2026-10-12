02c55e7c  sub sp,sp,#0x50
02c55e80  str x30,[sp, #0x10]
02c55e84  stp x24,x23,[sp, #0x20]
02c55e88  stp x22,x21,[sp, #0x30]
02c55e8c  stp x20,x19,[sp, #0x40]
02c55e90  ldr x23,[x0, #0x18]
02c55e94  stp wzr,w1,[sp, #0x18]
02c55e98  str wzr,[sp, #0xc]
02c55e9c  cbz x23,0x02c55f80
02c55ea0  ldr w24,[x23, #0x18]
02c55ea4  mov w21,w1
02c55ea8  cmp w24,w1
02c55eac  b.ls 0x02c55f7c
02c55eb0  add x8,x23,w21, SXTW  #0x2
02c55eb4  mov w19,w2
02c55eb8  mov x20,x0
02c55ebc  ldr w1,[x8, #0x20]
02c55ec0  bl 0x02c55e18
02c55ec4  cmp w24,w19
02c55ec8  str w0,[sp, #0x18]
02c55ecc  b.ls 0x02c55f7c
02c55ed0  add x8,x23,w19, SXTW  #0x2
02c55ed4  mov w22,w0
02c55ed8  mov x0,x20
02c55edc  ldr w1,[x8, #0x20]
02c55ee0  bl 0x02c55e18
02c55ee4  cmp w22,w0
02c55ee8  b.ne 0x02c55f20
02c55eec  ldr x0,[x20, #0x20]
02c55ef0  cbz x0,0x02c55f80
02c55ef4  mov w1,w21
02c55ef8  bl 0x02c5454c
02c55efc  ldr x8,[x20, #0x20]
02c55f00  cbz x8,0x02c55f80
02c55f04  mov x20,x0
02c55f08  mov x0,x8
02c55f0c  mov w1,w19
02c55f10  bl 0x02c5454c
02c55f14  cbz x20,0x02c55f2c
02c55f18  ldr w8,[x20, #0x10]
02c55f1c  b 0x02c55f30
02c55f20  mov w1,w0
02c55f24  add x0,sp,#0x18
02c55f28  b 0x02c55f5c
02c55f2c  mov w8,wzr
02c55f30  str w8,[sp, #0xc]
02c55f34  cbz x0,0x02c55f40
02c55f38  ldr w1,[x0, #0x10]
02c55f3c  b 0x02c55f44
02c55f40  mov w1,wzr
02c55f44  cmp w8,w1
02c55f48  b.ne 0x02c55f58
02c55f4c  add x0,sp,#0x1c
02c55f50  mov w1,w19
02c55f54  b 0x02c55f5c
02c55f58  add x0,sp,#0xc
02c55f5c  mov x2,xzr
02c55f60  bl 0x0484e630
02c55f64  ldp x20,x19,[sp, #0x40]
02c55f68  ldr x30,[sp, #0x10]
02c55f6c  ldp x22,x21,[sp, #0x30]
02c55f70  ldp x24,x23,[sp, #0x20]
02c55f74  add sp,sp,#0x50
02c55f78  ret
02c55f7c  bl 0x029f5d04
02c55f80  bl 0x029f5cfc
