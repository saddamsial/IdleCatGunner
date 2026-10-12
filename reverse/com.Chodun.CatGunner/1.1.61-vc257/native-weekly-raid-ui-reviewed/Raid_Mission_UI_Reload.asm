02c556a8  stp x30,x23,[sp, #-0x30]!
02c556ac  stp x22,x21,[sp, #0x10]
02c556b0  stp x20,x19,[sp, #0x20]
02c556b4  adrp x20,0x625c000
02c556b8  adrp x21,0x5e5e000
02c556bc  adrp x22,0x5e59000
02c556c0  ldrb w8,[x20, #0x18d]
02c556c4  ldr x21,[x21, #0x68]
02c556c8  ldr x22,[x22, #0x1c0]
02c556cc  mov x19,x0
02c556d0  tbnz w8,#0x0,0x02c556f4
02c556d4  adrp x0,0x5e59000
02c556d8  ldr x0,[x0, #0x1c0]
02c556dc  bl 0x029f5a50
02c556e0  adrp x0,0x5e5e000
02c556e4  ldr x0,[x0, #0x68]
02c556e8  bl 0x029f5a50
02c556ec  mov w8,#0x1
02c556f0  strb w8,[x20, #0x18d]
02c556f4  ldr x8,[x21]
02c556f8  ldr x0,[x22]
02c556fc  ldr x8,[x8, #0xb8]
02c55700  ldr w9,[x0, #0xe4]
02c55704  ldr x20,[x8]
02c55708  cbnz w9,0x02c55710
02c5570c  bl 0x029f5bd0
02c55710  mov x0,x20
02c55714  mov x1,xzr
02c55718  mov x2,xzr
02c5571c  bl 0x057e14b4
02c55720  tbz w0,#0x0,0x02c55734
02c55724  ldp x20,x19,[sp, #0x20]
02c55728  ldp x22,x21,[sp, #0x10]
02c5572c  ldp x30,x23,[sp], #0x30
02c55730  ret
02c55734  cbz x20,0x02c557c0
02c55738  mov x0,x20
02c5573c  bl 0x02c53c8c
02c55740  ldr x8,[x19, #0x20]
02c55744  cbz x8,0x02c557d0
02c55748  mov x23,xzr
02c5574c  ldr w9,[x8, #0x18]
02c55750  cmp x23,w9, SXTW 
02c55754  b.ge 0x02c557c4
02c55758  cmp x23,x9
02c5575c  b.cs 0x02c557e4
02c55760  ldr x0,[x22]
02c55764  add x8,x8,x23, LSL #0x3
02c55768  ldr w9,[x0, #0xe4]
02c5576c  ldr x21,[x8, #0x20]
02c55770  cbnz w9,0x02c55778
02c55774  bl 0x029f5bd0
02c55778  mov x0,x21
02c5577c  mov x1,xzr
02c55780  mov x2,xzr
02c55784  bl 0x057e14b4
02c55788  tbnz w0,#0x0,0x02c557b4
02c5578c  ldr x8,[x19, #0x20]
02c55790  cbz x8,0x02c557c0
02c55794  ldr w9,[x8, #0x18]
02c55798  cmp x23,x9
02c5579c  b.cs 0x02c557e4
02c557a0  add x8,x8,x23, LSL #0x3
02c557a4  ldr x0,[x8, #0x20]
02c557a8  cbz x0,0x02c557c0
02c557ac  str w23,[x0, #0x60]
02c557b0  bl 0x02c52a00
02c557b4  ldr x8,[x19, #0x20]
02c557b8  add x23,x23,#0x1
02c557bc  cbnz x8,0x02c5574c
02c557c0  bl 0x029f5cfc
02c557c4  mov x0,x19
02c557c8  mov x1,x20
02c557cc  bl 0x02c55b48
02c557d0  mov x0,x19
02c557d4  ldp x20,x19,[sp, #0x20]
02c557d8  ldp x22,x21,[sp, #0x10]
02c557dc  ldp x30,x23,[sp], #0x30
02c557e0  b 0x02c558b0
02c557e4  bl 0x029f5d04
