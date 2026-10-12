02cb10b0  sub sp,sp,#0x60
02cb10b4  stp x30,x21,[sp, #0x40]
02cb10b8  stp x20,x19,[sp, #0x50]
02cb10bc  adrp x20,0x625c000
02cb10c0  mov x19,x0
02cb10c4  ldrb w8,[x20, #0x549]
02cb10c8  tbnz w8,#0x0,0x02cb10e0
02cb10cc  adrp x0,0x5e5d000
02cb10d0  ldr x0,[x0, #0x338]
02cb10d4  bl 0x029f5a50
02cb10d8  mov w8,#0x1
02cb10dc  strb w8,[x20, #0x549]
02cb10e0  movi v0.2D,#0x0
02cb10e4  ldrb w8,[x19, #0xb8]
02cb10e8  stp q0,q0,[sp, #0x20]
02cb10ec  cbnz w8,0x02cb1220
02cb10f0  adrp x21,0x5e5d000
02cb10f4  ldr x21,[x21, #0x338]
02cb10f8  ldr x0,[x21]
02cb10fc  ldr w8,[x0, #0xe4]
02cb1100  cbnz w8,0x02cb110c
02cb1104  bl 0x029f5bd0
02cb1108  ldr x0,[x21]
02cb110c  ldr x8,[x0, #0xb8]
02cb1110  add x1,x19,#0x98
02cb1114  mov x2,xzr
02cb1118  add x0,x8,#0x30
02cb111c  bl 0x04654530
02cb1120  ldr w8,[x19, #0xc0]
02cb1124  and w20,w0,#0x1
02cb1128  cmp w8,w20
02cb112c  b.eq 0x02cb119c
02cb1130  ldr x0,[x19, #0x30]
02cb1134  str w20,[x19, #0xc0]
02cb1138  cbz x0,0x02cb1230
02cb113c  mov w1,w20
02cb1140  mov x2,xzr
02cb1144  bl 0x057dff3c
02cb1148  fmov s3,0x3f800000
02cb114c  fmov s2,0x3f800000
02cb1150  ldr x0,[x19, #0x40]
02cb1154  fmov s1,0x3f800000
02cb1158  fmov s0,0x3f800000
02cb115c  tbnz w20,#0x0,0x02cb1168
02cb1160  ldp s0,s1,[x19, #0x50]
02cb1164  ldp s2,s3,[x19, #0x58]
02cb1168  cbz x0,0x02cb1230
02cb116c  ldr x8,[x0]
02cb1170  ldr x9,[x8, #0x2a8]
02cb1174  ldr x1,[x8, #0x2b0]
02cb1178  blr x9
02cb117c  cbz w20,0x02cb1194
02cb1180  ldr x0,[x19, #0x28]
02cb1184  cbz x0,0x02cb1230
02cb1188  movi d0,#0x0
02cb118c  mov x1,xzr
02cb1190  bl 0x02c28290
02cb1194  mov w8,#0xbf800000
02cb1198  str w8,[x19, #0xc8]
02cb119c  tbnz w20,#0x0,0x02cb1220
02cb11a0  mov x0,xzr
02cb11a4  bl 0x057ebae4
02cb11a8  ldr s1,[x19, #0xc8]
02cb11ac  adrp x8,0x116c000
02cb11b0  fsub s0,s0,s1
02cb11b4  ldr s1,[x8, #0x174]
02cb11b8  fcmp s0,s1
02cb11bc  b.lt 0x02cb1220
02cb11c0  mov x0,xzr
02cb11c4  bl 0x057ebae4
02cb11c8  ldr x0,[x21]
02cb11cc  ldr x20,[x19, #0x28]
02cb11d0  str s0,[x19, #0xc8]
02cb11d4  ldr w8,[x0, #0xe4]
02cb11d8  cbnz w8,0x02cb11e4
02cb11dc  bl 0x029f5bd0
02cb11e0  ldr x0,[x21]
02cb11e4  ldr x9,[x0, #0xb8]
02cb11e8  mov x8,sp
02cb11ec  add x1,x19,#0x98
02cb11f0  mov x2,xzr
02cb11f4  add x0,x9,#0x30
02cb11f8  bl 0x046587e8
02cb11fc  ldp q0,q1,[sp]
02cb1200  add x0,sp,#0x20
02cb1204  mov x1,xzr
02cb1208  stp q0,q1,[sp, #0x20]
02cb120c  bl 0x046572f8
02cb1210  cbz x20,0x02cb1230
02cb1214  mov x0,x20
02cb1218  mov x1,xzr
02cb121c  bl 0x02c28290
02cb1220  ldp x20,x19,[sp, #0x50]
02cb1224  ldp x30,x21,[sp, #0x40]
02cb1228  add sp,sp,#0x60
02cb122c  ret
02cb1230  bl 0x029f5cfc
