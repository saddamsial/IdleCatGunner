02c08714  sub sp,sp,#0x150
02c08718  stp x29,x30,[sp, #0x120]
02c0871c  stp x22,x21,[sp, #0x130]
02c08720  stp x20,x19,[sp, #0x140]
02c08724  adrp x22,0x625b000
02c08728  adrp x21,0x5e5d000
02c0872c  mov w20,w0
02c08730  ldrb w9,[x22, #0xe8b]
02c08734  ldr x21,[x21, #0xc20]
02c08738  mov x19,x8
02c0873c  tbnz w9,#0x0,0x02c0876c
02c08740  adrp x0,0x5e62000
02c08744  ldr x0,[x0, #0xb8]
02c08748  bl 0x029f5a50
02c0874c  adrp x0,0x5e59000
02c08750  ldr x0,[x0, #0x1c0]
02c08754  bl 0x029f5a50
02c08758  adrp x0,0x5e5d000
02c0875c  ldr x0,[x0, #0xc20]
02c08760  bl 0x029f5a50
02c08764  mov w8,#0x1
02c08768  strb w8,[x22, #0xe8b]
02c0876c  movi v0.2D,#0x0
02c08770  ldr x0,[x21]
02c08774  adrp x22,0x5e59000
02c08778  ldr w8,[x0, #0xe4]
02c0877c  stp q0,q0,[sp, #0xc0]
02c08780  stp q0,q0,[sp, #0xe0]
02c08784  stp q0,q0,[sp, #0x100]
02c08788  ldr x22,[x22, #0x1c0]
02c0878c  stp q0,q0,[sp, #0xa0]
02c08790  cbnz w8,0x02c0879c
02c08794  bl 0x029f5bd0
02c08798  ldr x0,[x21]
02c0879c  ldr x8,[x22]
02c087a0  ldr x9,[x0, #0xb8]
02c087a4  bic w20,w20,w20, ASR #0x1f
02c087a8  ldr w10,[x8, #0xe4]
02c087ac  ldr x21,[x9, #0x10]
02c087b0  cbnz w10,0x02c087bc
02c087b4  mov x0,x8
02c087b8  bl 0x029f5bd0
02c087bc  mov x0,x21
02c087c0  mov x1,xzr
02c087c4  mov x2,xzr
02c087c8  bl 0x057dfa70
02c087cc  tbz w0,#0x0,0x02c087f8
02c087d0  cbz x21,0x02c088ac
02c087d4  ldr x8,[x21, #0x70]
02c087d8  cbz x8,0x02c087f8
02c087dc  add x8,sp,#0x80
02c087e0  mov x0,x21
02c087e4  mov w1,w20
02c087e8  mov x2,xzr
02c087ec  bl 0x02ca96cc
02c087f0  ldp q0,q1,[sp, #0x80]
02c087f4  b 0x02c08894
02c087f8  adrp x21,0x5e62000
02c087fc  add x8,sp,#0x80
02c08800  mov w0,#0x32
02c08804  ldr x21,[x21, #0xb8]
02c08808  mov x1,xzr
02c0880c  bl 0x046544b8
02c08810  ldp q0,q1,[sp, #0x80]
02c08814  add x8,sp,#0x60
02c08818  mov x0,xzr
02c0881c  stp q0,q1,[sp, #0x100]
02c08820  fmov d0,0x4008000000000000
02c08824  bl 0x04656c9c
02c08828  ldr x0,[x21]
02c0882c  ldp q0,q1,[sp, #0x60]
02c08830  ldr w8,[x0, #0xe4]
02c08834  stp q0,q1,[sp, #0xe0]
02c08838  cbnz w8,0x02c08840
02c0883c  bl 0x029f5bd0
02c08840  add x8,sp,#0x40
02c08844  add x0,sp,#0xe0
02c08848  mov w1,w20
02c0884c  mov w2,#0x1
02c08850  mov x3,xzr
02c08854  bl 0x0465ef6c
02c08858  ldp q0,q1,[sp, #0x40]
02c0885c  add x8,sp,#0x20
02c08860  add x0,sp,#0x100
02c08864  add x1,sp,#0xc0
02c08868  mov x2,xzr
02c0886c  stp q0,q1,[sp, #0xc0]
02c08870  bl 0x04658538
02c08874  ldp q0,q1,[sp, #0x20]
02c08878  mov x8,sp
02c0887c  add x0,sp,#0xa0
02c08880  mov w1,#0x2
02c08884  mov x2,xzr
02c08888  stp q0,q1,[sp, #0xa0]
02c0888c  bl 0x04658464
02c08890  ldp q0,q1,[sp]
02c08894  stp q0,q1,[x19]
02c08898  ldp x20,x19,[sp, #0x140]
02c0889c  ldp x22,x21,[sp, #0x130]
02c088a0  ldp x29,x30,[sp, #0x120]
02c088a4  add sp,sp,#0x150
02c088a8  ret
02c088ac  bl 0x029f5cfc
