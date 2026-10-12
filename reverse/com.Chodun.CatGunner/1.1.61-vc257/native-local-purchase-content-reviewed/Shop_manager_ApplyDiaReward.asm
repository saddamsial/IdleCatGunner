02c98490  str x30,[sp, #-0x40]!
02c98494  stp x24,x23,[sp, #0x10]
02c98498  stp x22,x21,[sp, #0x20]
02c9849c  stp x20,x19,[sp, #0x30]
02c984a0  adrp x21,0x625c000
02c984a4  adrp x22,0x5e64000
02c984a8  mov x20,x1
02c984ac  ldrb w8,[x21, #0x44b]
02c984b0  ldr x22,[x22, #0x1e8]
02c984b4  mov x19,x0
02c984b8  tbnz w8,#0x0,0x02c98518
02c984bc  adrp x0,0x5e5d000
02c984c0  ldr x0,[x0, #0x338]
02c984c4  bl 0x029f5a50
02c984c8  adrp x0,0x5e5d000
02c984cc  ldr x0,[x0, #0x920]
02c984d0  bl 0x029f5a50
02c984d4  adrp x0,0x5e64000
02c984d8  ldr x0,[x0, #0x1d0]
02c984dc  bl 0x029f5a50
02c984e0  adrp x0,0x5e64000
02c984e4  ldr x0,[x0, #0x1e8]
02c984e8  bl 0x029f5a50
02c984ec  adrp x0,0x5e64000
02c984f0  ldr x0,[x0, #0x1f0]
02c984f4  bl 0x029f5a50
02c984f8  adrp x0,0x5e64000
02c984fc  ldr x0,[x0, #0x1f8]
02c98500  bl 0x029f5a50
02c98504  adrp x0,0x5e64000
02c98508  ldr x0,[x0, #0x230]
02c9850c  bl 0x029f5a50
02c98510  mov w8,#0x1
02c98514  strb w8,[x21, #0x44b]
02c98518  ldr x1,[x22]
02c9851c  mov x0,x20
02c98520  mov x2,xzr
02c98524  bl 0x046b2ddc
02c98528  tbz w0,#0x0,0x02c98534
02c9852c  mov w20,wzr
02c98530  b 0x02c985c0
02c98534  adrp x8,0x5e64000
02c98538  mov x0,x20
02c9853c  mov x2,xzr
02c98540  ldr x8,[x8, #0x1f8]
02c98544  ldr x1,[x8]
02c98548  bl 0x046b2ddc
02c9854c  tbz w0,#0x0,0x02c98558
02c98550  mov w20,#0x1
02c98554  b 0x02c985c0
02c98558  adrp x8,0x5e64000
02c9855c  mov x0,x20
02c98560  mov x2,xzr
02c98564  ldr x8,[x8, #0x1d0]
02c98568  ldr x1,[x8]
02c9856c  bl 0x046b2ddc
02c98570  tbz w0,#0x0,0x02c9857c
02c98574  mov w20,#0x2
02c98578  b 0x02c985c0
02c9857c  adrp x8,0x5e64000
02c98580  mov x0,x20
02c98584  mov x2,xzr
02c98588  ldr x8,[x8, #0x230]
02c9858c  ldr x1,[x8]
02c98590  bl 0x046b2ddc
02c98594  tbz w0,#0x0,0x02c985a0
02c98598  mov w20,#0x3
02c9859c  b 0x02c985c0
02c985a0  adrp x8,0x5e64000
02c985a4  mov x0,x20
02c985a8  mov x2,xzr
02c985ac  ldr x8,[x8, #0x1f0]
02c985b0  ldr x1,[x8]
02c985b4  bl 0x046b2ddc
02c985b8  tbz w0,#0x0,0x02c98718
02c985bc  mov w20,#0x4
02c985c0  adrp x22,0x5e5d000
02c985c4  ldr x22,[x22, #0x920]
02c985c8  ldr x0,[x22]
02c985cc  ldr w8,[x0, #0xe4]
02c985d0  cbnz w8,0x02c985d8
02c985d4  bl 0x029f5bd0
02c985d8  mov w0,w20
02c985dc  bl 0x02c9264c
02c985e0  ldr x8,[x22]
02c985e4  ldr x8,[x8, #0xb8]
02c985e8  ldr x8,[x8, #0x30]
02c985ec  cbz x8,0x02c98724
02c985f0  ldr w9,[x8, #0x18]
02c985f4  cmp w20,w9
02c985f8  b.cs 0x02c98720
02c985fc  adrp x9,0x5e5d000
02c98600  mov w23,w20
02c98604  and w24,w0,#0x1
02c98608  ldr x9,[x9, #0x338]
02c9860c  add x10,x8,x23, LSL #0x2
02c98610  strb w24,[x19, #0x3c]
02c98614  ldr x8,[x9]
02c98618  ldr w9,[x10, #0x20]
02c9861c  ldr w10,[x8, #0xe4]
02c98620  lsl w21,w9,w24
02c98624  cbnz w10,0x02c98630
02c98628  mov x0,x8
02c9862c  bl 0x029f5bd0
02c98630  mov w0,w21
02c98634  mov x1,xzr
02c98638  bl 0x02b7ed10
02c9863c  cbz w24,0x02c98678
02c98640  ldr x0,[x22]
02c98644  ldr w8,[x0, #0xe4]
02c98648  cbnz w8,0x02c98654
02c9864c  bl 0x029f5bd0
02c98650  ldr x0,[x22]
02c98654  ldr x8,[x0, #0xb8]
02c98658  ldr x8,[x8, #0x28]
02c9865c  cbz x8,0x02c98724
02c98660  ldr w9,[x8, #0x18]
02c98664  cmp w20,w9
02c98668  b.cs 0x02c98720
02c9866c  add x8,x8,x23
02c98670  mov w9,#0x1
02c98674  strb w9,[x8, #0x20]
02c98678  ldr x8,[x19, #0xb0]
02c9867c  cbz x8,0x02c9869c
02c98680  ldr w9,[x8, #0x18]
02c98684  cmp w20,w9
02c98688  b.ge 0x02c9869c
02c9868c  b.cs 0x02c98720
02c98690  add x8,x8,x23, LSL #0x3
02c98694  ldr x1,[x8, #0x20]
02c98698  bl 0x02c947a8
02c9869c  mov x0,xzr
02c986a0  bl 0x02c0faf8
02c986a4  mov x0,xzr
02c986a8  bl 0x02bdfdb8
02c986ac  adrp x8,0x5e58000
02c986b0  mov x20,x0
02c986b4  add x1,sp,#0xc
02c986b8  ldr x8,[x8, #0xa10]
02c986bc  str w21,[sp, #0xc]
02c986c0  ldr x0,[x8, #0x48]
02c986c4  bl 0x029f5bd8
02c986c8  mov x1,x0
02c986cc  mov x0,x20
02c986d0  mov x2,xzr
02c986d4  bl 0x046b6c0c
02c986d8  ldr x8,[x22]
02c986dc  mov x20,x0
02c986e0  ldr w9,[x8, #0xe4]
02c986e4  cbnz w9,0x02c986f0
02c986e8  mov x0,x8
02c986ec  bl 0x029f5bd0
02c986f0  mov x0,x20
02c986f4  bl 0x02c92ec4
02c986f8  mov x0,x19
02c986fc  bl 0x02c946ac
02c98700  mov w0,#0x1
02c98704  ldp x20,x19,[sp, #0x30]
02c98708  ldp x22,x21,[sp, #0x20]
02c9870c  ldp x24,x23,[sp, #0x10]
02c98710  ldr x30,[sp], #0x40
02c98714  ret
02c98718  mov w0,wzr
02c9871c  b 0x02c98704
02c98720  bl 0x029f5d04
02c98724  bl 0x029f5cfc
