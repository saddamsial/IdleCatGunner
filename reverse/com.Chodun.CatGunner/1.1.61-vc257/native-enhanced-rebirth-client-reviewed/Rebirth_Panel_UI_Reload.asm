02c8785c  sub sp,sp,#0xd0
02c87860  str x30,[sp, #0xa0]
02c87864  stp x22,x21,[sp, #0xb0]
02c87868  stp x20,x19,[sp, #0xc0]
02c8786c  adrp x20,0x625c000
02c87870  adrp x21,0x5e5d000
02c87874  mov x19,x0
02c87878  ldrb w8,[x20, #0x392]
02c8787c  ldr x21,[x21, #0xd60]
02c87880  tbnz w8,#0x0,0x02c878a4
02c87884  adrp x0,0x5e5d000
02c87888  ldr x0,[x0, #0x338]
02c8788c  bl 0x029f5a50
02c87890  adrp x0,0x5e5d000
02c87894  ldr x0,[x0, #0xd60]
02c87898  bl 0x029f5a50
02c8789c  mov w8,#0x1
02c878a0  strb w8,[x20, #0x392]
02c878a4  movi v0.2D,#0x0
02c878a8  ldr x8,[x21]
02c878ac  ldr x8,[x8, #0xb8]
02c878b0  stp q0,q0,[sp, #0x40]
02c878b4  stp q0,q0,[sp, #0x60]
02c878b8  stp q0,q0,[sp, #0x80]
02c878bc  ldr x8,[x8]
02c878c0  cbz x8,0x02c87910
02c878c4  add x8,sp,#0x80
02c878c8  bl 0x02c88058
02c878cc  ldr x8,[x19, #0x38]
02c878d0  cbz x8,0x02c87910
02c878d4  adrp x22,0x5e5d000
02c878d8  mov x20,xzr
02c878dc  ldr x22,[x22, #0x338]
02c878e0  ldr w9,[x8, #0x18]
02c878e4  cmp w20,w9
02c878e8  b.ge 0x02c87914
02c878ec  cmp w20,w9
02c878f0  b.cs 0x02c87aa0
02c878f4  add x8,x8,x20, LSL #0x3
02c878f8  ldr x0,[x8, #0x20]
02c878fc  cbz x0,0x02c87910
02c87900  bl 0x02c88ae4
02c87904  ldr x8,[x19, #0x38]
02c87908  add x20,x20,#0x1
02c8790c  cbnz x8,0x02c878e0
02c87910  bl 0x029f5cfc
02c87914  ldr x20,[x19, #0x28]
02c87918  add x0,sp,#0x80
02c8791c  mov x1,xzr
02c87920  bl 0x0465bddc
02c87924  cbz x20,0x02c87910
02c87928  ldr x8,[x20]
02c8792c  mov x1,x0
02c87930  mov x0,x20
02c87934  ldr x9,[x8, #0x558]
02c87938  ldr x2,[x8, #0x560]
02c8793c  blr x9
02c87940  ldr x20,[x19, #0x30]
02c87944  add x8,sp,#0x20
02c87948  mov w0,#0x3
02c8794c  mov x1,xzr
02c87950  bl 0x046544b8
02c87954  ldp q0,q1,[sp, #0x20]
02c87958  mov x8,sp
02c8795c  add x0,sp,#0x80
02c87960  add x1,sp,#0x60
02c87964  mov x2,xzr
02c87968  stp q0,q1,[sp, #0x60]
02c8796c  bl 0x04658538
02c87970  ldp q0,q1,[sp]
02c87974  add x0,sp,#0x40
02c87978  mov x1,xzr
02c8797c  stp q0,q1,[sp, #0x40]
02c87980  bl 0x0465bddc
02c87984  cbz x20,0x02c87910
02c87988  ldr x8,[x20]
02c8798c  mov x1,x0
02c87990  mov x0,x20
02c87994  ldr x9,[x8, #0x558]
02c87998  ldr x2,[x8, #0x560]
02c8799c  blr x9
02c879a0  ldr x0,[x22]
02c879a4  ldr x20,[x19, #0x20]
02c879a8  ldr w8,[x0, #0xe4]
02c879ac  cbnz w8,0x02c879b8
02c879b0  bl 0x029f5bd0
02c879b4  ldr x0,[x22]
02c879b8  ldr x8,[x0, #0xb8]
02c879bc  mov x1,xzr
02c879c0  add x0,x8,#0x70
02c879c4  bl 0x0465bddc
02c879c8  cbz x20,0x02c87910
02c879cc  ldr x8,[x20]
02c879d0  mov x1,x0
02c879d4  mov x0,x20
02c879d8  ldr x9,[x8, #0x558]
02c879dc  ldr x2,[x8, #0x560]
02c879e0  blr x9
02c879e4  ldr x8,[x21]
02c879e8  ldr x8,[x8, #0xb8]
02c879ec  ldr x20,[x8]
02c879f0  cbz x20,0x02c87910
02c879f4  mov x0,x20
02c879f8  bl 0x02c883a0
02c879fc  ldr x8,[x21]
02c87a00  ldr x8,[x8, #0xb8]
02c87a04  ldr x0,[x8]
02c87a08  cbz x0,0x02c87910
02c87a0c  ldr w21,[x20, #0x4c]
02c87a10  bl 0x02c884dc
02c87a14  ldr x8,[x19, #0x40]
02c87a18  cbz x8,0x02c87910
02c87a1c  cmp w21,#0x1
02c87a20  mov w20,w0
02c87a24  mov x0,x8
02c87a28  cset w1,lt
02c87a2c  mov x2,xzr
02c87a30  bl 0x057dff3c
02c87a34  ldr x0,[x19, #0x48]
02c87a38  cbz x0,0x02c87910
02c87a3c  cmp w21,#0x0
02c87a40  mov x2,xzr
02c87a44  cset w8,gt
02c87a48  and w1,w20,w8
02c87a4c  bl 0x057dff3c
02c87a50  ldr x0,[x19, #0x50]
02c87a54  cbz x0,0x02c87910
02c87a58  cmp w21,#0x0
02c87a5c  eor w9,w20,#0x1
02c87a60  mov x2,xzr
02c87a64  cset w8,gt
02c87a68  and w1,w8,w9
02c87a6c  bl 0x057dff3c
02c87a70  mov x0,x19
02c87a74  mov x1,xzr
02c87a78  bl 0x057dc1c8
02c87a7c  cbz x0,0x02c87910
02c87a80  mov w1,#0x1
02c87a84  mov x2,xzr
02c87a88  bl 0x057dff3c
02c87a8c  ldp x20,x19,[sp, #0xc0]
02c87a90  ldr x30,[sp, #0xa0]
02c87a94  ldp x22,x21,[sp, #0xb0]
02c87a98  add sp,sp,#0xd0
02c87a9c  ret
02c87aa0  bl 0x029f5d04
