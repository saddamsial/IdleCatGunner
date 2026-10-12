02c35734  sub sp,sp,#0x50
02c35738  str x30,[sp, #0x10]
02c3573c  stp x24,x23,[sp, #0x20]
02c35740  stp x22,x21,[sp, #0x30]
02c35744  stp x20,x19,[sp, #0x40]
02c35748  adrp x20,0x625c000
02c3574c  adrp x21,0x5e5d000
02c35750  mov x19,x0
02c35754  ldrb w8,[x20, #0x64]
02c35758  ldr x21,[x21, #0xd28]
02c3575c  tbnz w8,#0x0,0x02c35798
02c35760  adrp x0,0x5e5d000
02c35764  ldr x0,[x0, #0xd28]
02c35768  bl 0x029f5a50
02c3576c  adrp x0,0x5e61000
02c35770  ldr x0,[x0, #0xf18]
02c35774  bl 0x029f5a50
02c35778  adrp x0,0x5e63000
02c3577c  ldr x0,[x0, #0x80]
02c35780  bl 0x029f5a50
02c35784  adrp x0,0x5e61000
02c35788  ldr x0,[x0, #0xf28]
02c3578c  bl 0x029f5a50
02c35790  mov w8,#0x1
02c35794  strb w8,[x20, #0x64]
02c35798  ldr x0,[x21]
02c3579c  ldr w8,[x0, #0xe4]
02c357a0  cbnz w8,0x02c357ac
02c357a4  bl 0x029f5bd0
02c357a8  ldr x0,[x21]
02c357ac  ldr x8,[x0, #0xb8]
02c357b0  ldr x8,[x8, #0x10]
02c357b4  cbz x8,0x02c35928
02c357b8  adrp x22,0x5e58000
02c357bc  ldrsw x23,[x8, #0x30]
02c357c0  adrp x24,0x5e61000
02c357c4  ldr x22,[x22, #0xa10]
02c357c8  ldr x24,[x24, #0xf18]
02c357cc  ldr x20,[x19, #0x20]
02c357d0  add w8,w23,#0x1
02c357d4  add x1,sp,#0x1c
02c357d8  ldr x0,[x22, #0x48]
02c357dc  str w8,[sp, #0x1c]
02c357e0  bl 0x029f5bd8
02c357e4  ldr x8,[x24]
02c357e8  mov x1,x0
02c357ec  mov x2,xzr
02c357f0  mov x0,x8
02c357f4  bl 0x046b6c0c
02c357f8  cbz x20,0x02c35928
02c357fc  ldr x8,[x20]
02c35800  mov x1,x0
02c35804  mov x0,x20
02c35808  ldr x9,[x8, #0x558]
02c3580c  ldr x2,[x8, #0x560]
02c35810  blr x9
02c35814  cmp w23,#0xf
02c35818  b.ne 0x02c35850
02c3581c  ldr x0,[x19, #0x28]
02c35820  cbz x0,0x02c35928
02c35824  adrp x8,0x5e63000
02c35828  ldr x8,[x8, #0x80]
02c3582c  ldr x9,[x0]
02c35830  ldr x1,[x8]
02c35834  ldr x8,[x9, #0x558]
02c35838  ldr x2,[x9, #0x560]
02c3583c  blr x8
02c35840  ldr x0,[x19, #0x30]
02c35844  cbz x0,0x02c35928
02c35848  fmov s0,0x3f800000
02c3584c  b 0x02c35908
02c35850  ldr x0,[x21]
02c35854  ldr w8,[x0, #0xe4]
02c35858  cbnz w8,0x02c35864
02c3585c  bl 0x029f5bd0
02c35860  ldr x0,[x21]
02c35864  ldr x8,[x0, #0xb8]
02c35868  ldr x8,[x8, #0x10]
02c3586c  cbz x8,0x02c35928
02c35870  ldr x9,[x8, #0x38]
02c35874  cbz x9,0x02c35928
02c35878  ldr w10,[x9, #0x18]
02c3587c  cmp w23,w10
02c35880  b.cs 0x02c3592c
02c35884  add x9,x9,x23, LSL #0x2
02c35888  ldr w23,[x8, #0x34]
02c3588c  ldr x0,[x22, #0x48]
02c35890  ldr x20,[x19, #0x28]
02c35894  add x1,sp,#0x18
02c35898  ldr w24,[x9, #0x20]
02c3589c  str w23,[sp, #0x18]
02c358a0  bl 0x029f5bd8
02c358a4  mov x21,x0
02c358a8  ldr x0,[x22, #0x48]
02c358ac  add x1,sp,#0xc
02c358b0  str w24,[sp, #0xc]
02c358b4  bl 0x029f5bd8
02c358b8  adrp x8,0x5e61000
02c358bc  mov x2,x0
02c358c0  mov x1,x21
02c358c4  ldr x8,[x8, #0xf28]
02c358c8  mov x3,xzr
02c358cc  ldr x8,[x8]
02c358d0  mov x0,x8
02c358d4  bl 0x046c1d14
02c358d8  cbz x20,0x02c35928
02c358dc  ldr x8,[x20]
02c358e0  mov x1,x0
02c358e4  mov x0,x20
02c358e8  ldr x9,[x8, #0x558]
02c358ec  ldr x2,[x8, #0x560]
02c358f0  blr x9
02c358f4  ldr x0,[x19, #0x30]
02c358f8  cbz x0,0x02c35928
02c358fc  scvtf s0,w23
02c35900  scvtf s1,w24
02c35904  fdiv s0,s0,s1
02c35908  mov x1,xzr
02c3590c  bl 0x02c28290
02c35910  ldp x20,x19,[sp, #0x40]
02c35914  ldr x30,[sp, #0x10]
02c35918  ldp x22,x21,[sp, #0x30]
02c3591c  ldp x24,x23,[sp, #0x20]
02c35920  add sp,sp,#0x50
02c35924  ret
02c35928  bl 0x029f5cfc
02c3592c  bl 0x029f5d04
