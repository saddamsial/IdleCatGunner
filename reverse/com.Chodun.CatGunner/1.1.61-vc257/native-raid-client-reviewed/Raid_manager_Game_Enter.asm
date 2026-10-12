02c577f8  stp x30,x21,[sp, #-0x20]!
02c577fc  stp x20,x19,[sp, #0x10]
02c57800  adrp x21,0x625c000
02c57804  mov w20,w1
02c57808  mov x19,x0
02c5780c  ldrb w8,[x21, #0x1ae]
02c57810  tbnz w8,#0x0,0x02c57870
02c57814  adrp x0,0x5e5d000
02c57818  ldr x0,[x0, #0x5b0]
02c5781c  bl 0x029f5a50
02c57820  adrp x0,0x5e5d000
02c57824  ldr x0,[x0, #0x338]
02c57828  bl 0x029f5a50
02c5782c  adrp x0,0x5e59000
02c57830  ldr x0,[x0, #0x1c0]
02c57834  bl 0x029f5a50
02c57838  adrp x0,0x5e5e000
02c5783c  ldr x0,[x0, #0x70]
02c57840  bl 0x029f5a50
02c57844  adrp x0,0x5e62000
02c57848  ldr x0,[x0, #0x670]
02c5784c  bl 0x029f5a50
02c57850  adrp x0,0x5e5d000
02c57854  ldr x0,[x0, #0xc20]
02c57858  bl 0x029f5a50
02c5785c  adrp x0,0x5e5d000
02c57860  ldr x0,[x0, #0x368]
02c57864  bl 0x029f5a50
02c57868  mov w8,#0x1
02c5786c  strb w8,[x21, #0x1ae]
02c57870  mov x0,x19
02c57874  str w20,[x19, #0xe4]
02c57878  strb wzr,[x19, #0xe8]
02c5787c  bl 0x02c587b8
02c57880  cbz w0,0x02c57aa0
02c57884  adrp x8,0x5e59000
02c57888  ldr x8,[x8, #0x1c0]
02c5788c  ldr x20,[x19, #0x30]
02c57890  ldr x0,[x8]
02c57894  ldr w8,[x0, #0xe4]
02c57898  cbnz w8,0x02c578a0
02c5789c  bl 0x029f5bd0
02c578a0  mov x0,x20
02c578a4  mov x1,xzr
02c578a8  mov x2,xzr
02c578ac  bl 0x057dfa70
02c578b0  tbz w0,#0x0,0x02c578d4
02c578b4  ldr x0,[x19, #0x30]
02c578b8  cbz x0,0x02c57ad0
02c578bc  mov x1,xzr
02c578c0  bl 0x057dc1c8
02c578c4  cbz x0,0x02c57ad0
02c578c8  mov w1,wzr
02c578cc  mov x2,xzr
02c578d0  bl 0x057dff3c
02c578d4  adrp x21,0x5e5d000
02c578d8  adrp x20,0x5e5d000
02c578dc  ldr x21,[x21, #0x338]
02c578e0  ldr x0,[x21]
02c578e4  ldr w8,[x0, #0xe4]
02c578e8  ldr x20,[x20, #0xc20]
02c578ec  cbnz w8,0x02c578f8
02c578f0  bl 0x029f5bd0
02c578f4  ldr x0,[x21]
02c578f8  ldr x8,[x20]
02c578fc  ldr x9,[x0, #0xb8]
02c57900  ldr w10,[x8, #0xe4]
02c57904  strb wzr,[x9]
02c57908  cbnz w10,0x02c57918
02c5790c  mov x0,x8
02c57910  bl 0x029f5bd0
02c57914  ldr x8,[x20]
02c57918  ldr x8,[x8, #0xb8]
02c5791c  ldr x0,[x8, #0x10]
02c57920  cbz x0,0x02c57ad0
02c57924  adrp x20,0x5e62000
02c57928  mov x1,xzr
02c5792c  ldr x20,[x20, #0x670]
02c57930  bl 0x02ca8b2c
02c57934  ldr x8,[x20]
02c57938  ldr x8,[x8, #0xb8]
02c5793c  ldr x0,[x8, #0x8]
02c57940  cbz x0,0x02c57ad0
02c57944  mov x1,xzr
02c57948  bl 0x02c21688
02c5794c  ldr x0,[x19, #0xc0]
02c57950  cbz x0,0x02c57ad0
02c57954  mov w1,wzr
02c57958  mov x2,xzr
02c5795c  bl 0x057dff3c
02c57960  ldr x0,[x19, #0xc8]
02c57964  cbz x0,0x02c57ad0
02c57968  mov w1,#0x1
02c5796c  mov x2,xzr
02c57970  bl 0x057dff3c
02c57974  ldr x0,[x19, #0xd0]
02c57978  cbz x0,0x02c57ad0
02c5797c  mov w1,#0x1
02c57980  mov x2,xzr
02c57984  bl 0x057dff3c
02c57988  ldr x0,[x19, #0xf0]
02c5798c  cbz x0,0x02c57ad0
02c57990  mov x1,xzr
02c57994  bl 0x057dc1c8
02c57998  cbz x0,0x02c57ad0
02c5799c  adrp x21,0x5e5e000
02c579a0  adrp x20,0x5e5d000
02c579a4  mov w1,wzr
02c579a8  ldr x21,[x21, #0x70]
02c579ac  ldr x20,[x20, #0x368]
02c579b0  mov x2,xzr
02c579b4  bl 0x057dff3c
02c579b8  mov x0,x19
02c579bc  str wzr,[x19, #0xb0]
02c579c0  bl 0x02c548dc
02c579c4  ldr x0,[x21]
02c579c8  ldr w8,[x0, #0xe4]
02c579cc  cbnz w8,0x02c579d4
02c579d0  bl 0x029f5bd0
02c579d4  bl 0x02c58974
02c579d8  ldr x8,[x20]
02c579dc  str w0,[x19, #0x20]
02c579e0  ldr x8,[x8, #0xb8]
02c579e4  ldr x8,[x8]
02c579e8  cbz x8,0x02c57ad0
02c579ec  adrp x20,0x5e5d000
02c579f0  mov x0,x8
02c579f4  mov w1,#0x5
02c579f8  ldr x20,[x20, #0x5b0]
02c579fc  mov x2,xzr
02c57a00  bl 0x02c2a560
02c57a04  ldr x8,[x20]
02c57a08  ldr x8,[x8, #0xb8]
02c57a0c  ldr x0,[x8, #0x8]
02c57a10  cbz x0,0x02c57ad0
02c57a14  ldp s1,s2,[x19, #0xdc]
02c57a18  ldr s0,[x19, #0xd8]
02c57a1c  bl 0x02c44748
02c57a20  ldr x8,[x20]
02c57a24  ldr x8,[x8, #0xb8]
02c57a28  ldr x0,[x8, #0x8]
02c57a2c  cbz x0,0x02c57ad0
02c57a30  bl 0x02c43744
02c57a34  adrp x20,0x625b000
02c57a38  ldrb w8,[x20, #0xa57]
02c57a3c  cbnz w8,0x02c57a54
02c57a40  adrp x0,0x5e5d000
02c57a44  ldr x0,[x0, #0xd70]
02c57a48  bl 0x029f5a50
02c57a4c  mov w8,#0x1
02c57a50  strb w8,[x20, #0xa57]
02c57a54  adrp x8,0x5e5d000
02c57a58  ldr x8,[x8, #0xd70]
02c57a5c  ldr x8,[x8]
02c57a60  ldr x8,[x8, #0xb8]
02c57a64  ldr x0,[x8]
02c57a68  cbz x0,0x02c57ad0
02c57a6c  fmov s0,0x3f800000
02c57a70  mov w1,#0xa
02c57a74  mov x2,xzr
02c57a78  mov x3,xzr
02c57a7c  bl 0x02c1f10c
02c57a80  mov x0,x19
02c57a84  bl 0x02c589c4
02c57a88  mov x1,x0
02c57a8c  mov x0,x19
02c57a90  mov x2,xzr
02c57a94  ldp x20,x19,[sp, #0x10]
02c57a98  ldp x30,x21,[sp], #0x20
02c57a9c  b 0x057e2120
02c57aa0  ldr x8,[x19, #0x88]
02c57aa4  cbz x8,0x02c57ad0
02c57aa8  mov w20,wzr
02c57aac  ldr w8,[x8, #0x18]
02c57ab0  cmp w20,w8
02c57ab4  b.ge 0x02c57884
02c57ab8  mov x0,x19
02c57abc  mov w1,w20
02c57ac0  bl 0x02c588c4
02c57ac4  ldr x8,[x19, #0x88]
02c57ac8  add w20,w20,#0x1
02c57acc  cbnz x8,0x02c57aac
02c57ad0  bl 0x029f5cfc
