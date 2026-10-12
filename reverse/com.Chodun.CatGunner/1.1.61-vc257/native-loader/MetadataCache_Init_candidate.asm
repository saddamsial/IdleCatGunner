02a5a824  sub sp,sp,#0xb0
02a5a828  stp x29,x30,[sp, #0x50]
02a5a82c  stp x28,x27,[sp, #0x60]
02a5a830  stp x26,x25,[sp, #0x70]
02a5a834  stp x24,x23,[sp, #0x80]
02a5a838  stp x22,x21,[sp, #0x90]
02a5a83c  stp x20,x19,[sp, #0xa0]
02a5a840  adrp x0,0x6272000
02a5a844  add x0,x0,#0x848
02a5a848  adrp x1,0x6272000
02a5a84c  add x1,x1,#0x84c
02a5a850  bl 0x02a4335c
02a5a854  mov w23,w0
02a5a858  tbz w0,#0x0,0x02a5abb8
02a5a85c  adrp x21,0x6272000
02a5a860  ldr x8,[x21, #0x838]
02a5a864  ldr x0,[x8, #0x8]
02a5a868  ldr w1,[x8]
02a5a86c  bl 0x02a10734
02a5a870  adrp x19,0x6272000
02a5a874  ldr x8,[x19, #0x840]
02a5a878  ldr w0,[x8, #0x4]
02a5a87c  bl 0x02a109f4
02a5a880  ldr x8,[x19, #0x840]
02a5a884  ldr w0,[x8, #0x8]
02a5a888  bl 0x02a10a0c
02a5a88c  ldr x8,[x21, #0x838]
02a5a890  adrp x0,0x6272000
02a5a894  add x0,x0,#0x5d8
02a5a898  ldrsw x1,[x8, #0x10]
02a5a89c  bl 0x02a5ac24
02a5a8a0  ldr x8,[x21, #0x838]
02a5a8a4  ldr w9,[x8, #0x10]
02a5a8a8  cmp w9,#0x1
02a5a8ac  b.lt 0x02a5a8e8
02a5a8b0  mov x19,xzr
02a5a8b4  mov x22,xzr
02a5a8b8  adrp x20,0x6272000
02a5a8bc  add x20,x20,#0x5d8
02a5a8c0  ldr x8,[x8, #0x18]
02a5a8c4  mov x0,x20
02a5a8c8  add x1,x8,x19
02a5a8cc  bl 0x02a5ac74
02a5a8d0  ldr x8,[x21, #0x838]
02a5a8d4  add x22,x22,#0x1
02a5a8d8  add x19,x19,#0x8
02a5a8dc  ldrsw x9,[x8, #0x10]
02a5a8e0  cmp x22,x9
02a5a8e4  b.lt 0x02a5a8c0
02a5a8e8  adrp x8,0x6272000
02a5a8ec  adrp x9,0x6272000
02a5a8f0  ldr x8,[x8, #0x830]
02a5a8f4  ldrb w9,[x9, #0x7f8]
02a5a8f8  ldr x20,[x8, #0x60]
02a5a8fc  ldr w21,[x8, #0x58]
02a5a900  cbz w9,0x02a5a914
02a5a904  adrp x8,0x6272000
02a5a908  ldr x0,[x8, #0x7e8]
02a5a90c  cbz x0,0x02a5a914
02a5a910  bl 0x05afc010
02a5a914  mov w8,#0x38
02a5a918  clz x9,x21
02a5a91c  mov w10,#0x7e
02a5a920  umaddl x1,w21,w8,x20
02a5a924  sub x8,x10,x9, LSL #0x1
02a5a928  cmp w21,#0x0
02a5a92c  add x2,sp,#0x30
02a5a930  mov x0,x20
02a5a934  mov w4,#0x1
02a5a938  csel x3,xzr,x8,eq
02a5a93c  bl 0x02a5f494
02a5a940  adrp x9,0x6272000
02a5a944  adrp x8,0x6272000
02a5a948  add x8,x8,#0x7e8
02a5a94c  ldr x9,[x9, #0x830]
02a5a950  adrp x10,0x6272000
02a5a954  stp x20,x21,[x8]
02a5a958  ldrb w10,[x10, #0x810]
02a5a95c  strb wzr,[x8, #0x10]
02a5a960  ldr x20,[x9, #0x70]
02a5a964  ldr w21,[x9, #0x68]
02a5a968  cbz w10,0x02a5a97c
02a5a96c  adrp x8,0x6272000
02a5a970  ldr x0,[x8, #0x800]
02a5a974  cbz x0,0x02a5a97c
02a5a978  bl 0x05afc010
02a5a97c  clz x8,x21
02a5a980  mov w9,#0x7e
02a5a984  add x1,x20,x21, LSL #0x4
02a5a988  sub x8,x9,x8, LSL #0x1
02a5a98c  cmp w21,#0x0
02a5a990  add x2,sp,#0x30
02a5a994  mov x0,x20
02a5a998  mov w4,#0x1
02a5a99c  add x26,sp,#0x30
02a5a9a0  csel x3,xzr,x8,eq
02a5a9a4  bl 0x02a608c0
02a5a9a8  adrp x28,0x6272000
02a5a9ac  adrp x8,0x6272000
02a5a9b0  add x8,x8,#0x800
02a5a9b4  ldrsw x0,[x28, #0x848]
02a5a9b8  mov w1,#0x48
02a5a9bc  stp x20,x21,[x8]
02a5a9c0  strb wzr,[x8, #0x10]
02a5a9c4  bl 0x02a2a8e4
02a5a9c8  adrp x8,0x6272000
02a5a9cc  adrp x24,0x6272000
02a5a9d0  mov w1,#0x58
02a5a9d4  ldrsw x8,[x8, #0x84c]
02a5a9d8  str x0,[x24, #0x850]
02a5a9dc  mov x0,x8
02a5a9e0  bl 0x02a2a8e4
02a5a9e4  ldr w8,[x28, #0x848]
02a5a9e8  adrp x25,0x6272000
02a5a9ec  str x0,[x25, #0x858]
02a5a9f0  cmp w8,#0x1
02a5a9f4  b.lt 0x02a5ab8c
02a5a9f8  mov x20,xzr
02a5a9fc  orr x8,x26,#0x1
02a5aa00  mov w27,#0x48
02a5aa04  str w23,[sp, #0xc]
02a5aa08  str x8,[sp, #0x10]
02a5aa0c  ldr x29,[x24, #0x850]
02a5aa10  nop
02a5aa14  madd x21,x20,x27,x29
02a5aa18  add x2,sp,#0x4c
02a5aa1c  mov w1,w20
02a5aa20  mov x0,x21
02a5aa24  bl 0x02a441b4
02a5aa28  ldrsw x8,[sp, #0x4c]
02a5aa2c  ldr x9,[x25, #0x858]
02a5aa30  mov w10,#0x58
02a5aa34  ldr x1,[x21]
02a5aa38  add x0,sp,#0x18
02a5aa3c  mov x26,x25
02a5aa40  smaddl x9,w8,w10,x9
02a5aa44  cmn w8,#0x1
02a5aa48  csel x8,xzr,x9,eq
02a5aa4c  str x8,[x21, #0x10]
02a5aa50  bl 0x029fc894
02a5aa54  add x8,sp,#0x30
02a5aa58  add x0,sp,#0x18
02a5aa5c  bl 0x02a2b424
02a5aa60  ldrb w8,[sp, #0x18]
02a5aa64  mov x25,x24
02a5aa68  tbz w8,#0x0,0x02a5aa74
02a5aa6c  ldr x0,[sp, #0x28]
02a5aa70  bl 0x05afb6f0
02a5aa74  ldrb w8,[sp, #0x30]
02a5aa78  ldr x9,[sp, #0x38]
02a5aa7c  mov x24,x28
02a5aa80  lsr x10,x8,#0x1
02a5aa84  tst w8,#0x1
02a5aa88  csel x8,x10,x9,eq
02a5aa8c  add x0,x8,#0x1
02a5aa90  mov w1,#0x1
02a5aa94  bl 0x02a2a8e4
02a5aa98  madd x8,x20,x27,x29
02a5aa9c  str x0,[x8, #0x8]
02a5aaa0  ldrb w8,[sp, #0x30]
02a5aaa4  ldr x9,[sp, #0x40]
02a5aaa8  tst w8,#0x1
02a5aaac  ldr x8,[sp, #0x10]
02a5aab0  csel x1,x8,x9,eq
02a5aab4  bl 0x05afb990
02a5aab8  adrp x8,0x6272000
02a5aabc  ldr x8,[x8, #0x830]
02a5aac0  ldr w19,[x8, #0x78]
02a5aac4  cbz w19,0x02a5aaf8
02a5aac8  madd x22,x20,x27,x29
02a5aacc  ldr x21,[x21]
02a5aad0  ldr x28,[x8, #0x80]
02a5aad4  ldr x23,[x28]
02a5aad8  mov x0,x21
02a5aadc  ldr x1,[x23]
02a5aae0  bl 0x05afb7b0
02a5aae4  cbnz w0,0x02a5aaec
02a5aae8  stur x23,[x22, #0x38]
02a5aaec  subs x19,x19,#0x1
02a5aaf0  add x28,x28,#0x8
02a5aaf4  b.ne 0x02a5aad4
02a5aaf8  madd x8,x20,x27,x29
02a5aafc  strb wzr,[x8, #0x44]
02a5ab00  ldrb w8,[sp, #0x30]
02a5ab04  tbz w8,#0x0,0x02a5ab10
02a5ab08  ldr x0,[sp, #0x40]
02a5ab0c  bl 0x05afb6f0
02a5ab10  ldrsw x8,[x24, #0x848]
02a5ab14  add x20,x20,#0x1
02a5ab18  mov x28,x24
02a5ab1c  mov x24,x25
02a5ab20  mov x25,x26
02a5ab24  cmp x20,x8
02a5ab28  b.lt 0x02a5aa0c
02a5ab2c  ldr w23,[sp, #0xc]
02a5ab30  cmp w8,#0x1
02a5ab34  b.lt 0x02a5ab8c
02a5ab38  mov x21,xzr
02a5ab3c  mov x20,xzr
02a5ab40  mov w19,#0x48
02a5ab44  ldr x22,[x25, #0x858]
02a5ab48  add x2,sp,#0x30
02a5ab4c  mov w1,w20
02a5ab50  add x0,x22,x21
02a5ab54  bl 0x02a44248
02a5ab58  ldrsw x8,[sp, #0x30]
02a5ab5c  ldr x9,[x24, #0x850]
02a5ab60  add x0,x22,x21
02a5ab64  smaddl x9,w8,w19,x9
02a5ab68  cmn w8,#0x1
02a5ab6c  csel x8,xzr,x9,eq
02a5ab70  str x8,[x22, x21, LSL #0x0]
02a5ab74  bl 0x02a31960
02a5ab78  ldrsw x8,[x28, #0x848]
02a5ab7c  add x20,x20,#0x1
02a5ab80  add x21,x21,#0x58
02a5ab84  cmp x20,x8
02a5ab88  b.lt 0x02a5ab44
02a5ab8c  bl 0x02a5ace8
02a5ab90  stp xzr,xzr,[sp, #0x30]
02a5ab94  str xzr,[sp, #0x40]
02a5ab98  add x0,sp,#0x30
02a5ab9c  bl 0x02a4549c
02a5aba0  add x0,sp,#0x30
02a5aba4  bl 0x02a2d380
02a5aba8  ldr x0,[sp, #0x30]
02a5abac  cbz x0,0x02a5abb8
02a5abb0  str x0,[sp, #0x38]
02a5abb4  bl 0x05afb6f0
02a5abb8  and w0,w23,#0x1
02a5abbc  ldp x20,x19,[sp, #0xa0]
02a5abc0  ldp x22,x21,[sp, #0x90]
02a5abc4  ldp x24,x23,[sp, #0x80]
02a5abc8  ldp x26,x25,[sp, #0x70]
02a5abcc  ldp x28,x27,[sp, #0x60]
02a5abd0  ldp x29,x30,[sp, #0x50]
02a5abd4  add sp,sp,#0xb0
02a5abd8  ret
