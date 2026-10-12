02c83634  stp x30,x23,[sp, #-0x30]!
02c83638  stp x22,x21,[sp, #0x10]
02c8363c  stp x20,x19,[sp, #0x20]
02c83640  adrp x20,0x625c000
02c83644  adrp x22,0x5e5d000
02c83648  mov x19,x0
02c8364c  ldrb w8,[x20, #0x36f]
02c83650  ldr x22,[x22, #0x4d0]
02c83654  tbnz w8,#0x0,0x02c83684
02c83658  adrp x0,0x5e59000
02c8365c  ldr x0,[x0, #0x1c0]
02c83660  bl 0x029f5a50
02c83664  adrp x0,0x5e5d000
02c83668  ldr x0,[x0, #0x4d0]
02c8366c  bl 0x029f5a50
02c83670  adrp x0,0x5e63000
02c83674  ldr x0,[x0, #0x810]
02c83678  bl 0x029f5a50
02c8367c  mov w8,#0x1
02c83680  strb w8,[x20, #0x36f]
02c83684  ldr x0,[x22]
02c83688  ldr w8,[x0, #0xe4]
02c8368c  cbnz w8,0x02c83698
02c83690  bl 0x029f5bd0
02c83694  ldr x0,[x22]
02c83698  ldr x8,[x0, #0xb8]
02c8369c  ldr x8,[x8, #0x28]
02c836a0  cbz x8,0x02c838b4
02c836a4  ldr x8,[x8, #0x30]
02c836a8  cbz x8,0x02c838b4
02c836ac  ldrsw x9,[x19, #0x20]
02c836b0  ldr w10,[x8, #0x18]
02c836b4  cmp w9,w10
02c836b8  b.cs 0x02c83958
02c836bc  ldr x0,[x19, #0x40]
02c836c0  cbz x0,0x02c838b4
02c836c4  add x8,x8,x9, LSL #0x2
02c836c8  mov x2,xzr
02c836cc  ldrsw x23,[x8, #0x20]
02c836d0  cmn w23,#0x1
02c836d4  cset w1,ne
02c836d8  bl 0x057dff3c
02c836dc  ldr x0,[x19, #0x48]
02c836e0  cbz x0,0x02c838b4
02c836e4  and x20,x23,#0xffffffff
02c836e8  adrp x21,0x5e59000
02c836ec  mov x2,xzr
02c836f0  cmn w20,#0x1
02c836f4  ldr x21,[x21, #0x1c0]
02c836f8  cset w1,eq
02c836fc  bl 0x057dff3c
02c83700  ldr x0,[x21]
02c83704  ldr x21,[x19, #0x68]
02c83708  ldr w8,[x0, #0xe4]
02c8370c  cbnz w8,0x02c83714
02c83710  bl 0x029f5bd0
02c83714  mov x0,x21
02c83718  mov x1,xzr
02c8371c  mov x2,xzr
02c83720  bl 0x057dfa70
02c83724  tbz w0,#0x0,0x02c83780
02c83728  ldr x21,[x19, #0x68]
02c8372c  cmn w20,#0x1
02c83730  b.eq 0x02c83768
02c83734  ldr x0,[x22]
02c83738  ldr w8,[x0, #0xe4]
02c8373c  cbnz w8,0x02c83748
02c83740  bl 0x029f5bd0
02c83744  ldr x0,[x22]
02c83748  ldr x8,[x0, #0xb8]
02c8374c  ldr x0,[x8, #0x28]
02c83750  cbz x0,0x02c838b4
02c83754  ldr w1,[x19, #0x20]
02c83758  mov x2,xzr
02c8375c  bl 0x02c7cca4
02c83760  cbnz x21,0x02c83770
02c83764  b 0x02c838b4
02c83768  mov w0,wzr
02c8376c  cbz x21,0x02c838b4
02c83770  and w1,w0,#0x1
02c83774  mov x0,x21
02c83778  mov x2,xzr
02c8377c  bl 0x057dff3c
02c83780  cmn w23,#0x1
02c83784  b.eq 0x02c83948
02c83788  ldr x0,[x22]
02c8378c  ldr w8,[x0, #0xe4]
02c83790  cbnz w8,0x02c8379c
02c83794  bl 0x029f5bd0
02c83798  ldr x0,[x22]
02c8379c  ldr x8,[x0, #0xb8]
02c837a0  ldr x9,[x8, #0x28]
02c837a4  cbz x9,0x02c838b4
02c837a8  ldr x8,[x9, #0x20]
02c837ac  cbz x8,0x02c838b4
02c837b0  ldr w10,[x8, #0x18]
02c837b4  cmp w23,w10
02c837b8  b.cs 0x02c83958
02c837bc  ldr x9,[x9, #0x58]
02c837c0  cbz x9,0x02c838b4
02c837c4  ldr w10,[x9, #0x18]
02c837c8  cmp w20,w10
02c837cc  b.cs 0x02c83958
02c837d0  ldr x0,[x19, #0x28]
02c837d4  cbz x0,0x02c838b4
02c837d8  add x9,x9,x23, LSL #0x3
02c837dc  add x8,x8,x23, LSL #0x3
02c837e0  ldr x22,[x19, #0x30]
02c837e4  mov x2,xzr
02c837e8  ldr x21,[x9, #0x20]
02c837ec  ldr x23,[x8, #0x20]
02c837f0  mov x1,x21
02c837f4  bl 0x058d34cc
02c837f8  cbz x22,0x02c838b4
02c837fc  mov x0,x22
02c83800  mov x1,x21
02c83804  mov x2,xzr
02c83808  bl 0x058d34cc
02c8380c  ldr x0,[x19, #0x30]
02c83810  cbz x0,0x02c838b4
02c83814  ldr x8,[x0]
02c83818  ldr x9,[x8, #0x408]
02c8381c  ldr x1,[x8, #0x410]
02c83820  blr x9
02c83824  ldr x0,[x19, #0x28]
02c83828  cbz x0,0x02c838b4
02c8382c  ldr x8,[x0]
02c83830  ldr x9,[x8, #0x408]
02c83834  ldr x1,[x8, #0x410]
02c83838  blr x9
02c8383c  ldr x21,[x19, #0x38]
02c83840  mov w0,w20
02c83844  mov x1,xzr
02c83848  bl 0x02c7e324
02c8384c  cbz x21,0x02c838b4
02c83850  ldr x8,[x21]
02c83854  mov x0,x21
02c83858  ldr x9,[x8, #0x2a8]
02c8385c  ldr x1,[x8, #0x2b0]
02c83860  blr x9
02c83864  ldr x8,[x19, #0x50]
02c83868  cbz x8,0x02c838b4
02c8386c  adrp x21,0x5e63000
02c83870  mov x22,xzr
02c83874  ldr x21,[x21, #0x810]
02c83878  ldr w9,[x8, #0x18]
02c8387c  cmp w22,w9
02c83880  b.ge 0x02c838b8
02c83884  cmp w22,w9
02c83888  b.cs 0x02c83958
02c8388c  add x8,x8,x22, LSL #0x3
02c83890  ldr x0,[x8, #0x20]
02c83894  cbz x0,0x02c838b4
02c83898  cmp w20,w22
02c8389c  mov x2,xzr
02c838a0  cset w1,eq
02c838a4  bl 0x057dff3c
02c838a8  ldr x8,[x19, #0x50]
02c838ac  add x22,x22,#0x1
02c838b0  cbnz x8,0x02c83878
02c838b4  bl 0x029f5cfc
02c838b8  cbz x23,0x02c838b4
02c838bc  ldr x20,[x19, #0x58]
02c838c0  add x0,x23,#0x18
02c838c4  mov x1,xzr
02c838c8  bl 0x0465bd64
02c838cc  ldr x8,[x21]
02c838d0  mov x1,x0
02c838d4  mov x2,xzr
02c838d8  mov x0,x8
02c838dc  bl 0x046b6c0c
02c838e0  cbz x20,0x02c838b4
02c838e4  ldr x8,[x20]
02c838e8  mov x1,x0
02c838ec  mov x0,x20
02c838f0  ldr x9,[x8, #0x558]
02c838f4  ldr x2,[x8, #0x560]
02c838f8  blr x9
02c838fc  ldr x19,[x19, #0x60]
02c83900  add x0,x23,#0x38
02c83904  mov x1,xzr
02c83908  bl 0x0484e6a4
02c8390c  ldr x8,[x21]
02c83910  mov x1,x0
02c83914  mov x2,xzr
02c83918  mov x0,x8
02c8391c  bl 0x046b6c0c
02c83920  cbz x19,0x02c838b4
02c83924  ldr x8,[x19]
02c83928  mov x1,x0
02c8392c  mov x0,x19
02c83930  ldp x20,x19,[sp, #0x20]
02c83934  ldp x22,x21,[sp, #0x10]
02c83938  ldr x2,[x8, #0x560]
02c8393c  ldr x3,[x8, #0x558]
02c83940  ldp x30,x23,[sp], #0x30
02c83944  br x3
02c83948  ldp x20,x19,[sp, #0x20]
02c8394c  ldp x22,x21,[sp, #0x10]
02c83950  ldp x30,x23,[sp], #0x30
02c83954  ret
02c83958  bl 0x029f5d04
