02b80ff8  stp d11,d10,[sp, #-0x80]!
02b80ffc  stp d9,d8,[sp, #0x10]
02b81000  str x29,[sp, #0x20]
02b81004  stp x30,x27,[sp, #0x30]
02b81008  stp x26,x25,[sp, #0x40]
02b8100c  stp x24,x23,[sp, #0x50]
02b81010  stp x22,x21,[sp, #0x60]
02b81014  stp x20,x19,[sp, #0x70]
02b81018  sub sp,sp,#0x180
02b8101c  adrp x20,0x625b000
02b81020  adrp x22,0x5e5d000
02b81024  adrp x21,0x5e59000
02b81028  ldrb w9,[x20, #0x8d2]
02b8102c  ldr x22,[x22, #0x5b0]
02b81030  ldr x21,[x21, #0x1c0]
02b81034  mov x19,x8
02b81038  tbnz w9,#0x0,0x02b8105c
02b8103c  adrp x0,0x5e5d000
02b81040  ldr x0,[x0, #0x5b0]
02b81044  bl 0x029f5a50
02b81048  adrp x0,0x5e59000
02b8104c  ldr x0,[x0, #0x1c0]
02b81050  bl 0x029f5a50
02b81054  mov w8,#0x1
02b81058  strb w8,[x20, #0x8d2]
02b8105c  movi v0.2D,#0x0
02b81060  ldr x8,[x22]
02b81064  ldr x0,[x21]
02b81068  ldr x8,[x8, #0xb8]
02b8106c  ldr w9,[x0, #0xe4]
02b81070  stp q0,q0,[sp, #0xc0]
02b81074  stp q0,q0,[sp, #0xe0]
02b81078  stp q0,q0,[sp, #0x100]
02b8107c  stp q0,q0,[sp, #0x120]
02b81080  stp q0,q0,[sp, #0x140]
02b81084  stp q0,q0,[sp, #0x160]
02b81088  ldr x20,[x8, #0x8]
02b8108c  cbnz w9,0x02b81094
02b81090  bl 0x029f5bd0
02b81094  mov x0,x20
02b81098  mov x1,xzr
02b8109c  mov x2,xzr
02b810a0  bl 0x057e14b4
02b810a4  tbnz w0,#0x0,0x02b812b4
02b810a8  ldr x8,[x22]
02b810ac  ldr x8,[x8, #0xb8]
02b810b0  ldr x8,[x8, #0x8]
02b810b4  cbz x8,0x02b812f4
02b810b8  ldr x22,[x8, #0x20]
02b810bc  cbz x22,0x02b812b4
02b810c0  add x8,sp,#0x160
02b810c4  mov w0,wzr
02b810c8  mov x1,xzr
02b810cc  bl 0x046544b8
02b810d0  ldr x8,[x22, #0x18]
02b810d4  cmp w8,#0x1
02b810d8  b.lt 0x02b8129c
02b810dc  adrp x9,0x116c000
02b810e0  mov x23,xzr
02b810e4  and x8,x8,#0xffffffff
02b810e8  ldr s9,[x9, #0x268]
02b810ec  add x24,x22,#0x20
02b810f0  mov w25,#0x42c80000
02b810f4  mov w26,#0x7f800000
02b810f8  mov w27,#0x80000000
02b810fc  cmp x23,w8, UXTW 
02b81100  b.cs 0x02b812f8
02b81104  ldr x0,[x21]
02b81108  ldr x20,[x24, x23, LSL #0x3]
02b8110c  ldr w8,[x0, #0xe4]
02b81110  cbnz w8,0x02b81118
02b81114  bl 0x029f5bd0
02b81118  mov x0,x20
02b8111c  mov x1,xzr
02b81120  mov x2,xzr
02b81124  bl 0x057e14b4
02b81128  tbnz w0,#0x0,0x02b8128c
02b8112c  cbz x20,0x02b812f4
02b81130  mov x0,x20
02b81134  mov x1,xzr
02b81138  bl 0x057dc1c8
02b8113c  cbz x0,0x02b812f4
02b81140  mov x1,xzr
02b81144  bl 0x057e00b4
02b81148  tbz w0,#0x0,0x02b8128c
02b8114c  mov x0,x20
02b81150  mov x1,xzr
02b81154  bl 0x02c39c0c
02b81158  fcmp s0,s9
02b8115c  b.ls 0x02b8128c
02b81160  ldr x8,[x20, #0x48]
02b81164  cbz x8,0x02b812f4
02b81168  fmov s8,s0
02b8116c  ldr w9,[x8, #0x18]
02b81170  fmov s10,0x40a00000
02b81174  cmp w9,#0x3
02b81178  b.gt 0x02b811a8
02b8117c  cmp w9,#0x1
02b81180  b.eq 0x02b811c4
02b81184  cmp w9,#0x2
02b81188  b.eq 0x02b811d0
02b8118c  cmp w9,#0x3
02b81190  b.ne 0x02b811cc
02b81194  ldr w8,[x8, #0x44]
02b81198  cmp w8,#0x1
02b8119c  csinc w8,w8,wzr,gt
02b811a0  scvtf s10,w8
02b811a4  b 0x02b811d0
02b811a8  sub w8,w9,#0x4
02b811ac  cmp w8,#0x2
02b811b0  b.cc 0x02b811d0
02b811b4  cmp w9,#0x6
02b811b8  b.ne 0x02b811cc
02b811bc  fmov s10,0x41200000
02b811c0  b 0x02b811d0
02b811c4  fmov s10,0x40e00000
02b811c8  b 0x02b811d0
02b811cc  fmov s10,0x3f800000
02b811d0  add x8,sp,#0xa0
02b811d4  mov x0,x20
02b811d8  mov x1,xzr
02b811dc  bl 0x02c39c30
02b811e0  fmov s11,w25
02b811e4  mov x1,xzr
02b811e8  fmul s0,s10,s11
02b811ec  fmov s10,w26
02b811f0  fcvtzs w8,s0
02b811f4  fcmp s0,s10
02b811f8  ldp q0,q1,[sp, #0xa0]
02b811fc  csel w0,w27,w8,eq
02b81200  add x8,sp,#0x80
02b81204  stp q0,q1,[sp, #0x140]
02b81208  bl 0x046544b8
02b8120c  ldp q0,q1,[sp, #0x80]
02b81210  add x8,sp,#0x60
02b81214  add x0,sp,#0x140
02b81218  add x1,sp,#0x120
02b8121c  mov x2,xzr
02b81220  stp q0,q1,[sp, #0x120]
02b81224  bl 0x04658538
02b81228  fmul s0,s8,s11
02b8122c  mov x1,xzr
02b81230  fcvtzs w8,s0
02b81234  fcmp s0,s10
02b81238  ldp q0,q1,[sp, #0x60]
02b8123c  csel w0,w27,w8,eq
02b81240  add x8,sp,#0x40
02b81244  stp q0,q1,[sp, #0x100]
02b81248  bl 0x046544b8
02b8124c  ldp q0,q1,[sp, #0x40]
02b81250  add x8,sp,#0x20
02b81254  add x0,sp,#0x100
02b81258  add x1,sp,#0xe0
02b8125c  mov x2,xzr
02b81260  stp q0,q1,[sp, #0xe0]
02b81264  bl 0x046587e8
02b81268  ldp q0,q1,[sp, #0x20]
02b8126c  mov x8,sp
02b81270  add x0,sp,#0x160
02b81274  add x1,sp,#0xc0
02b81278  mov x2,xzr
02b8127c  stp q0,q1,[sp, #0xc0]
02b81280  bl 0x04658020
02b81284  ldp q0,q1,[sp]
02b81288  stp q0,q1,[sp, #0x160]
02b8128c  ldr w8,[x22, #0x18]
02b81290  add x23,x23,#0x1
02b81294  cmp x23,w8, SXTW 
02b81298  b.lt 0x02b810fc
02b8129c  add x8,sp,#0xa0
02b812a0  add x0,sp,#0x160
02b812a4  mov w1,#0x5
02b812a8  mov x2,xzr
02b812ac  bl 0x04658464
02b812b0  b 0x02b812c4
02b812b4  add x8,sp,#0xa0
02b812b8  mov w0,wzr
02b812bc  mov x1,xzr
02b812c0  bl 0x046544b8
02b812c4  ldp q0,q1,[sp, #0xa0]
02b812c8  stp q0,q1,[x19]
02b812cc  add sp,sp,#0x180
02b812d0  ldp x20,x19,[sp, #0x70]
02b812d4  ldr x29,[sp, #0x20]
02b812d8  ldp x22,x21,[sp, #0x60]
02b812dc  ldp x24,x23,[sp, #0x50]
02b812e0  ldp x26,x25,[sp, #0x40]
02b812e4  ldp x30,x27,[sp, #0x30]
02b812e8  ldp d9,d8,[sp, #0x10]
02b812ec  ldp d11,d10,[sp], #0x80
02b812f0  ret
02b812f4  bl 0x029f5cfc
02b812f8  bl 0x029f5d04
