02c6c878  sub sp,sp,#0x40
02c6c87c  stp x30,x23,[sp, #0x10]
02c6c880  stp x22,x21,[sp, #0x20]
02c6c884  stp x20,x19,[sp, #0x30]
02c6c888  adrp x23,0x625c000
02c6c88c  adrp x20,0x5e62000
02c6c890  adrp x22,0x5e59000
02c6c894  ldrb w8,[x23, #0x29b]
02c6c898  ldr x20,[x20, #0x648]
02c6c89c  ldr x22,[x22, #0x1c0]
02c6c8a0  mov w21,w1
02c6c8a4  mov x19,x0
02c6c8a8  tbnz w8,#0x0,0x02c6c8e4
02c6c8ac  adrp x0,0x5e5d000
02c6c8b0  ldr x0,[x0, #0x338]
02c6c8b4  bl 0x029f5a50
02c6c8b8  adrp x0,0x5e59000
02c6c8bc  ldr x0,[x0, #0x1c0]
02c6c8c0  bl 0x029f5a50
02c6c8c4  adrp x0,0x5e62000
02c6c8c8  ldr x0,[x0, #0x648]
02c6c8cc  bl 0x029f5a50
02c6c8d0  adrp x0,0x5e63000
02c6c8d4  ldr x0,[x0, #0x398]
02c6c8d8  bl 0x029f5a50
02c6c8dc  mov w8,#0x1
02c6c8e0  strb w8,[x23, #0x29b]
02c6c8e4  ldr x8,[x20]
02c6c8e8  ldr x0,[x22]
02c6c8ec  str w21,[x19, #0x20]
02c6c8f0  ldr x8,[x8, #0xb8]
02c6c8f4  ldr w9,[x0, #0xe4]
02c6c8f8  ldr x20,[x8]
02c6c8fc  cbnz w9,0x02c6c904
02c6c900  bl 0x029f5bd0
02c6c904  mov x0,x20
02c6c908  mov x1,xzr
02c6c90c  mov x2,xzr
02c6c910  bl 0x057e14b4
02c6c914  tbnz w0,#0x0,0x02c6cc20
02c6c918  tbnz w21,#0x1f,0x02c6c940
02c6c91c  cbz x20,0x02c6cc34
02c6c920  ldr x8,[x20, #0x20]
02c6c924  cbz x8,0x02c6cc34
02c6c928  ldr w9,[x8, #0x18]
02c6c92c  cmp w9,w21
02c6c930  b.le 0x02c6c964
02c6c934  add x8,x8,w21, UXTW  #0x2
02c6c938  ldr w8,[x8, #0x20]
02c6c93c  b 0x02c6c968
02c6c940  mov w8,#0xffffffff
02c6c944  str w8,[x19, #0x7c]
02c6c948  cbz x20,0x02c6cc34
02c6c94c  ldr w8,[x20, #0x28]
02c6c950  mov w9,#0x10
02c6c954  add w8,w8,#0x6
02c6c958  cmp w8,#0x10
02c6c95c  csel w9,w8,w9,lt
02c6c960  b 0x02c6c9e0
02c6c964  mov w8,#0xffffffff
02c6c968  ldr w9,[x20, #0x28]
02c6c96c  mov w10,#0x10
02c6c970  str w8,[x19, #0x7c]
02c6c974  add w9,w9,#0x6
02c6c978  cmp w9,#0x10
02c6c97c  csel w9,w9,w10,lt
02c6c980  bic w10,w9,w9, ASR #0x1f
02c6c984  cmp w10,w21
02c6c988  b.ls 0x02c6c9e0
02c6c98c  cmn w8,#0x1
02c6c990  mov w8,#0x2
02c6c994  cinc w8,w8,ne
02c6c998  str w8,[x19, #0x78]
02c6c99c  b.eq 0x02c6c9f4
02c6c9a0  ldr x0,[x22]
02c6c9a4  ldr x21,[x19, #0x48]
02c6c9a8  ldr w8,[x0, #0xe4]
02c6c9ac  cbnz w8,0x02c6c9b4
02c6c9b0  bl 0x029f5bd0
02c6c9b4  mov x0,x21
02c6c9b8  mov x1,xzr
02c6c9bc  mov x2,xzr
02c6c9c0  bl 0x057dfa70
02c6c9c4  tbz w0,#0x0,0x02c6c9f4
02c6c9c8  ldr x0,[x19, #0x48]
02c6c9cc  cbz x0,0x02c6cc34
02c6c9d0  ldr w1,[x19, #0x7c]
02c6c9d4  mov x2,xzr
02c6c9d8  bl 0x02c75ad0
02c6c9dc  b 0x02c6c9f4
02c6c9e0  bic w8,w9,w9, ASR #0x1f
02c6c9e4  cmp w21,#0x10
02c6c9e8  ccmp w8,w21,#0x0,lt
02c6c9ec  cset w8,eq
02c6c9f0  str w8,[x19, #0x78]
02c6c9f4  ldr x0,[x22]
02c6c9f8  ldr x21,[x19, #0x28]
02c6c9fc  ldr w8,[x0, #0xe4]
02c6ca00  cbnz w8,0x02c6ca08
02c6ca04  bl 0x029f5bd0
02c6ca08  mov x0,x21
02c6ca0c  mov x1,xzr
02c6ca10  mov x2,xzr
02c6ca14  bl 0x057dfa70
02c6ca18  tbz w0,#0x0,0x02c6ca38
02c6ca1c  ldr x0,[x19, #0x28]
02c6ca20  cbz x0,0x02c6cc34
02c6ca24  ldr w8,[x19, #0x78]
02c6ca28  mov x2,xzr
02c6ca2c  cmp w8,#0x2
02c6ca30  cset w1,eq
02c6ca34  bl 0x057dff3c
02c6ca38  ldr x0,[x22]
02c6ca3c  ldr x21,[x19, #0x30]
02c6ca40  ldr w8,[x0, #0xe4]
02c6ca44  cbnz w8,0x02c6ca4c
02c6ca48  bl 0x029f5bd0
02c6ca4c  mov x0,x21
02c6ca50  mov x1,xzr
02c6ca54  mov x2,xzr
02c6ca58  bl 0x057dfa70
02c6ca5c  tbz w0,#0x0,0x02c6ca7c
02c6ca60  ldr x0,[x19, #0x30]
02c6ca64  cbz x0,0x02c6cc34
02c6ca68  ldr w8,[x19, #0x78]
02c6ca6c  mov x2,xzr
02c6ca70  cmp w8,#0x3
02c6ca74  cset w1,eq
02c6ca78  bl 0x057dff3c
02c6ca7c  ldr x0,[x22]
02c6ca80  ldr x21,[x19, #0x38]
02c6ca84  ldr w8,[x0, #0xe4]
02c6ca88  cbnz w8,0x02c6ca90
02c6ca8c  bl 0x029f5bd0
02c6ca90  mov x0,x21
02c6ca94  mov x1,xzr
02c6ca98  mov x2,xzr
02c6ca9c  bl 0x057dfa70
02c6caa0  tbz w0,#0x0,0x02c6cac0
02c6caa4  ldr x0,[x19, #0x38]
02c6caa8  cbz x0,0x02c6cc34
02c6caac  ldr w8,[x19, #0x78]
02c6cab0  mov x2,xzr
02c6cab4  cmp w8,#0x1
02c6cab8  cset w1,eq
02c6cabc  bl 0x057dff3c
02c6cac0  ldr x0,[x22]
02c6cac4  ldr x21,[x19, #0x40]
02c6cac8  ldr w8,[x0, #0xe4]
02c6cacc  cbnz w8,0x02c6cad4
02c6cad0  bl 0x029f5bd0
02c6cad4  mov x0,x21
02c6cad8  mov x1,xzr
02c6cadc  mov x2,xzr
02c6cae0  bl 0x057dfa70
02c6cae4  tbz w0,#0x0,0x02c6cb04
02c6cae8  ldr x0,[x19, #0x40]
02c6caec  cbz x0,0x02c6cc34
02c6caf0  ldr w8,[x19, #0x78]
02c6caf4  mov x2,xzr
02c6caf8  cmp w8,#0x0
02c6cafc  cset w1,eq
02c6cb00  bl 0x057dff3c
02c6cb04  ldr w8,[x19, #0x78]
02c6cb08  cmp w8,#0x1
02c6cb0c  b.ne 0x02c6cc20
02c6cb10  ldr x0,[x22]
02c6cb14  ldr x21,[x19, #0x50]
02c6cb18  ldr w8,[x0, #0xe4]
02c6cb1c  cbnz w8,0x02c6cb24
02c6cb20  bl 0x029f5bd0
02c6cb24  mov x0,x21
02c6cb28  mov x1,xzr
02c6cb2c  mov x2,xzr
02c6cb30  bl 0x057dfa70
02c6cb34  tbz w0,#0x0,0x02c6cc20
02c6cb38  ldr w8,[x20, #0x28]
02c6cb3c  mov w9,#0x32
02c6cb40  mov w10,#0x32
02c6cb44  add x1,sp,#0xc
02c6cb48  madd w21,w8,w9,w10
02c6cb4c  adrp x8,0x5e58000
02c6cb50  ldr x8,[x8, #0xa10]
02c6cb54  ldr x20,[x19, #0x50]
02c6cb58  ldr x0,[x8, #0x48]
02c6cb5c  str w21,[sp, #0xc]
02c6cb60  bl 0x029f5bd8
02c6cb64  adrp x8,0x5e63000
02c6cb68  mov x1,x0
02c6cb6c  mov x2,xzr
02c6cb70  ldr x8,[x8, #0x398]
02c6cb74  ldr x8,[x8]
02c6cb78  mov x0,x8
02c6cb7c  bl 0x046b6c0c
02c6cb80  cbz x20,0x02c6cc34
02c6cb84  ldr x8,[x20]
02c6cb88  mov x1,x0
02c6cb8c  mov x0,x20
02c6cb90  ldr x9,[x8, #0x558]
02c6cb94  ldr x2,[x8, #0x560]
02c6cb98  blr x9
02c6cb9c  adrp x22,0x5e5d000
02c6cba0  ldr x22,[x22, #0x338]
02c6cba4  ldr x20,[x19, #0x50]
02c6cba8  ldr x0,[x22]
02c6cbac  ldr w8,[x0, #0xe4]
02c6cbb0  cbnz w8,0x02c6cbbc
02c6cbb4  bl 0x029f5bd0
02c6cbb8  ldr x0,[x22]
02c6cbbc  ldr x8,[x0, #0xb8]
02c6cbc0  mov x2,xzr
02c6cbc4  ldp x0,x1,[x8, #0x90]
02c6cbc8  bl 0x02b1e644
02c6cbcc  cmp w0,w21
02c6cbd0  b.ge 0x02c6cbe8
02c6cbd4  add x8,x19,#0x68
02c6cbd8  add x9,x19,#0x6c
02c6cbdc  add x10,x19,#0x70
02c6cbe0  add x11,x19,#0x74
02c6cbe4  b 0x02c6cbf8
02c6cbe8  add x8,x19,#0x58
02c6cbec  add x9,x19,#0x5c
02c6cbf0  add x10,x19,#0x60
02c6cbf4  add x11,x19,#0x64
02c6cbf8  cbz x20,0x02c6cc34
02c6cbfc  ldr x12,[x20]
02c6cc00  ldr s3,[x11]
02c6cc04  mov x0,x20
02c6cc08  ldr s2,[x10]
02c6cc0c  ldr s1,[x9]
02c6cc10  ldr s0,[x8]
02c6cc14  ldr x8,[x12, #0x2a8]
02c6cc18  ldr x1,[x12, #0x2b0]
02c6cc1c  blr x8
02c6cc20  ldp x20,x19,[sp, #0x30]
02c6cc24  ldp x22,x21,[sp, #0x20]
02c6cc28  ldp x30,x23,[sp, #0x10]
02c6cc2c  add sp,sp,#0x40
02c6cc30  ret
02c6cc34  bl 0x029f5cfc
