02b8787c  str d12,[sp, #-0x50]!
02b87880  stp d11,d10,[sp, #0x8]
02b87884  stp d9,d8,[sp, #0x18]
02b87888  str x30,[sp, #0x28]
02b8788c  stp x22,x21,[sp, #0x30]
02b87890  stp x20,x19,[sp, #0x40]
02b87894  adrp x21,0x625b000
02b87898  mov x20,x1
02b8789c  mov x19,x0
02b878a0  ldrb w8,[x21, #0x906]
02b878a4  tbnz w8,#0x0,0x02b878bc
02b878a8  adrp x0,0x5e5c000
02b878ac  ldr x0,[x0, #0xf00]
02b878b0  bl 0x029f5a50
02b878b4  mov w8,#0x1
02b878b8  strb w8,[x21, #0x906]
02b878bc  mov x21,x19
02b878c0  mov x1,xzr
02b878c4  str xzr,[x21, #0x50]!
02b878c8  mov x0,x21
02b878cc  bl 0x029f59f4
02b878d0  ldur x0,[x21, #-0x8]
02b878d4  cbz x0,0x02b87b2c
02b878d8  mov x1,xzr
02b878dc  bl 0x05aa2028
02b878e0  cmp w0,#0x1
02b878e4  b.ne 0x02b87908
02b878e8  ldr x0,[x19, #0x48]
02b878ec  cbz x0,0x02b87b2c
02b878f0  mov x1,xzr
02b878f4  bl 0x05aa31d8
02b878f8  mov x1,x0
02b878fc  str x0,[x21]
02b87900  mov x0,x21
02b87904  bl 0x029f59f4
02b87908  ldr x0,[x19, #0x30]
02b8790c  cbz x0,0x02b87b2c
02b87910  adrp x22,0x5e5c000
02b87914  mov x1,xzr
02b87918  ldr x22,[x22, #0xf00]
02b8791c  ldr x21,[x19, #0x50]
02b87920  bl 0x057eed98
02b87924  fmov s8,s0
02b87928  fmov s9,s1
02b8792c  ldr x0,[x22]
02b87930  fmov s10,s2
02b87934  ldr w8,[x0, #0xe4]
02b87938  cbnz w8,0x02b87940
02b8793c  bl 0x029f5bd0
02b87940  fmov s0,s8
02b87944  fmov s1,s9
02b87948  mov x0,x21
02b8794c  fmov s2,s10
02b87950  mov x1,xzr
02b87954  bl 0x05aa16bc
02b87958  ldr x0,[x19, #0x30]
02b8795c  cbz x0,0x02b87b2c
02b87960  mov x1,xzr
02b87964  fmov s10,s0
02b87968  fmov s11,s1
02b8796c  bl 0x057edf90
02b87970  cbz x20,0x02b87b2c
02b87974  ldr x0,[x19, #0x48]
02b87978  cbz x0,0x02b87b2c
02b8797c  fmov s2,0x3f000000
02b87980  ldr s3,[x20, #0x108]
02b87984  ldr s4,[x20, #0x104]
02b87988  mov x1,xzr
02b8798c  fsub s12,s3,s11
02b87990  fsub s10,s4,s10
02b87994  fmul s8,s0,s2
02b87998  fmul s9,s1,s2
02b8799c  bl 0x05aa232c
02b879a0  fmul s1,s8,s0
02b879a4  fmul s0,s9,s0
02b879a8  ldr w8,[x19, #0x28]
02b879ac  cmp w8,#0x2
02b879b0  fdiv s11,s10,s1
02b879b4  fdiv s12,s12,s0
02b879b8  stp s11,s12,[x19, #0x58]
02b879bc  b.eq 0x02b879d4
02b879c0  cmp w8,#0x1
02b879c4  b.ne 0x02b879dc
02b879c8  movi d12,#0x0
02b879cc  str wzr,[x19, #0x5c]
02b879d0  b 0x02b879dc
02b879d4  movi d11,#0x0
02b879d8  str wzr,[x19, #0x58]
02b879dc  adrp x20,0x625b000
02b879e0  ldrb w8,[x20, #0x52c]
02b879e4  cbnz w8,0x02b87a00
02b879e8  adrp x0,0x5e59000
02b879ec  ldr x0,[x0]
02b879f0  bl 0x029f5a50
02b879f4  ldp s11,s12,[x19, #0x58]
02b879f8  mov w8,#0x1
02b879fc  strb w8,[x20, #0x52c]
02b87a00  adrp x21,0x5e59000
02b87a04  ldr x21,[x21]
02b87a08  ldr x0,[x21]
02b87a0c  ldr w8,[x0, #0xe4]
02b87a10  cbz w8,0x02b87a28
02b87a14  fmul s0,s11,s11
02b87a18  fmul s1,s12,s12
02b87a1c  fadd s0,s0,s1
02b87a20  fsqrt s10,s0
02b87a24  b 0x02b87a5c
02b87a28  bl 0x029f5bd0
02b87a2c  fmul s0,s11,s11
02b87a30  fmul s1,s12,s12
02b87a34  ldrb w8,[x20, #0x52c]
02b87a38  ldp s11,s12,[x19, #0x58]
02b87a3c  fadd s0,s0,s1
02b87a40  fsqrt s10,s0
02b87a44  cbnz w8,0x02b87a5c
02b87a48  adrp x0,0x5e59000
02b87a4c  ldr x0,[x0]
02b87a50  bl 0x029f5a50
02b87a54  mov w8,#0x1
02b87a58  strb w8,[x20, #0x52c]
02b87a5c  ldr x0,[x21]
02b87a60  ldr w8,[x0, #0xe4]
02b87a64  cbnz w8,0x02b87a6c
02b87a68  bl 0x029f5bd0
02b87a6c  fmul s0,s11,s11
02b87a70  fmul s1,s12,s12
02b87a74  adrp x8,0x116c000
02b87a78  fadd s0,s0,s1
02b87a7c  ldr s1,[x8, #0x240]
02b87a80  fsqrt s0,s0
02b87a84  fcmp s0,s1
02b87a88  b.le 0x02b87a98
02b87a8c  fdiv s1,s11,s0
02b87a90  fdiv s2,s12,s0
02b87a94  b 0x02b87acc
02b87a98  adrp x20,0x625b000
02b87a9c  ldrb w8,[x20, #0x271]
02b87aa0  cbnz w8,0x02b87ab8
02b87aa4  adrp x0,0x5e59000
02b87aa8  ldr x0,[x0, #0x608]
02b87aac  bl 0x029f5a50
02b87ab0  mov w8,#0x1
02b87ab4  strb w8,[x20, #0x271]
02b87ab8  adrp x8,0x5e59000
02b87abc  ldr x8,[x8, #0x608]
02b87ac0  ldr x8,[x8]
02b87ac4  ldr x8,[x8, #0xb8]
02b87ac8  ldp s1,s2,[x8]
02b87acc  ldr x8,[x19]
02b87ad0  fmov s0,s10
02b87ad4  fmov s3,s8
02b87ad8  fmov s4,s9
02b87adc  ldr x1,[x19, #0x50]
02b87ae0  mov x0,x19
02b87ae4  ldp x9,x2,[x8, #0x1c8]
02b87ae8  blr x9
02b87aec  ldr x0,[x19, #0x38]
02b87af0  cbz x0,0x02b87b2c
02b87af4  ldp s1,s0,[x19, #0x58]
02b87af8  mov x1,xzr
02b87afc  ldr s3,[x19, #0x20]
02b87b00  ldp x20,x19,[sp, #0x40]
02b87b04  ldp x22,x21,[sp, #0x30]
02b87b08  ldr x30,[sp, #0x28]
02b87b0c  fmul s0,s9,s0
02b87b10  fmul s2,s8,s1
02b87b14  ldp d9,d8,[sp, #0x18]
02b87b18  ldp d11,d10,[sp, #0x8]
02b87b1c  fmul s1,s0,s3
02b87b20  fmul s0,s3,s2
02b87b24  ldr d12,[sp], #0x50
02b87b28  b 0x057edec8
02b87b2c  bl 0x029f5cfc
