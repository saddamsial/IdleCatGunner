02c66714  sub sp,sp,#0x80
02c66718  str d10,[sp, #0x40]
02c6671c  stp d9,d8,[sp, #0x48]
02c66720  str x30,[sp, #0x58]
02c66724  stp x22,x21,[sp, #0x60]
02c66728  stp x20,x19,[sp, #0x70]
02c6672c  fmov s8,s2
02c66730  fmov s9,s1
02c66734  adrp x22,0x625c000
02c66738  fmov s10,s0
02c6673c  adrp x21,0x5e5d000
02c66740  ldrb w8,[x22, #0x24e]
02c66744  ldr x21,[x21, #0x338]
02c66748  mov x20,x1
02c6674c  mov x19,x0
02c66750  tbnz w8,#0x0,0x02c66768
02c66754  adrp x0,0x5e5d000
02c66758  ldr x0,[x0, #0x338]
02c6675c  bl 0x029f5a50
02c66760  mov w8,#0x1
02c66764  strb w8,[x22, #0x24e]
02c66768  ldr x0,[x21]
02c6676c  ldur q0,[x19, #0x28]
02c66770  ldur q1,[x19, #0x38]
02c66774  ldr x21,[x19, #0x48]
02c66778  ldrb w22,[x19, #0x24]
02c6677c  ldr w8,[x0, #0xe4]
02c66780  stp q0,q1,[sp, #0x20]
02c66784  cbnz w8,0x02c6678c
02c66788  bl 0x029f5bd0
02c6678c  ldp q0,q1,[sp, #0x20]
02c66790  fmov s2,s8
02c66794  cmp w22,#0x0
02c66798  mov x1,sp
02c6679c  mov x0,x20
02c667a0  cset w3,ne
02c667a4  mov x2,x21
02c667a8  mov x4,xzr
02c667ac  stp q0,q1,[sp]
02c667b0  fmov s0,s10
02c667b4  fmov s1,s9
02c667b8  bl 0x02b7fba8
02c667bc  fmov s0,s10
02c667c0  fmov s1,s9
02c667c4  mov x0,x19
02c667c8  fmov s2,s8
02c667cc  bl 0x02c66180
02c667d0  mov x0,x19
02c667d4  bl 0x02c66330
02c667d8  ldp x20,x19,[sp, #0x70]
02c667dc  ldr x30,[sp, #0x58]
02c667e0  ldp x22,x21,[sp, #0x60]
02c667e4  ldr d10,[sp, #0x40]
02c667e8  ldp d9,d8,[sp, #0x48]
02c667ec  add sp,sp,#0x80
02c667f0  ret
