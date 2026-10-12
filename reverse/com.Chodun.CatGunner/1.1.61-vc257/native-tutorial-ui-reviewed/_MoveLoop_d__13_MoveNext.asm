02caebb0  stp d9,d8,[sp, #-0x40]!
02caebb4  str x30,[sp, #0x10]
02caebb8  stp x22,x21,[sp, #0x20]
02caebbc  stp x20,x19,[sp, #0x30]
02caebc0  adrp x20,0x625c000
02caebc4  mov x19,x0
02caebc8  ldrb w8,[x20, #0x533]
02caebcc  tbnz w8,#0x0,0x02caebe4
02caebd0  adrp x0,0x5e5a000
02caebd4  ldr x0,[x0, #0x710]
02caebd8  bl 0x029f5a50
02caebdc  mov w8,#0x1
02caebe0  strb w8,[x20, #0x533]
02caebe4  ldr w8,[x19, #0x10]
02caebe8  ldr x20,[x19, #0x20]
02caebec  mov w0,wzr
02caebf0  cmp w8,#0x1
02caebf4  b.le 0x02caec1c
02caebf8  cmp w8,#0x2
02caebfc  b.eq 0x02caec64
02caec00  cmp w8,#0x3
02caec04  b.eq 0x02caed5c
02caec08  cmp w8,#0x4
02caec0c  b.ne 0x02caee9c
02caec10  mov w8,#0xffffffff
02caec14  str w8,[x19, #0x10]
02caec18  b 0x02caedac
02caec1c  cbz w8,0x02caedb8
02caec20  cmp w8,#0x1
02caec24  b.ne 0x02caee9c
02caec28  mov w8,#0xffffffff
02caec2c  str w8,[x19, #0x10]
02caec30  cbz x20,0x02caeeb0
02caec34  ldr x1,[x20, #0x20]
02caec38  bl 0x02caea78
02caec3c  tbz w0,#0x0,0x02caee6c
02caec40  ldr x1,[x20, #0x28]
02caec44  bl 0x02caea78
02caec48  tbz w0,#0x0,0x02caee6c
02caec4c  ldr x1,[x20, #0x20]
02caec50  mov x0,x20
02caec54  str wzr,[x19, #0x28]
02caec58  bl 0x02cae91c
02caec5c  stp s0,s1,[x19, #0x2c]
02caec60  b 0x02caec70
02caec64  mov w8,#0xffffffff
02caec68  str w8,[x19, #0x10]
02caec6c  cbz x20,0x02caeeb0
02caec70  ldr s0,[x19, #0x28]
02caec74  ldr s1,[x20, #0x30]
02caec78  fcmp s0,s1
02caec7c  b.pl 0x02caee74
02caec80  ldr x1,[x20, #0x20]
02caec84  bl 0x02caea78
02caec88  tbz w0,#0x0,0x02caee6c
02caec8c  ldr x1,[x20, #0x28]
02caec90  bl 0x02caea78
02caec94  tbz w0,#0x0,0x02caee6c
02caec98  ldr s8,[x19, #0x28]
02caec9c  mov x0,xzr
02caeca0  bl 0x057ebabc
02caeca4  fadd s8,s8,s0
02caeca8  ldr x1,[x20, #0x28]
02caecac  ldr s9,[x20, #0x30]
02caecb0  mov x0,x20
02caecb4  str s8,[x19, #0x28]
02caecb8  bl 0x02cae91c
02caecbc  ldr x0,[x20, #0x48]
02caecc0  cbz x0,0x02caeeb0
02caecc4  fdiv s2,s8,s9
02caecc8  fmov s3,0x3f800000
02caeccc  movi d5,#0x0
02caecd0  fmov s6,0x40400000
02caecd4  mov x1,xzr
02caecd8  fcmp s2,s3
02caecdc  fcsel s4,s3,s2,gt
02caece0  fcmp s2,#0.0
02caece4  fcsel s2,s5,s4,mi
02caece8  fcmp s2,#0.0
02caecec  fcsel s2,s5,s2,mi
02caecf0  fadd s4,s2,s2
02caecf4  fmul s6,s2,s6
02caecf8  fmul s4,s2,s4
02caecfc  fmul s6,s2,s6
02caed00  fmul s2,s2,s4
02caed04  fsub s2,s6,s2
02caed08  fsub s4,s3,s2
02caed0c  fmul s4,s4,s5
02caed10  fadd s2,s2,s4
02caed14  fcmp s2,s3
02caed18  fcsel s3,s3,s2,gt
02caed1c  fcmp s2,#0.0
02caed20  ldp s4,s2,[x19, #0x2c]
02caed24  fsub s1,s1,s2
02caed28  fcsel s3,s5,s3,mi
02caed2c  fsub s0,s0,s4
02caed30  fmul s1,s3,s1
02caed34  fmul s0,s3,s0
02caed38  fadd s1,s2,s1
02caed3c  fadd s0,s4,s0
02caed40  bl 0x057edec8
02caed44  mov x0,x19
02caed48  mov x1,xzr
02caed4c  str xzr,[x0, #0x18]!
02caed50  bl 0x029f59f4
02caed54  mov w8,#0x2
02caed58  b 0x02caee94
02caed5c  mov w8,#0xffffffff
02caed60  str w8,[x19, #0x10]
02caed64  cbz x20,0x02caeeb0
02caed68  ldr s8,[x20, #0x34]
02caed6c  fcmp s8,#0.0
02caed70  b.le 0x02caedac
02caed74  adrp x8,0x5e5a000
02caed78  ldr x8,[x8, #0x710]
02caed7c  ldr x0,[x8]
02caed80  bl 0x029f5cec
02caed84  fmov s0,s8
02caed88  mov x1,xzr
02caed8c  mov x20,x0
02caed90  bl 0x057e84e0
02caed94  mov x0,x19
02caed98  mov x1,x20
02caed9c  str x20,[x0, #0x18]!
02caeda0  bl 0x029f59f4
02caeda4  mov w8,#0x4
02caeda8  b 0x02caee94
02caedac  stur xzr,[x19, #0x2c]
02caedb0  cbnz x20,0x02caedc4
02caedb4  b 0x02caeeb0
02caedb8  mov w8,#0xffffffff
02caedbc  str w8,[x19, #0x10]
02caedc0  cbz x20,0x02caeeb0
02caedc4  ldr x1,[x20, #0x20]
02caedc8  bl 0x02caea78
02caedcc  tbz w0,#0x0,0x02caee6c
02caedd0  ldr x1,[x20, #0x28]
02caedd4  bl 0x02caea78
02caedd8  tbz w0,#0x0,0x02caee6c
02caeddc  ldr x1,[x20, #0x20]
02caede0  ldr x21,[x20, #0x48]
02caede4  mov x0,x20
02caede8  bl 0x02cae91c
02caedec  cbz x21,0x02caeeb0
02caedf0  mov x0,x21
02caedf4  mov x1,xzr
02caedf8  bl 0x057edec8
02caedfc  adrp x22,0x625b000
02caee00  ldr x21,[x20, #0x48]
02caee04  ldrb w8,[x22, #0x279]
02caee08  cbnz w8,0x02caee20
02caee0c  adrp x0,0x5e58000
02caee10  ldr x0,[x0, #0xbf8]
02caee14  bl 0x029f5a50
02caee18  mov w8,#0x1
02caee1c  strb w8,[x22, #0x279]
02caee20  cbz x21,0x02caeeb0
02caee24  adrp x8,0x5e58000
02caee28  mov x0,x21
02caee2c  mov x1,xzr
02caee30  ldr x8,[x8, #0xbf8]
02caee34  ldr x8,[x8]
02caee38  ldr x8,[x8, #0xb8]
02caee3c  ldp s1,s2,[x8, #0x10]
02caee40  ldr s0,[x8, #0xc]
02caee44  bl 0x057ef654
02caee48  ldr s0,[x20, #0x40]
02caee4c  mov x0,x20
02caee50  bl 0x02cae878
02caee54  mov x1,x0
02caee58  mov x0,x19
02caee5c  str x1,[x0, #0x18]!
02caee60  bl 0x029f59f4
02caee64  mov w8,#0x1
02caee68  b 0x02caee94
02caee6c  mov w0,wzr
02caee70  b 0x02caee9c
02caee74  fmov s0,0x3f800000
02caee78  mov x0,x20
02caee7c  bl 0x02cae878
02caee80  mov x1,x0
02caee84  mov x0,x19
02caee88  str x1,[x0, #0x18]!
02caee8c  bl 0x029f59f4
02caee90  mov w8,#0x3
02caee94  mov w0,#0x1
02caee98  str w8,[x19, #0x10]
02caee9c  ldp x20,x19,[sp, #0x30]
02caeea0  ldr x30,[sp, #0x10]
02caeea4  ldp x22,x21,[sp, #0x20]
02caeea8  ldp d9,d8,[sp], #0x40
02caeeac  ret
02caeeb0  bl 0x029f5cfc
