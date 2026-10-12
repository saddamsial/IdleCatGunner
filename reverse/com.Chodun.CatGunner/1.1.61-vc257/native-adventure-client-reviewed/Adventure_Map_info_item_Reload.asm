02c345c8  sub sp,sp,#0x50
02c345cc  stp x30,x25,[sp, #0x10]
02c345d0  stp x24,x23,[sp, #0x20]
02c345d4  stp x22,x21,[sp, #0x30]
02c345d8  stp x20,x19,[sp, #0x40]
02c345dc  adrp x22,0x625c000
02c345e0  adrp x23,0x5e63000
02c345e4  mov w19,w2
02c345e8  ldrb w8,[x22, #0x56]
02c345ec  ldr x23,[x23, #0xd0]
02c345f0  mov w21,w1
02c345f4  mov x20,x0
02c345f8  tbnz w8,#0x0,0x02c34628
02c345fc  adrp x0,0x5e5d000
02c34600  ldr x0,[x0, #0xd28]
02c34604  bl 0x029f5a50
02c34608  adrp x0,0x5e63000
02c3460c  ldr x0,[x0, #0xd0]
02c34610  bl 0x029f5a50
02c34614  adrp x0,0x5e63000
02c34618  ldr x0,[x0, #0xd8]
02c3461c  bl 0x029f5a50
02c34620  mov w8,#0x1
02c34624  strb w8,[x22, #0x56]
02c34628  adrp x24,0x5e58000
02c3462c  add w8,w19,#0x1
02c34630  add x1,sp,#0xc
02c34634  ldr x24,[x24, #0xa10]
02c34638  ldr x22,[x20, #0x60]
02c3463c  stp w21,w19,[x20, #0x90]
02c34640  str w8,[sp, #0xc]
02c34644  ldr x0,[x24, #0x48]
02c34648  bl 0x029f5bd8
02c3464c  ldr x8,[x23]
02c34650  mov x1,x0
02c34654  mov x2,xzr
02c34658  mov x0,x8
02c3465c  bl 0x046b6c0c
02c34660  cbz x22,0x02c3474c
02c34664  ldr x8,[x22]
02c34668  adrp x25,0x5e5d000
02c3466c  mov x1,x0
02c34670  ldr x25,[x25, #0xd28]
02c34674  mov x0,x22
02c34678  ldr x9,[x8, #0x558]
02c3467c  ldr x2,[x8, #0x560]
02c34680  blr x9
02c34684  ldr x0,[x25]
02c34688  ldr x22,[x20, #0x68]
02c3468c  ldr w8,[x0, #0xe4]
02c34690  cbnz w8,0x02c3469c
02c34694  bl 0x029f5bd0
02c34698  ldr x0,[x25]
02c3469c  ldr x8,[x0, #0xb8]
02c346a0  ldr x0,[x8, #0x10]
02c346a4  cbz x0,0x02c3474c
02c346a8  adrp x23,0x5e63000
02c346ac  mov w1,w19
02c346b0  mov x2,xzr
02c346b4  ldr x23,[x23, #0xd8]
02c346b8  bl 0x02c2d080
02c346bc  ldr x8,[x24, #0x48]
02c346c0  str w0,[sp, #0x8]
02c346c4  add x1,sp,#0x8
02c346c8  mov x0,x8
02c346cc  bl 0x029f5bd8
02c346d0  ldr x8,[x23]
02c346d4  mov x1,x0
02c346d8  mov x2,xzr
02c346dc  mov x0,x8
02c346e0  bl 0x046b6c0c
02c346e4  cbz x22,0x02c3474c
02c346e8  ldr x8,[x22]
02c346ec  mov x1,x0
02c346f0  mov x0,x22
02c346f4  ldr x9,[x8, #0x558]
02c346f8  ldr x2,[x8, #0x560]
02c346fc  blr x9
02c34700  ldr x8,[x20, #0x50]
02c34704  cbz x8,0x02c3474c
02c34708  mov x23,xzr
02c3470c  mov w22,w21
02c34710  ldr w9,[x8, #0x18]
02c34714  cmp w23,w9
02c34718  b.ge 0x02c34750
02c3471c  cmp w23,w9
02c34720  b.cs 0x02c34980
02c34724  add x8,x8,x23, LSL #0x3
02c34728  ldr x0,[x8, #0x20]
02c3472c  cbz x0,0x02c3474c
02c34730  cmp w22,w23
02c34734  mov x2,xzr
02c34738  cset w1,eq
02c3473c  bl 0x057dff3c
02c34740  ldr x8,[x20, #0x50]
02c34744  add x23,x23,#0x1
02c34748  cbnz x8,0x02c34710
02c3474c  bl 0x029f5cfc
02c34750  ldr x0,[x25]
02c34754  ldr x23,[x20, #0x58]
02c34758  ldr w8,[x0, #0xe4]
02c3475c  cbnz w8,0x02c34764
02c34760  bl 0x029f5bd0
02c34764  mov w0,w21
02c34768  mov x1,xzr
02c3476c  bl 0x02c2ce84
02c34770  cbz x23,0x02c3474c
02c34774  mov x1,x0
02c34778  mov x0,x23
02c3477c  mov x2,xzr
02c34780  bl 0x058d34cc
02c34784  ldr x8,[x25]
02c34788  ldr x8,[x8, #0xb8]
02c3478c  ldr x0,[x8, #0x10]
02c34790  cbz x0,0x02c3474c
02c34794  mov w1,w21
02c34798  mov w2,w19
02c3479c  mov x3,xzr
02c347a0  bl 0x02c2e5f8
02c347a4  mov w23,w0
02c347a8  mov w0,w21
02c347ac  mov x1,xzr
02c347b0  bl 0x02c2e664
02c347b4  ldr x8,[x20, #0x20]
02c347b8  cbz x8,0x02c3474c
02c347bc  cmp w23,#0x0
02c347c0  mov w21,w0
02c347c4  mov x0,x8
02c347c8  cset w1,eq
02c347cc  mov x2,xzr
02c347d0  bl 0x057dff3c
02c347d4  ldr x0,[x20, #0x28]
02c347d8  cbz x0,0x02c3474c
02c347dc  cmp w23,#0x1
02c347e0  mov x2,xzr
02c347e4  cset w8,eq
02c347e8  and w1,w8,w21
02c347ec  bl 0x057dff3c
02c347f0  ldr x0,[x20, #0x40]
02c347f4  cbz x0,0x02c3474c
02c347f8  cmp w23,#0x1
02c347fc  eor w9,w21,#0x1
02c34800  mov x2,xzr
02c34804  cset w8,eq
02c34808  and w1,w8,w9
02c3480c  bl 0x057dff3c
02c34810  ldr x0,[x20, #0x30]
02c34814  cbz x0,0x02c3474c
02c34818  cmp w23,#0x2
02c3481c  mov x2,xzr
02c34820  cset w1,eq
02c34824  bl 0x057dff3c
02c34828  ldr x0,[x20, #0x38]
02c3482c  cbz x0,0x02c3474c
02c34830  cmp w23,#0x3
02c34834  mov x2,xzr
02c34838  cset w1,eq
02c3483c  bl 0x057dff3c
02c34840  and w8,w23,#0xfffffffe
02c34844  cmp w8,#0x2
02c34848  b.ne 0x02c348c4
02c3484c  ldr x0,[x25]
02c34850  ldr w8,[x0, #0xe4]
02c34854  cbnz w8,0x02c34860
02c34858  bl 0x029f5bd0
02c3485c  ldr x0,[x25]
02c34860  ldr x8,[x0, #0xb8]
02c34864  ldr x0,[x8, #0x10]
02c34868  cbz x0,0x02c3474c
02c3486c  mov w1,w22
02c34870  mov w2,w19
02c34874  mov x3,xzr
02c34878  bl 0x02c2e0ac
02c3487c  mov x1,x0
02c34880  mov x0,x20
02c34884  bl 0x02c34984
02c34888  mov x0,x20
02c3488c  bl 0x02c34b50
02c34890  cmp w23,#0x2
02c34894  b.ne 0x02c348d8
02c34898  mov x0,x20
02c3489c  bl 0x02c34b94
02c348a0  mov x1,x0
02c348a4  mov x0,x20
02c348a8  mov x2,xzr
02c348ac  bl 0x057e2120
02c348b0  mov x1,x0
02c348b4  mov x0,x20
02c348b8  str x1,[x0, #0x98]!
02c348bc  bl 0x029f59f4
02c348c0  b 0x02c348d8
02c348c4  mov x0,x20
02c348c8  mov x1,xzr
02c348cc  bl 0x02c34984
02c348d0  mov x0,x20
02c348d4  bl 0x02c34b50
02c348d8  mov x0,x20
02c348dc  bl 0x02c34c00
02c348e0  ldr x20,[x20, #0x78]
02c348e4  mov x0,xzr
02c348e8  bl 0x02bdfa58
02c348ec  ldr x8,[x25]
02c348f0  mov x21,x0
02c348f4  ldr w9,[x8, #0xe4]
02c348f8  cbnz w9,0x02c34908
02c348fc  mov x0,x8
02c34900  bl 0x029f5bd0
02c34904  ldr x8,[x25]
02c34908  ldr x8,[x8, #0xb8]
02c3490c  ldr x8,[x8, #0x8]
02c34910  cbz x8,0x02c3474c
02c34914  ldr w9,[x8, #0x18]
02c34918  cmp w9,w19
02c3491c  b.ls 0x02c34980
02c34920  add x8,x8,w19, SXTW  #0x2
02c34924  ldr x0,[x24, #0x48]
02c34928  add x1,sp,#0x4
02c3492c  ldr w8,[x8, #0x20]
02c34930  add w8,w8,#0x1
02c34934  str w8,[sp, #0x4]
02c34938  bl 0x029f5bd8
02c3493c  mov x1,x0
02c34940  mov x0,x21
02c34944  mov x2,xzr
02c34948  bl 0x046b6c0c
02c3494c  cbz x20,0x02c3474c
02c34950  ldr x8,[x20]
02c34954  mov x1,x0
02c34958  mov x0,x20
02c3495c  ldr x9,[x8, #0x558]
02c34960  ldr x2,[x8, #0x560]
02c34964  blr x9
02c34968  ldp x20,x19,[sp, #0x40]
02c3496c  ldp x22,x21,[sp, #0x30]
02c34970  ldp x24,x23,[sp, #0x20]
02c34974  ldp x30,x25,[sp, #0x10]
02c34978  add sp,sp,#0x50
02c3497c  ret
02c34980  bl 0x029f5d04
