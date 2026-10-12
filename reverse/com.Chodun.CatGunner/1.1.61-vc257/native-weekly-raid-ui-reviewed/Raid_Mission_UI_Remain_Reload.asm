02c558b0  sub sp,sp,#0x40
02c558b4  str x30,[sp, #0x10]
02c558b8  stp x22,x21,[sp, #0x20]
02c558bc  stp x20,x19,[sp, #0x30]
02c558c0  adrp x21,0x625c000
02c558c4  adrp x20,0x5e59000
02c558c8  mov x19,x0
02c558cc  ldrb w8,[x21, #0x18f]
02c558d0  ldr x20,[x20, #0x1c0]
02c558d4  tbnz w8,#0x0,0x02c55910
02c558d8  adrp x0,0x5e59000
02c558dc  ldr x0,[x0, #0x768]
02c558e0  bl 0x029f5a50
02c558e4  adrp x0,0x5e59000
02c558e8  ldr x0,[x0, #0x1c0]
02c558ec  bl 0x029f5a50
02c558f0  adrp x0,0x5e5a000
02c558f4  ldr x0,[x0, #0x180]
02c558f8  bl 0x029f5a50
02c558fc  adrp x0,0x5e63000
02c55900  ldr x0,[x0, #0x630]
02c55904  bl 0x029f5a50
02c55908  mov w8,#0x1
02c5590c  strb w8,[x21, #0x18f]
02c55910  ldr x0,[x20]
02c55914  ldr x20,[x19, #0x28]
02c55918  str xzr,[sp, #0x18]
02c5591c  ldr w8,[x0, #0xe4]
02c55920  cbnz w8,0x02c55928
02c55924  bl 0x029f5bd0
02c55928  mov x0,x20
02c5592c  mov x1,xzr
02c55930  mov x2,xzr
02c55934  bl 0x057e14b4
02c55938  tbnz w0,#0x0,0x02c55b1c
02c5593c  adrp x20,0x5e59000
02c55940  adrp x21,0x5e5a000
02c55944  ldr x20,[x20, #0x768]
02c55948  ldr x21,[x21, #0x180]
02c5594c  bl 0x02c54730
02c55950  ldr x8,[x20]
02c55954  ldr x19,[x19, #0x28]
02c55958  mov w1,#0x4
02c5595c  str x0,[sp, #0x18]
02c55960  mov x0,x8
02c55964  bl 0x029f5b40
02c55968  ldr x8,[x21]
02c5596c  mov x20,x0
02c55970  ldr w9,[x8, #0xe4]
02c55974  cbnz w9,0x02c55980
02c55978  mov x0,x8
02c5597c  bl 0x029f5bd0
02c55980  add x0,sp,#0x18
02c55984  mov x1,xzr
02c55988  bl 0x048680dc
02c5598c  adrp x22,0x5e58000
02c55990  add x1,sp,#0xc
02c55994  ldr x22,[x22, #0xa10]
02c55998  str w0,[sp, #0xc]
02c5599c  ldr x8,[x22, #0x48]
02c559a0  mov x0,x8
02c559a4  bl 0x029f5bd8
02c559a8  cbz x20,0x02c55b40
02c559ac  mov x21,x0
02c559b0  cbz x0,0x02c559c8
02c559b4  ldr x8,[x20]
02c559b8  mov x0,x21
02c559bc  ldr x1,[x8, #0x40]
02c559c0  bl 0x029f5bd4
02c559c4  cbz x0,0x02c55b34
02c559c8  ldr w8,[x20, #0x18]
02c559cc  cbz w8,0x02c55b30
02c559d0  mov x0,x20
02c559d4  mov x1,x21
02c559d8  str x21,[x0, #0x20]!
02c559dc  bl 0x029f59f4
02c559e0  add x0,sp,#0x18
02c559e4  mov x1,xzr
02c559e8  bl 0x04868108
02c559ec  ldr x8,[x22, #0x48]
02c559f0  str w0,[sp, #0x8]
02c559f4  add x1,sp,#0x8
02c559f8  mov x0,x8
02c559fc  bl 0x029f5bd8
02c55a00  mov x21,x0
02c55a04  cbz x0,0x02c55a1c
02c55a08  ldr x8,[x20]
02c55a0c  mov x0,x21
02c55a10  ldr x1,[x8, #0x40]
02c55a14  bl 0x029f5bd4
02c55a18  cbz x0,0x02c55b34
02c55a1c  ldr w8,[x20, #0x18]
02c55a20  tst w8,#0xfffffffe
02c55a24  b.eq 0x02c55b30
02c55a28  mov x0,x20
02c55a2c  mov x1,x21
02c55a30  str x21,[x0, #0x28]!
02c55a34  bl 0x029f59f4
02c55a38  add x0,sp,#0x18
02c55a3c  mov x1,xzr
02c55a40  bl 0x0486814c
02c55a44  ldr x8,[x22, #0x48]
02c55a48  str w0,[sp, #0x4]
02c55a4c  add x1,sp,#0x4
02c55a50  mov x0,x8
02c55a54  bl 0x029f5bd8
02c55a58  mov x21,x0
02c55a5c  cbz x0,0x02c55a74
02c55a60  ldr x8,[x20]
02c55a64  mov x0,x21
02c55a68  ldr x1,[x8, #0x40]
02c55a6c  bl 0x029f5bd4
02c55a70  cbz x0,0x02c55b34
02c55a74  ldr w8,[x20, #0x18]
02c55a78  cmp w8,#0x2
02c55a7c  b.ls 0x02c55b30
02c55a80  mov x0,x20
02c55a84  mov x1,x21
02c55a88  str x21,[x0, #0x30]!
02c55a8c  bl 0x029f59f4
02c55a90  add x0,sp,#0x18
02c55a94  mov x1,xzr
02c55a98  bl 0x04868194
02c55a9c  ldr x8,[x22, #0x48]
02c55aa0  str w0,[sp]
02c55aa4  mov x1,sp
02c55aa8  mov x0,x8
02c55aac  bl 0x029f5bd8
02c55ab0  mov x21,x0
02c55ab4  cbz x0,0x02c55acc
02c55ab8  ldr x8,[x20]
02c55abc  mov x0,x21
02c55ac0  ldr x1,[x8, #0x40]
02c55ac4  bl 0x029f5bd4
02c55ac8  cbz x0,0x02c55b34
02c55acc  ldr w8,[x20, #0x18]
02c55ad0  tst w8,#0xfffffffc
02c55ad4  b.eq 0x02c55b30
02c55ad8  mov x0,x20
02c55adc  mov x1,x21
02c55ae0  str x21,[x0, #0x38]!
02c55ae4  bl 0x029f59f4
02c55ae8  adrp x8,0x5e63000
02c55aec  mov x1,x20
02c55af0  mov x2,xzr
02c55af4  ldr x8,[x8, #0x630]
02c55af8  ldr x0,[x8]
02c55afc  bl 0x046c1d9c
02c55b00  cbz x19,0x02c55b40
02c55b04  ldr x8,[x19]
02c55b08  mov x1,x0
02c55b0c  mov x0,x19
02c55b10  ldr x9,[x8, #0x558]
02c55b14  ldr x2,[x8, #0x560]
02c55b18  blr x9
02c55b1c  ldp x20,x19,[sp, #0x30]
02c55b20  ldr x30,[sp, #0x10]
02c55b24  ldp x22,x21,[sp, #0x20]
02c55b28  add sp,sp,#0x40
02c55b2c  ret
02c55b30  bl 0x029f5d04
02c55b34  bl 0x029f5d20
02c55b38  mov x1,xzr
02c55b3c  bl 0x029f5bc0
02c55b40  bl 0x029f5cfc
