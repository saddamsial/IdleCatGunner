02c4126c  sub sp,sp,#0xd0
02c41270  stp d15,d14,[sp, #0x50]
02c41274  stp d13,d12,[sp, #0x60]
02c41278  stp d11,d10,[sp, #0x70]
02c4127c  stp d9,d8,[sp, #0x80]
02c41280  stp x30,x25,[sp, #0x90]
02c41284  stp x24,x23,[sp, #0xa0]
02c41288  stp x22,x21,[sp, #0xb0]
02c4128c  stp x20,x19,[sp, #0xc0]
02c41290  adrp x20,0x625c000
02c41294  mov x19,x0
02c41298  ldrb w8,[x20, #0xaa]
02c4129c  tbnz w8,#0x0,0x02c412cc
02c412a0  adrp x0,0x5e59000
02c412a4  ldr x0,[x0, #0x1c0]
02c412a8  bl 0x029f5a50
02c412ac  adrp x0,0x5e5b000
02c412b0  ldr x0,[x0, #0xa0]
02c412b4  bl 0x029f5a50
02c412b8  adrp x0,0x5e5d000
02c412bc  ldr x0,[x0, #0x368]
02c412c0  bl 0x029f5a50
02c412c4  mov w8,#0x1
02c412c8  strb w8,[x20, #0xaa]
02c412cc  movi v0.2D,#0x0
02c412d0  ldr x0,[x19, #0xe8]
02c412d4  stur q0,[sp, #0x3c]
02c412d8  stp q0,q0,[sp, #0x20]
02c412dc  cbz x0,0x02c415ec
02c412e0  adrp x20,0x5e5d000
02c412e4  mov x1,xzr
02c412e8  ldr x20,[x20, #0x368]
02c412ec  ldr s11,[x19, #0x128]
02c412f0  bl 0x057eed98
02c412f4  ldr x8,[x20]
02c412f8  strb wzr,[x19, #0x294]
02c412fc  ldr x8,[x8, #0xb8]
02c41300  ldr x8,[x8]
02c41304  cbz x8,0x02c415ec
02c41308  ldr w9,[x19, #0x128]
02c4130c  cmp w9,#0x1
02c41310  b.lt 0x02c414dc
02c41314  fmov s8,s0
02c41318  scvtf s0,s11
02c4131c  mov w9,#0x43b40000
02c41320  fmov s9,s1
02c41324  fmov s1,w9
02c41328  mov w9,#0x7f7fffff
02c4132c  fmov s10,s2
02c41330  adrp x23,0x5e5b000
02c41334  adrp x10,0x116c000
02c41338  ldr x23,[x23, #0xa0]
02c4133c  ldr w24,[x8, #0x20]
02c41340  mov x20,xzr
02c41344  fdiv s11,s1,s0
02c41348  fmov s0,w9
02c4134c  adrp x9,0x116c000
02c41350  ldr s12,[x9, #0x26c]
02c41354  ldr s1,[x10, #0x1b0]
02c41358  mov w22,wzr
02c4135c  mov w25,#0x1
02c41360  stp s0,s1,[sp, #0x10]
02c41364  str s0,[sp, #0xc]
02c41368  scvtf s0,w22
02c4136c  add x0,sp,#0x1c
02c41370  add x1,sp,#0x18
02c41374  fmul s0,s11,s0
02c41378  fmul s0,s0,s12
02c4137c  bl 0x05afb270
02c41380  ldp s15,s14,[sp, #0x18]
02c41384  mov x1,xzr
02c41388  ldr w0,[x19, #0xb4]
02c4138c  ldr s13,[x19, #0xa4]
02c41390  bl 0x057e0dd4
02c41394  ldr x8,[x23]
02c41398  mov w21,w0
02c4139c  ldr w9,[x8, #0xe4]
02c413a0  cbnz w9,0x02c413ac
02c413a4  mov x0,x8
02c413a8  bl 0x029f5bd0
02c413ac  movi d4,#0x0
02c413b0  fmov s0,s8
02c413b4  add x0,sp,#0x20
02c413b8  fmov s1,s9
02c413bc  fmov s2,s10
02c413c0  mov w1,w21
02c413c4  fmov s3,s14
02c413c8  fmov s5,s15
02c413cc  mov x2,xzr
02c413d0  fmov s6,s13
02c413d4  bl 0x0586766c
02c413d8  tbz w0,#0x0,0x02c414c8
02c413dc  add x0,sp,#0x20
02c413e0  mov x1,xzr
02c413e4  bl 0x0586b19c
02c413e8  cbz x0,0x02c415ec
02c413ec  mov x1,xzr
02c413f0  bl 0x057dc0f8
02c413f4  cbz x0,0x02c415ec
02c413f8  mov x1,xzr
02c413fc  bl 0x057eed98
02c41400  ldr s3,[sp, #0x14]
02c41404  mov x0,x19
02c41408  bl 0x02c38de0
02c4140c  tbz w0,#0x0,0x02c41464
02c41410  add x0,sp,#0x20
02c41414  mov x1,xzr
02c41418  bl 0x0586b260
02c4141c  ldr s1,[sp, #0x10]
02c41420  fcmp s0,s1
02c41424  b.pl 0x02c414c8
02c41428  add x0,sp,#0x20
02c4142c  mov x1,xzr
02c41430  bl 0x0586b260
02c41434  add x0,sp,#0x20
02c41438  mov x1,xzr
02c4143c  str s0,[sp, #0x10]
02c41440  bl 0x0586b19c
02c41444  mov x20,x0
02c41448  add x0,sp,#0x20
02c4144c  mov x1,xzr
02c41450  bl 0x0586b248
02c41454  str s0,[x19, #0x1e8]
02c41458  str s1,[x19, #0x1ec]
02c4145c  str s2,[x19, #0x1f0]
02c41460  b 0x02c414c8
02c41464  cmp w24,#0x4
02c41468  b.ne 0x02c414c8
02c4146c  add x0,sp,#0x20
02c41470  mov x1,xzr
02c41474  bl 0x0586b260
02c41478  ldr s1,[sp, #0xc]
02c4147c  fcmp s0,s1
02c41480  b.pl 0x02c414c8
02c41484  add x0,sp,#0x20
02c41488  mov x1,xzr
02c4148c  bl 0x0586b260
02c41490  add x0,sp,#0x20
02c41494  mov x1,xzr
02c41498  str s0,[sp, #0xc]
02c4149c  bl 0x0586b19c
02c414a0  cbz x0,0x02c415ec
02c414a4  mov x1,xzr
02c414a8  bl 0x057dc0f8
02c414ac  cbz x0,0x02c415ec
02c414b0  mov x1,xzr
02c414b4  bl 0x057eed98
02c414b8  str s0,[x19, #0x288]
02c414bc  str s1,[x19, #0x28c]
02c414c0  str s2,[x19, #0x290]
02c414c4  strb w25,[x19, #0x294]
02c414c8  ldr w8,[x19, #0x128]
02c414cc  add w22,w22,#0x1
02c414d0  cmp w22,w8
02c414d4  b.lt 0x02c41368
02c414d8  b 0x02c414e0
02c414dc  mov x20,xzr
02c414e0  adrp x22,0x5e59000
02c414e4  ldr x22,[x22, #0x1c0]
02c414e8  ldr x21,[x19, #0x110]
02c414ec  ldr x0,[x22]
02c414f0  ldr w8,[x0, #0xe4]
02c414f4  cbnz w8,0x02c414fc
02c414f8  bl 0x029f5bd0
02c414fc  mov x0,x21
02c41500  mov x1,xzr
02c41504  mov x2,xzr
02c41508  bl 0x057dfa70
02c4150c  tbz w0,#0x0,0x02c415c0
02c41510  ldr x0,[x22]
02c41514  ldr w8,[x0, #0xe4]
02c41518  cbnz w8,0x02c41520
02c4151c  bl 0x029f5bd0
02c41520  mov x0,x20
02c41524  mov x1,xzr
02c41528  mov x2,xzr
02c4152c  bl 0x057dfa70
02c41530  mov w8,w0
02c41534  ldr x0,[x19, #0x110]
02c41538  tbz w8,#0x0,0x02c4159c
02c4153c  cbz x0,0x02c415ec
02c41540  mov x1,xzr
02c41544  bl 0x057dfcf4
02c41548  cbz x20,0x02c415ec
02c4154c  mov x21,x0
02c41550  mov x0,x20
02c41554  mov x1,xzr
02c41558  bl 0x057dc0f8
02c4155c  cbz x0,0x02c415ec
02c41560  mov x1,xzr
02c41564  bl 0x057eed98
02c41568  cbz x21,0x02c415ec
02c4156c  mov x0,x21
02c41570  mov x1,xzr
02c41574  bl 0x057eee74
02c41578  ldr x0,[x19, #0x110]
02c4157c  cbz x0,0x02c415ec
02c41580  mov x1,xzr
02c41584  bl 0x057e0000
02c41588  tbnz w0,#0x0,0x02c415c0
02c4158c  ldr x0,[x19, #0x110]
02c41590  cbz x0,0x02c415ec
02c41594  mov w1,#0x1
02c41598  b 0x02c415b8
02c4159c  cbz x0,0x02c415ec
02c415a0  mov x1,xzr
02c415a4  bl 0x057e0000
02c415a8  tbz w0,#0x0,0x02c415c0
02c415ac  ldr x0,[x19, #0x110]
02c415b0  cbz x0,0x02c415ec
02c415b4  mov w1,wzr
02c415b8  mov x2,xzr
02c415bc  bl 0x057dff3c
02c415c0  mov x0,x20
02c415c4  ldp x20,x19,[sp, #0xc0]
02c415c8  ldp x22,x21,[sp, #0xb0]
02c415cc  ldp x24,x23,[sp, #0xa0]
02c415d0  ldp x30,x25,[sp, #0x90]
02c415d4  ldp d9,d8,[sp, #0x80]
02c415d8  ldp d11,d10,[sp, #0x70]
02c415dc  ldp d13,d12,[sp, #0x60]
02c415e0  ldp d15,d14,[sp, #0x50]
02c415e4  add sp,sp,#0xd0
02c415e8  ret
02c415ec  bl 0x029f5cfc
