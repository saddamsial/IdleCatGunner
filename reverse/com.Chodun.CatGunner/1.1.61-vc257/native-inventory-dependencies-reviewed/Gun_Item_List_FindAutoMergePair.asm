02c76ccc  sub sp,sp,#0xb0
02c76cd0  stp x29,x30,[sp, #0x50]
02c76cd4  stp x28,x27,[sp, #0x60]
02c76cd8  stp x26,x25,[sp, #0x70]
02c76cdc  stp x24,x23,[sp, #0x80]
02c76ce0  stp x22,x21,[sp, #0x90]
02c76ce4  stp x20,x19,[sp, #0xa0]
02c76ce8  adrp x19,0x625c000
02c76cec  mov x20,x2
02c76cf0  mov x22,x1
02c76cf4  ldrb w8,[x19, #0x2f8]
02c76cf8  mov x21,x0
02c76cfc  tbnz w8,#0x0,0x02c76d80
02c76d00  adrp x0,0x5e63000
02c76d04  ldr x0,[x0, #0xa90]
02c76d08  bl 0x029f5a50
02c76d0c  adrp x0,0x5e63000
02c76d10  ldr x0,[x0, #0xa98]
02c76d14  bl 0x029f5a50
02c76d18  adrp x0,0x5e63000
02c76d1c  ldr x0,[x0, #0xaa0]
02c76d20  bl 0x029f5a50
02c76d24  adrp x0,0x5e5d000
02c76d28  ldr x0,[x0, #0xd40]
02c76d2c  bl 0x029f5a50
02c76d30  adrp x0,0x5e63000
02c76d34  ldr x0,[x0, #0xc68]
02c76d38  bl 0x029f5a50
02c76d3c  adrp x0,0x5e63000
02c76d40  ldr x0,[x0, #0xc70]
02c76d44  bl 0x029f5a50
02c76d48  adrp x0,0x5e63000
02c76d4c  ldr x0,[x0, #0xc78]
02c76d50  bl 0x029f5a50
02c76d54  adrp x0,0x5e63000
02c76d58  ldr x0,[x0, #0xc80]
02c76d5c  bl 0x029f5a50
02c76d60  adrp x0,0x5e63000
02c76d64  ldr x0,[x0, #0xab0]
02c76d68  bl 0x029f5a50
02c76d6c  adrp x0,0x5e59000
02c76d70  ldr x0,[x0, #0x1c0]
02c76d74  bl 0x029f5a50
02c76d78  mov w8,#0x1
02c76d7c  strb w8,[x19, #0x2f8]
02c76d80  mov x0,x22
02c76d84  mov x1,xzr
02c76d88  stp xzr,xzr,[sp, #0x30]
02c76d8c  str xzr,[sp, #0x40]
02c76d90  str xzr,[x22]
02c76d94  str x22,[sp, #0x8]
02c76d98  bl 0x029f59f4
02c76d9c  mov x0,x20
02c76da0  mov x1,xzr
02c76da4  str xzr,[x20]
02c76da8  str x20,[sp, #0x10]
02c76dac  bl 0x029f59f4
02c76db0  ldr x0,[x21, #0x40]
02c76db4  cbz x0,0x02c7717c
02c76db8  adrp x8,0x5e5d000
02c76dbc  adrp x26,0x5e63000
02c76dc0  adrp x27,0x5e63000
02c76dc4  ldr x8,[x8, #0xd40]
02c76dc8  adrp x19,0x5e63000
02c76dcc  adrp x20,0x5e63000
02c76dd0  ldr x26,[x26, #0xab0]
02c76dd4  ldr x27,[x27, #0xa98]
02c76dd8  ldr x19,[x19, #0xc80]
02c76ddc  ldr x20,[x20, #0xc78]
02c76de0  ldr x8,[x8]
02c76de4  adrp x28,0x5e63000
02c76de8  ldr x28,[x28, #0xc68]
02c76dec  adrp x29,0x5e63000
02c76df0  ldr x8,[x8, #0xb8]
02c76df4  ldr x29,[x29, #0xa90]
02c76df8  ldr x1,[x26]
02c76dfc  ldr x23,[x8]
02c76e00  add x8,sp,#0x18
02c76e04  bl 0x0452d690
02c76e08  ldr x8,[sp, #0x28]
02c76e0c  ldur q0,[sp, #0x18]
02c76e10  mov x22,xzr
02c76e14  str x8,[sp, #0x40]
02c76e18  add x8,sp,#0x30
02c76e1c  str q0,[sp, #0x30]
02c76e20  stp xzr,x8,[sp, #0x18]
02c76e24  ldr x1,[x27]
02c76e28  add x0,sp,#0x30
02c76e2c  bl 0x03fa4e10
02c76e30  tbz w0,#0x0,0x02c76f04
02c76e34  ldr x24,[sp, #0x40]
02c76e38  cbz x24,0x02c77174
02c76e3c  mov x0,x24
02c76e40  mov x1,xzr
02c76e44  bl 0x057dc1c8
02c76e48  cbz x0,0x02c77178
02c76e4c  mov x1,xzr
02c76e50  bl 0x057e0000
02c76e54  tbz w0,#0x0,0x02c76e24
02c76e58  ldrb w8,[x24, #0xb8]
02c76e5c  cbz w8,0x02c76e24
02c76e60  cbnz x22,0x02c76e78
02c76e64  ldr x0,[x19]
02c76e68  bl 0x029f5cec
02c76e6c  ldr x1,[x20]
02c76e70  mov x22,x0
02c76e74  bl 0x042bb9a4
02c76e78  adrp x8,0x5e59000
02c76e7c  ldr x8,[x8, #0x1c0]
02c76e80  ldr x25,[x24, #0xc0]
02c76e84  ldr x0,[x8]
02c76e88  ldr w8,[x0, #0xe4]
02c76e8c  cbnz w8,0x02c76e94
02c76e90  bl 0x029f5bd0
02c76e94  mov x0,x25
02c76e98  mov x1,xzr
02c76e9c  mov x2,xzr
02c76ea0  bl 0x057dfa70
02c76ea4  tbz w0,#0x0,0x02c76ebc
02c76ea8  cbz x22,0x02c77190
02c76eac  ldr x1,[x24, #0xc0]
02c76eb0  ldr x2,[x28]
02c76eb4  mov x0,x22
02c76eb8  bl 0x042bcb98
02c76ebc  adrp x8,0x5e59000
02c76ec0  ldr x8,[x8, #0x1c0]
02c76ec4  ldr x25,[x24, #0xd0]
02c76ec8  ldr x0,[x8]
02c76ecc  ldr w8,[x0, #0xe4]
02c76ed0  cbnz w8,0x02c76ed8
02c76ed4  bl 0x029f5bd0
02c76ed8  mov x0,x25
02c76edc  mov x1,xzr
02c76ee0  mov x2,xzr
02c76ee4  bl 0x057dfa70
02c76ee8  tbz w0,#0x0,0x02c76e24
02c76eec  cbz x22,0x02c77194
02c76ef0  ldr x1,[x24, #0xd0]
02c76ef4  ldr x2,[x28]
02c76ef8  mov x0,x22
02c76efc  bl 0x042bcb98
02c76f00  b 0x02c76e24
02c76f04  ldr x24,[sp, #0x18]
02c76f08  mov w19,#0x6
02c76f0c  ldr x0,[sp, #0x20]
02c76f10  ldr x1,[x29]
02c76f14  bl 0x03fa4e0c
02c76f18  cbnz x24,0x02c77188
02c76f1c  cmp w19,#0x6
02c76f20  b.eq 0x02c76f28
02c76f24  cbnz w19,0x02c77150
02c76f28  cbz x23,0x02c7717c
02c76f2c  ldr x8,[x23, #0x48]
02c76f30  cbz x8,0x02c7717c
02c76f34  ldrsw x8,[x8, #0x18]
02c76f38  mov w9,#0x6667
02c76f3c  mov x0,x23
02c76f40  movk w9,#0x6666, LSL #16
02c76f44  mov x1,xzr
02c76f48  smull x8,w8,w9
02c76f4c  lsr x9,x8,#0x3f
02c76f50  asr x8,x8,#0x21
02c76f54  add w8,w8,w9
02c76f58  sub w19,w8,#0x2
02c76f5c  bl 0x02c695b4
02c76f60  cmp w0,w19
02c76f64  csel w28,w0,w19,lt
02c76f68  tbnz w28,#0x1f,0x02c77144
02c76f6c  mov w25,#0x6667
02c76f70  mov w19,wzr
02c76f74  add x20,sp,#0x30
02c76f78  movk w25,#0x6666, LSL #16
02c76f7c  str wzr,[sp, #0x4]
02c76f80  ldr x0,[x21, #0x40]
02c76f84  cbz x0,0x02c7717c
02c76f88  ldr x1,[x26]
02c76f8c  add x8,sp,#0x18
02c76f90  bl 0x0452d690
02c76f94  ldur q0,[sp, #0x18]
02c76f98  ldr x9,[sp, #0x28]
02c76f9c  mov x8,xzr
02c76fa0  stp xzr,x20,[sp, #0x18]
02c76fa4  str q0,[sp, #0x30]
02c76fa8  str x9,[sp, #0x40]
02c76fac  ldr x1,[x27]
02c76fb0  mov x23,x8
02c76fb4  add x0,sp,#0x30
02c76fb8  bl 0x03fa4e10
02c76fbc  tbz w0,#0x0,0x02c770bc
02c76fc0  ldr x24,[sp, #0x40]
02c76fc4  cbz x24,0x02c770f0
02c76fc8  mov x0,x24
02c76fcc  mov x1,xzr
02c76fd0  bl 0x057dc1c8
02c76fd4  cbz x0,0x02c770f8
02c76fd8  mov x1,xzr
02c76fdc  bl 0x057e0000
02c76fe0  mov x8,x23
02c76fe4  tbz w0,#0x0,0x02c76fac
02c76fe8  ldrsw x8,[x24, #0x8c]
02c76fec  smull x8,w8,w25
02c76ff0  lsr x9,x8,#0x3f
02c76ff4  asr x8,x8,#0x21
02c76ff8  add w8,w8,w9
02c76ffc  cmp w8,w19
02c77000  mov x8,x23
02c77004  b.ne 0x02c76fac
02c77008  ldrb w9,[x24, #0x70]
02c7700c  mov x8,x23
02c77010  cbnz w9,0x02c76fac
02c77014  ldrb w9,[x24, #0x78]
02c77018  mov x8,x23
02c7701c  cbnz w9,0x02c76fac
02c77020  ldrb w9,[x24, #0xb8]
02c77024  mov x8,x23
02c77028  cbnz w9,0x02c76fac
02c7702c  ldrb w9,[x24, #0x79]
02c77030  mov x8,x23
02c77034  cbnz w9,0x02c76fac
02c77038  cbz x22,0x02c7705c
02c7703c  adrp x8,0x5e63000
02c77040  ldr x8,[x8, #0xc70]
02c77044  ldr x2,[x8]
02c77048  mov x0,x22
02c7704c  mov x1,x24
02c77050  bl 0x042bc0a8
02c77054  mov x8,x23
02c77058  tbnz w0,#0x0,0x02c76fac
02c7705c  adrp x8,0x5e59000
02c77060  ldr x8,[x8, #0x1c0]
02c77064  ldr x0,[x8]
02c77068  ldr w8,[x0, #0xe4]
02c7706c  cbnz w8,0x02c77074
02c77070  bl 0x029f5bd0
02c77074  mov x0,x23
02c77078  mov x1,xzr
02c7707c  mov x2,xzr
02c77080  bl 0x057e14b4
02c77084  mov x8,x24
02c77088  tbnz w0,#0x0,0x02c76fac
02c7708c  ldr x0,[sp, #0x10]
02c77090  str x23,[x0]
02c77094  mov x1,x23
02c77098  bl 0x029f59f4
02c7709c  ldr x0,[sp, #0x8]
02c770a0  str x24,[x0]
02c770a4  mov x1,x24
02c770a8  bl 0x029f59f4
02c770ac  mov w8,#0x1
02c770b0  mov w24,#0xd
02c770b4  str w8,[sp, #0x4]
02c770b8  b 0x02c770c0
02c770bc  mov w24,#0xe
02c770c0  ldr x23,[sp, #0x18]
02c770c4  ldr x0,[sp, #0x20]
02c770c8  ldr x1,[x29]
02c770cc  bl 0x03fa4e0c
02c770d0  cbnz x23,0x02c77180
02c770d4  cmp w24,#0xe
02c770d8  b.eq 0x02c770e0
02c770dc  cbnz w24,0x02c7714c
02c770e0  cmp w19,w28
02c770e4  add w19,w19,#0x1
02c770e8  b.ne 0x02c76f80
02c770ec  b 0x02c77144
02c770f0  bl 0x029f5cfc
02c770f8  bl 0x029f5cfc
02c77144  mov w8,wzr
02c77148  b 0x02c77150
02c7714c  ldr w8,[sp, #0x4]
02c77150  ldp x20,x19,[sp, #0xa0]
02c77154  and w0,w8,#0x1
02c77158  ldp x22,x21,[sp, #0x90]
02c7715c  ldp x24,x23,[sp, #0x80]
02c77160  ldp x26,x25,[sp, #0x70]
02c77164  ldp x28,x27,[sp, #0x60]
02c77168  ldp x29,x30,[sp, #0x50]
02c7716c  add sp,sp,#0xb0
02c77170  ret
02c77174  bl 0x029f5cfc
02c77178  bl 0x029f5cfc
02c7717c  bl 0x029f5cfc
02c77180  mov x0,x23
02c77184  bl 0x029f5cf4
02c77188  mov x0,x24
02c7718c  bl 0x029f5cf4
02c77190  bl 0x029f5cfc
02c77194  bl 0x029f5cfc
