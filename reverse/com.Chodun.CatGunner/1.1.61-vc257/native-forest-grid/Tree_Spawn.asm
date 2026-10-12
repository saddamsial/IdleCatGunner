02cabdac  sub sp,sp,#0x70
02cabdb0  str d10,[sp, #0x40]
02cabdb4  stp d9,d8,[sp, #0x48]
02cabdb8  str x30,[sp, #0x58]
02cabdbc  stp x20,x19,[sp, #0x60]
02cabdc0  mov x20,x0
02cabdc4  ldr x0,[x0, #0x20]
02cabdc8  cbz x0,0x02cabe4c
02cabdcc  fmov s9,s1
02cabdd0  fmov s10,s0
02cabdd4  mov x19,x3
02cabdd8  ldp q0,q1,[x1]
02cabddc  fmov s8,s2
02cabde0  add x1,sp,#0x20
02cabde4  mov x3,xzr
02cabde8  stp q0,q1,[sp, #0x20]
02cabdec  ldp q0,q2,[x2]
02cabdf0  mov x2,sp
02cabdf4  stp q0,q2,[sp]
02cabdf8  bl 0x02c5c998
02cabdfc  mov x0,x20
02cabe00  mov x1,xzr
02cabe04  bl 0x057dc0f8
02cabe08  cbz x0,0x02cabe4c
02cabe0c  fmov s0,s10
02cabe10  fmov s1,s9
02cabe14  mov x1,xzr
02cabe18  fmov s2,s8
02cabe1c  bl 0x057ee3b4
02cabe20  ldr x0,[x20, #0x28]
02cabe24  cbz x0,0x02cabe4c
02cabe28  mov x1,x19
02cabe2c  mov x2,xzr
02cabe30  bl 0x0578eb10
02cabe34  ldp x20,x19,[sp, #0x60]
02cabe38  ldr x30,[sp, #0x58]
02cabe3c  ldp d9,d8,[sp, #0x48]
02cabe40  ldr d10,[sp, #0x40]
02cabe44  add sp,sp,#0x70
02cabe48  ret
02cabe4c  bl 0x029f5cfc
