02c63258  sub sp,sp,#0x70
02c6325c  stp d15,d14,[sp, #0x10]
02c63260  stp d13,d12,[sp, #0x20]
02c63264  stp d11,d10,[sp, #0x30]
02c63268  stp d9,d8,[sp, #0x40]
02c6326c  stp x30,x21,[sp, #0x50]
02c63270  stp x20,x19,[sp, #0x60]
02c63274  mov x19,x1
02c63278  mov x20,x0
02c6327c  bl 0x02c628ec
02c63280  cbz x0,0x02c633b0
02c63284  mov x1,xzr
02c63288  bl 0x057ed9fc
02c6328c  cbz x19,0x02c633b0
02c63290  fmov s8,0x3f000000
02c63294  mov x0,x19
02c63298  fmul s9,s3,s8
02c6329c  fmul s10,s2,s8
02c632a0  bl 0x02c62880
02c632a4  fmul s0,s0,s8
02c632a8  movi d2,#0x0
02c632ac  fmul s1,s1,s8
02c632b0  mov x0,xzr
02c632b4  fsub s3,s0,s10
02c632b8  fsub s0,s10,s0
02c632bc  fsub s4,s1,s9
02c632c0  fsub s5,s9,s1
02c632c4  fcmp s3,s0
02c632c8  fcsel s9,s2,s3,gt
02c632cc  fcsel s1,s2,s0,gt
02c632d0  fcmp s4,s5
02c632d4  fcsel s11,s2,s5,gt
02c632d8  fcsel s12,s2,s4,gt
02c632dc  fmov s0,s9
02c632e0  str s1,[sp, #0xc]
02c632e4  bl 0x057d55d4
02c632e8  fmov s10,s0
02c632ec  fmov s0,s12
02c632f0  mov x0,xzr
02c632f4  fmov s1,s11
02c632f8  bl 0x057d55d4
02c632fc  fmov s13,s0
02c63300  ldr w8,[x20, #0x2c]
02c63304  cmp w8,#0x1
02c63308  b.lt 0x02c63388
02c6330c  fmov s8,0xbf800000
02c63310  mov w21,wzr
02c63314  fmov s0,s9
02c63318  ldr s1,[sp, #0xc]
02c6331c  mov x0,xzr
02c63320  bl 0x057d55d4
02c63324  fmov s14,s0
02c63328  fmov s0,s12
02c6332c  mov x0,xzr
02c63330  fmov s1,s11
02c63334  bl 0x057d55d4
02c63338  fmov s15,s0
02c6333c  fmov s0,s14
02c63340  mov x0,x20
02c63344  mov x1,x19
02c63348  fmov s1,s15
02c6334c  bl 0x02c641ac
02c63350  ldr s1,[x20, #0x28]
02c63354  fcmp s0,s1
02c63358  b.ge 0x02c63380
02c6335c  fcmp s0,s8
02c63360  ldr w8,[x20, #0x2c]
02c63364  add w21,w21,#0x1
02c63368  fcsel s13,s15,s13,gt
02c6336c  fcsel s10,s14,s10,gt
02c63370  fcsel s8,s0,s8,gt
02c63374  cmp w21,w8
02c63378  b.lt 0x02c63314
02c6337c  b 0x02c63388
02c63380  fmov s10,s14
02c63384  fmov s13,s15
02c63388  fmov s0,s10
02c6338c  fmov s1,s13
02c63390  ldp x20,x19,[sp, #0x60]
02c63394  ldp x30,x21,[sp, #0x50]
02c63398  ldp d9,d8,[sp, #0x40]
02c6339c  ldp d11,d10,[sp, #0x30]
02c633a0  ldp d13,d12,[sp, #0x20]
02c633a4  ldp d15,d14,[sp, #0x10]
02c633a8  add sp,sp,#0x70
02c633ac  ret
02c633b0  bl 0x029f5cfc
