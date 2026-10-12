02caa814  stp d9,d8,[sp, #-0x30]!
02caa818  str x30,[sp, #0x10]
02caa81c  stp x20,x19,[sp, #0x20]
02caa820  adrp x20,0x625c000
02caa824  mov x19,x0
02caa828  ldrb w8,[x20, #0x506]
02caa82c  tbnz w8,#0x0,0x02caa850
02caa830  adrp x0,0x5e5d000
02caa834  ldr x0,[x0, #0x368]
02caa838  bl 0x029f5a50
02caa83c  adrp x0,0x5e5b000
02caa840  ldr x0,[x0, #0xed0]
02caa844  bl 0x029f5a50
02caa848  mov w8,#0x1
02caa84c  strb w8,[x20, #0x506]
02caa850  ldr w8,[x19, #0x10]
02caa854  ldr x20,[x19, #0x20]
02caa858  cmp w8,#0x2
02caa85c  b.eq 0x02caa93c
02caa860  cmp w8,#0x1
02caa864  b.eq 0x02caa8d8
02caa868  cbnz w8,0x02caa9b0
02caa86c  adrp x8,0x5e5d000
02caa870  ldr x8,[x8, #0x368]
02caa874  ldr x8,[x8]
02caa878  ldr x8,[x8, #0xb8]
02caa87c  ldr x0,[x8]
02caa880  mov w8,#0xffffffff
02caa884  str w8,[x19, #0x10]
02caa888  cbz x0,0x02caa9c4
02caa88c  mov x1,xzr
02caa890  bl 0x02c2a604
02caa894  mov x0,xzr
02caa898  bl 0x057ebae4
02caa89c  str s0,[x19, #0x28]
02caa8a0  cbz x20,0x02caa9c4
02caa8a4  mov x0,x20
02caa8a8  bl 0x02caa1a0
02caa8ac  mov x1,x0
02caa8b0  mov x0,x20
02caa8b4  mov x2,xzr
02caa8b8  bl 0x057e2120
02caa8bc  mov x1,x0
02caa8c0  str x0,[x19, #0x18]!
02caa8c4  mov x0,x19
02caa8c8  bl 0x029f59f4
02caa8cc  mov w0,#0x1
02caa8d0  stur w0,[x19, #-0x8]
02caa8d4  b 0x02caa9b4
02caa8d8  mov w8,#0xffffffff
02caa8dc  mov x0,xzr
02caa8e0  str w8,[x19, #0x10]
02caa8e4  bl 0x057ebae4
02caa8e8  ldr s1,[x19, #0x28]
02caa8ec  fmov s9,0x3fc00000
02caa8f0  fsub s8,s0,s1
02caa8f4  fcmp s8,s9
02caa8f8  b.pl 0x02caa944
02caa8fc  adrp x8,0x5e5b000
02caa900  ldr x8,[x8, #0xed0]
02caa904  ldr x0,[x8]
02caa908  bl 0x029f5cec
02caa90c  fsub s0,s9,s8
02caa910  mov x1,xzr
02caa914  mov x20,x0
02caa918  bl 0x057e85dc
02caa91c  str x20,[x19, #0x18]!
02caa920  mov x0,x19
02caa924  mov x1,x20
02caa928  bl 0x029f59f4
02caa92c  mov w8,#0x2
02caa930  mov w0,#0x1
02caa934  stur w8,[x19, #-0x8]
02caa938  b 0x02caa9b4
02caa93c  mov w8,#0xffffffff
02caa940  str w8,[x19, #0x10]
02caa944  adrp x8,0x5e5d000
02caa948  ldr x8,[x8, #0x368]
02caa94c  ldr x8,[x8]
02caa950  ldr x8,[x8, #0xb8]
02caa954  ldr x0,[x8]
02caa958  cbz x0,0x02caa9c4
02caa95c  mov x1,xzr
02caa960  bl 0x02c2a620
02caa964  adrp x19,0x625b000
02caa968  ldrb w8,[x19, #0xa57]
02caa96c  cbnz w8,0x02caa984
02caa970  adrp x0,0x5e5d000
02caa974  ldr x0,[x0, #0xd70]
02caa978  bl 0x029f5a50
02caa97c  mov w8,#0x1
02caa980  strb w8,[x19, #0xa57]
02caa984  adrp x8,0x5e5d000
02caa988  ldr x8,[x8, #0xd70]
02caa98c  ldr x8,[x8]
02caa990  ldr x8,[x8, #0xb8]
02caa994  ldr x0,[x8]
02caa998  cbz x0,0x02caa9c4
02caa99c  mov x1,xzr
02caa9a0  bl 0x02c226a0
02caa9a4  cbz x20,0x02caa9c4
02caa9a8  mov x0,x20
02caa9ac  bl 0x02ca8c5c
02caa9b0  mov w0,wzr
02caa9b4  ldp x20,x19,[sp, #0x20]
02caa9b8  ldr x30,[sp, #0x10]
02caa9bc  ldp d9,d8,[sp], #0x30
02caa9c0  ret
02caa9c4  bl 0x029f5cfc
