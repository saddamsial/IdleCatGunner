02c59600  sub sp,sp,#0x50
02c59604  stp x30,x19,[sp, #0x40]
02c59608  mov x19,x0
02c5960c  ldr x0,[x0, #0xa8]
02c59610  cbz x0,0x02c5967c
02c59614  ldr w8,[x19, #0xb0]
02c59618  add w1,w8,#0x1
02c5961c  bl 0x02c562c8
02c59620  ldr x8,[x19, #0xf0]
02c59624  cbz x8,0x02c5967c
02c59628  ldr x8,[x8, #0x20]
02c5962c  cbz x8,0x02c5967c
02c59630  ldr x0,[x19, #0xa8]
02c59634  cbz x0,0x02c5967c
02c59638  ldur q0,[x8, #0x28]
02c5963c  ldur q1,[x8, #0x38]
02c59640  add x1,sp,#0x20
02c59644  ldur q2,[x8, #0x48]
02c59648  mov x2,sp
02c5964c  stp q0,q1,[sp, #0x20]
02c59650  ldur q0,[x8, #0x58]
02c59654  stp q2,q0,[sp]
02c59658  bl 0x02c563f0
02c5965c  ldr x0,[x19, #0xa8]
02c59660  cbz x0,0x02c5967c
02c59664  ldr w2,[x19, #0x80]
02c59668  ldr w1,[x19, #0xb0]
02c5966c  bl 0x02c56570
02c59670  ldp x30,x19,[sp, #0x40]
02c59674  add sp,sp,#0x50
02c59678  ret
02c5967c  bl 0x029f5cfc
