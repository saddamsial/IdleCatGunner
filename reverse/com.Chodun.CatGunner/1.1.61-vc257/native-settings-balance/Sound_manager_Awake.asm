02c223c0  str x30,[sp, #-0x50]!
02c223c4  stp x26,x25,[sp, #0x10]
02c223c8  stp x24,x23,[sp, #0x20]
02c223cc  stp x22,x21,[sp, #0x30]
02c223d0  stp x20,x19,[sp, #0x40]
02c223d4  adrp x20,0x625b000
02c223d8  mov x19,x0
02c223dc  ldrb w8,[x20, #0xf6e]
02c223e0  tbnz w8,#0x0,0x02c2241c
02c223e4  adrp x0,0x5e62000
02c223e8  ldr x0,[x0, #0xbe8]
02c223ec  bl 0x029f5a50
02c223f0  adrp x0,0x5e62000
02c223f4  ldr x0,[x0, #0xbf0]
02c223f8  bl 0x029f5a50
02c223fc  adrp x0,0x5e62000
02c22400  ldr x0,[x0, #0xbf8]
02c22404  bl 0x029f5a50
02c22408  adrp x0,0x5e59000
02c2240c  ldr x0,[x0, #0x1c0]
02c22410  bl 0x029f5a50
02c22414  mov w8,#0x1
02c22418  strb w8,[x20, #0xf6e]
02c2241c  adrp x23,0x625b000
02c22420  adrp x22,0x5e59000
02c22424  ldrb w8,[x23, #0xa57]
02c22428  ldr x22,[x22, #0x1c0]
02c2242c  cbnz w8,0x02c22444
02c22430  adrp x0,0x5e5d000
02c22434  ldr x0,[x0, #0xd70]
02c22438  bl 0x029f5a50
02c2243c  mov w8,#0x1
02c22440  strb w8,[x23, #0xa57]
02c22444  adrp x21,0x5e5d000
02c22448  ldr x21,[x21, #0xd70]
02c2244c  ldr x0,[x22]
02c22450  ldr x8,[x21]
02c22454  ldr w9,[x0, #0xe4]
02c22458  ldr x8,[x8, #0xb8]
02c2245c  ldr x20,[x8]
02c22460  cbnz w9,0x02c22468
02c22464  bl 0x029f5bd0
02c22468  mov x0,x20
02c2246c  mov x1,xzr
02c22470  mov x2,xzr
02c22474  bl 0x057dfa70
02c22478  tbz w0,#0x0,0x02c2250c
02c2247c  ldrb w8,[x23, #0xa57]
02c22480  cbnz w8,0x02c22498
02c22484  adrp x0,0x5e5d000
02c22488  ldr x0,[x0, #0xd70]
02c2248c  bl 0x029f5a50
02c22490  mov w8,#0x1
02c22494  strb w8,[x23, #0xa57]
02c22498  ldr x8,[x21]
02c2249c  ldr x0,[x22]
02c224a0  ldr x8,[x8, #0xb8]
02c224a4  ldr w9,[x0, #0xe4]
02c224a8  ldr x20,[x8]
02c224ac  cbnz w9,0x02c224b4
02c224b0  bl 0x029f5bd0
02c224b4  mov x0,x20
02c224b8  mov x1,x19
02c224bc  mov x2,xzr
02c224c0  bl 0x057dfa70
02c224c4  tbz w0,#0x0,0x02c2250c
02c224c8  mov x0,x19
02c224cc  mov x1,xzr
02c224d0  bl 0x057dc1c8
02c224d4  ldr x8,[x22]
02c224d8  mov x19,x0
02c224dc  ldr w9,[x8, #0xe4]
02c224e0  cbnz w9,0x02c224ec
02c224e4  mov x0,x8
02c224e8  bl 0x029f5bd0
02c224ec  mov x0,x19
02c224f0  ldp x20,x19,[sp, #0x40]
02c224f4  ldp x22,x21,[sp, #0x30]
02c224f8  mov x1,xzr
02c224fc  ldp x24,x23,[sp, #0x20]
02c22500  ldp x26,x25,[sp, #0x10]
02c22504  ldr x30,[sp], #0x50
02c22508  b 0x057e6254
02c2250c  adrp x20,0x625c000
02c22510  ldrb w8,[x20, #0x2d]
02c22514  cbnz w8,0x02c2252c
02c22518  adrp x0,0x5e5d000
02c2251c  ldr x0,[x0, #0xd70]
02c22520  bl 0x029f5a50
02c22524  mov w8,#0x1
02c22528  strb w8,[x20, #0x2d]
02c2252c  ldr x8,[x21]
02c22530  mov x1,x19
02c22534  ldr x8,[x8, #0xb8]
02c22538  str x19,[x8]
02c2253c  ldr x8,[x21]
02c22540  ldr x0,[x8, #0xb8]
02c22544  bl 0x029f59f4
02c22548  ldr x0,[x19, #0x40]
02c2254c  cbz x0,0x02c2269c
02c22550  adrp x8,0x5e62000
02c22554  ldr x8,[x8, #0xbe8]
02c22558  ldr x1,[x8]
02c2255c  bl 0x03df078c
02c22560  ldr x23,[x19, #0x30]
02c22564  cbz x23,0x02c2269c
02c22568  ldr x8,[x23, #0x18]
02c2256c  cmp w8,#0x1
02c22570  b.lt 0x02c225e8
02c22574  adrp x25,0x5e62000
02c22578  mov x24,xzr
02c2257c  and x8,x8,#0xffffffff
02c22580  ldr x25,[x25, #0xbf0]
02c22584  add x26,x23,#0x20
02c22588  cmp x24,w8, UXTW 
02c2258c  b.cs 0x02c22698
02c22590  ldr x20,[x26, x24, LSL #0x3]
02c22594  cbz x20,0x02c225d8
02c22598  ldr x0,[x22]
02c2259c  ldr x21,[x20, #0x18]
02c225a0  ldr w8,[x0, #0xe4]
02c225a4  cbnz w8,0x02c225ac
02c225a8  bl 0x029f5bd0
02c225ac  mov x0,x21
02c225b0  mov x1,xzr
02c225b4  mov x2,xzr
02c225b8  bl 0x057e14b4
02c225bc  tbnz w0,#0x0,0x02c225d8
02c225c0  ldr x0,[x19, #0x40]
02c225c4  cbz x0,0x02c2269c
02c225c8  ldr w1,[x20, #0x10]
02c225cc  ldr x3,[x25]
02c225d0  mov x2,x20
02c225d4  bl 0x03df05f0
02c225d8  ldr w8,[x23, #0x18]
02c225dc  add x24,x24,#0x1
02c225e0  cmp x24,w8, SXTW 
02c225e4  b.lt 0x02c22588
02c225e8  ldr x0,[x22]
02c225ec  mov x20,x19
02c225f0  ldr x21,[x20, #0x20]!
02c225f4  ldr w8,[x0, #0xe4]
02c225f8  cbnz w8,0x02c22600
02c225fc  bl 0x029f5bd0
02c22600  mov x0,x21
02c22604  mov x1,xzr
02c22608  mov x2,xzr
02c2260c  bl 0x057e14b4
02c22610  tbz w0,#0x0,0x02c22680
02c22614  mov x0,x19
02c22618  mov x1,xzr
02c2261c  bl 0x057dc1c8
02c22620  cbz x0,0x02c2269c
02c22624  adrp x8,0x5e62000
02c22628  ldr x8,[x8, #0xbf8]
02c2262c  ldr x1,[x8]
02c22630  bl 0x030a0224
02c22634  mov x1,x0
02c22638  str x0,[x20]
02c2263c  mov x0,x20
02c22640  bl 0x029f59f4
02c22644  ldr x0,[x20]
02c22648  cbz x0,0x02c2269c
02c2264c  mov w1,wzr
02c22650  mov x2,xzr
02c22654  bl 0x05788e20
02c22658  ldr x0,[x20]
02c2265c  cbz x0,0x02c2269c
02c22660  ldp x20,x19,[sp, #0x40]
02c22664  mov w1,wzr
02c22668  ldp x22,x21,[sp, #0x30]
02c2266c  mov x2,xzr
02c22670  ldp x24,x23,[sp, #0x20]
02c22674  ldp x26,x25,[sp, #0x10]
02c22678  ldr x30,[sp], #0x50
02c2267c  b 0x05788d5c
02c22680  ldp x20,x19,[sp, #0x40]
02c22684  ldp x22,x21,[sp, #0x30]
02c22688  ldp x24,x23,[sp, #0x20]
02c2268c  ldp x26,x25,[sp, #0x10]
02c22690  ldr x30,[sp], #0x50
02c22694  ret
02c22698  bl 0x029f5d04
02c2269c  bl 0x029f5cfc
