02c954d8  sub sp,sp,#0x70
02c954dc  stp x30,x25,[sp, #0x30]
02c954e0  stp x24,x23,[sp, #0x40]
02c954e4  stp x22,x21,[sp, #0x50]
02c954e8  stp x20,x19,[sp, #0x60]
02c954ec  adrp x22,0x625c000
02c954f0  adrp x21,0x5e64000
02c954f4  mov x19,x2
02c954f8  ldrb w8,[x22, #0x42e]
02c954fc  ldr x21,[x21, #0x338]
02c95500  mov x20,x1
02c95504  tbnz w8,#0x0,0x02c95540
02c95508  adrp x0,0x5e58000
02c9550c  ldr x0,[x0, #0xa48]
02c95510  bl 0x029f5a50
02c95514  adrp x0,0x5e59000
02c95518  ldr x0,[x0, #0x1f0]
02c9551c  bl 0x029f5a50
02c95520  adrp x0,0x5e64000
02c95524  ldr x0,[x0, #0x338]
02c95528  bl 0x029f5a50
02c9552c  adrp x0,0x5e64000
02c95530  ldr x0,[x0, #0x340]
02c95534  bl 0x029f5a50
02c95538  mov w8,#0x1
02c9553c  strb w8,[x22, #0x42e]
02c95540  adrp x22,0x5e58000
02c95544  ldr x22,[x22, #0xa10]
02c95548  ldr x21,[x21]
02c9554c  stp xzr,xzr,[sp, #0x20]
02c95550  ldr x0,[x22, #0xe0]
02c95554  ldr w8,[x0, #0xe4]
02c95558  cbnz w8,0x02c95560
02c9555c  bl 0x029f5bd0
02c95560  mov x0,x21
02c95564  mov x1,xzr
02c95568  bl 0x04860260
02c9556c  ldr x8,[x22, #0x98]
02c95570  mov x21,x0
02c95574  ldr w9,[x8, #0xe4]
02c95578  cbnz w9,0x02c95584
02c9557c  mov x0,x8
02c95580  bl 0x029f5bd0
02c95584  mov x0,x21
02c95588  mov x1,xzr
02c9558c  bl 0x048858cc
02c95590  cbz x0,0x02c957a8
02c95594  adrp x22,0x5e59000
02c95598  adrp x24,0x5e64000
02c9559c  adrp x23,0x5e58000
02c955a0  ldr x22,[x22, #0x1f0]
02c955a4  ldr x24,[x24, #0x340]
02c955a8  ldr x23,[x23, #0xa48]
02c955ac  mov x1,xzr
02c955b0  bl 0x04876880
02c955b4  add x8,sp,#0x28
02c955b8  str x0,[sp, #0x28]
02c955bc  stp xzr,x8,[sp, #0x8]
02c955c0  add x8,sp,#0x20
02c955c4  str x8,[sp, #0x18]
02c955c8  ldr x21,[sp, #0x28]
02c955cc  cbz x21,0x02c95798
02c955d0  ldr x8,[x21]
02c955d4  ldr x1,[x22]
02c955d8  ldrh w9,[x8, #0x12e]
02c955dc  cbz x9,0x02c95600
02c955e0  ldr x10,[x8, #0xb0]
02c955e4  add x10,x10,#0x8
02c955e8  ldur x11,[x10, #-0x8]
02c955ec  cmp x11,x1
02c955f0  b.eq 0x02c95610
02c955f4  subs x9,x9,#0x1
02c955f8  add x10,x10,#0x10
02c955fc  b.ne 0x02c955e8
02c95600  mov x0,x21
02c95604  mov w2,wzr
02c95608  bl 0x02a2ed2c
02c9560c  b 0x02c9561c
02c95610  ldrsw x9,[x10]
02c95614  add x8,x8,x9, LSL #0x4
02c95618  add x0,x8,#0x138
02c9561c  ldp x8,x1,[x0]
02c95620  mov x0,x21
02c95624  blr x8
02c95628  tbz w0,#0x0,0x02c956e0
02c9562c  ldr x21,[sp, #0x28]
02c95630  cbz x21,0x02c9579c
02c95634  ldr x8,[x21]
02c95638  ldr x1,[x22]
02c9563c  ldrh w9,[x8, #0x12e]
02c95640  cbz x9,0x02c95664
02c95644  ldr x10,[x8, #0xb0]
02c95648  add x10,x10,#0x8
02c9564c  ldur x11,[x10, #-0x8]
02c95650  cmp x11,x1
02c95654  b.eq 0x02c95674
02c95658  subs x9,x9,#0x1
02c9565c  add x10,x10,#0x10
02c95660  b.ne 0x02c9564c
02c95664  mov x0,x21
02c95668  mov w2,#0x1
02c9566c  bl 0x02a2ed2c
02c95670  b 0x02c95684
02c95674  ldr w9,[x10]
02c95678  add w9,w9,#0x1
02c9567c  add x8,x8,w9, SXTW  #0x4
02c95680  add x0,x8,#0x138
02c95684  ldp x8,x1,[x0]
02c95688  mov x0,x21
02c9568c  blr x8
02c95690  cbz x0,0x02c957a0
02c95694  ldr x1,[x24]
02c95698  ldr x8,[x0]
02c9569c  ldr x8,[x8, #0x40]
02c956a0  ldr x9,[x1, #0x40]
02c956a4  cmp x8,x9
02c956a8  b.ne 0x02c957a4
02c956ac  bl 0x029f5bdc
02c956b0  ldr w21,[x0]
02c956b4  mov w1,w21
02c956b8  bl 0x02c953ac
02c956bc  mov x1,x20
02c956c0  mov x2,xzr
02c956c4  bl 0x046b2ddc
02c956c8  tbz w0,#0x0,0x02c955c8
02c956cc  mov x20,xzr
02c956d0  str w21,[x19]
02c956d4  mov w21,#0x1
02c956d8  mov w24,#0x4
02c956dc  b 0x02c956ec
02c956e0  mov x20,xzr
02c956e4  mov w21,wzr
02c956e8  mov w24,#0x5
02c956ec  add x8,sp,#0x28
02c956f0  add x25,sp,#0x20
02c956f4  ldr x0,[x8]
02c956f8  ldr x1,[x23]
02c956fc  bl 0x029f5bd4
02c95700  str x0,[x25]
02c95704  cbz x0,0x02c95764
02c95708  ldr x8,[x0]
02c9570c  ldr x1,[x23]
02c95710  mov x22,x0
02c95714  ldrh w9,[x8, #0x12e]
02c95718  cbz x9,0x02c9573c
02c9571c  ldr x10,[x8, #0xb0]
02c95720  add x10,x10,#0x8
02c95724  ldur x11,[x10, #-0x8]
02c95728  cmp x11,x1
02c9572c  b.eq 0x02c9574c
02c95730  subs x9,x9,#0x1
02c95734  add x10,x10,#0x10
02c95738  b.ne 0x02c95724
02c9573c  mov x0,x22
02c95740  mov w2,wzr
02c95744  bl 0x02a2ed2c
02c95748  b 0x02c95758
02c9574c  ldrsw x9,[x10]
02c95750  add x8,x8,x9, LSL #0x4
02c95754  add x0,x8,#0x138
02c95758  ldp x8,x1,[x0]
02c9575c  mov x0,x22
02c95760  blr x8
02c95764  cbnz x20,0x02c957ac
02c95768  cmp w24,#0x5
02c9576c  b.eq 0x02c95774
02c95770  cbnz w24,0x02c9577c
02c95774  mov w21,wzr
02c95778  str wzr,[x19]
02c9577c  mov w0,w21
02c95780  ldp x20,x19,[sp, #0x60]
02c95784  ldp x22,x21,[sp, #0x50]
02c95788  ldp x24,x23,[sp, #0x40]
02c9578c  ldp x30,x25,[sp, #0x30]
02c95790  add sp,sp,#0x70
02c95794  ret
02c95798  bl 0x029f5cfc
02c9579c  bl 0x029f5cfc
02c957a0  bl 0x029f5cfc
02c957a4  bl 0x029f607c
02c957a8  bl 0x029f5cfc
02c957ac  mov x0,x20
02c957b0  bl 0x029f5cf4
02c957b4  b 0x02c957cc
02c957cc  mov x20,x0
02c957d0  cmp w1,#0x1
02c957d4  b.ne 0x02c95800
02c957d8  mov x0,x20
02c957dc  bl 0x05afb1e0
02c957e0  ldr x20,[x0]
02c957e4  str x20,[sp, #0x8]
02c957e8  bl 0x05afb1f0
02c957ec  ldp x8,x25,[sp, #0x10]
02c957f0  mov w24,wzr
02c957f4  mov w21,wzr
02c957f8  b 0x02c956f4
02c95800  add x0,sp,#0x8
02c95804  bl 0x0262eed4
02c95808  mov x0,x20
02c9580c  bl 0x02ae4a1c
02c95810  bl 0x02629f70
